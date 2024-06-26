using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml.Linq;
using Newtonsoft.Json;
using Razorpay.Api;

public partial class D_order_pg : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //payment api key 
    private const string _key = "rzp_test_9YSpJ6jMNbaQ2r";
    private const string _secret = "BOoOZfehQwp0faA6zmkGiSAo";
    private const decimal totalamount = 95;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Initialize total price on page load
            Label1.Text = "";
            Label2.Text = totalamount.ToString();
        }
    
    }
    protected void UpdateTotalPrice(object sender, EventArgs e)
    {
        int quantityValue;
        if (int.TryParse(TextBox1.Text, out quantityValue))
        {
            int valueFromCodeBehind = 95; // Example value, you should replace this with your actual value
            int totalPriceValue = quantityValue * valueFromCodeBehind;
            Label1.Text = "₹" + totalPriceValue.ToString(); // Include ₹ symbol
            Label2.Text = "₹" + totalPriceValue.ToString(); // Include ₹ symbol
        }
        else
        {
            // Handle invalid input
            Label1.Text = "Invalid Quantity";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string Pro_name = "Diesel";
        string Quantity = TextBox1.Text;
        string Date = TextBox2.Text;
        string Time = TextBox3.Text;
        string Address = TextBox4.Text;
        string Postcode = TextBox6.Text;
        string Phone = TextBox7.Text;

        using (SqlConnection con = new SqlConnection(connection))
        {
            try
            {
                con.Open();
                string query = "INSERT INTO Orders (Pro_name,qty,date,time,address,postcode,phone) VALUES (@Pro_name,@qty,@date,@time,@address,@postcode,@phone)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Pro_name", Pro_name);
                cmd.Parameters.AddWithValue("@qty", Quantity);
                cmd.Parameters.AddWithValue("@date", Date);
                cmd.Parameters.AddWithValue("@time", Time);
                cmd.Parameters.AddWithValue("@address", Address);
                cmd.Parameters.AddWithValue("@postcode", Postcode);
                cmd.Parameters.AddWithValue("@phone", Phone);


                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Data inserted successfully
                    Session["SuccessMessage"] = "Registration successful";

                }
                else
                {
                    Response.Write("an error occured while placing order");
                }
            }
            catch (Exception ex)
            {
                // Handle exception
                Response.Write("An error occurred: " + ex.Message);
            }
        }
        //payment code
        decimal decimalValue = decimal.Parse(Quantity);
        decimal amountinSubunits = (totalamount * decimalValue) * 100;
        Quantity.ToString();
        string currency = "INR";
        string name = "Fuel Flow";
        string description = "Fuel Flow Payment";
        string imageLogo = "";
        string username = Session["username"].ToString();
        string profileName = username;
        string profileMobile = TextBox7.Text;
        Dictionary<string, string> notes = new Dictionary<string, string>()
                {
                    { "note 1", "this is a payment note" }, { "note 2", "here another note, you can add max 15 notes" }
                };
        string orderId = CreateOrder(amountinSubunits, currency, notes);

        string jsFunction = "OpenPaymentWindow('" + _key + "', '" + amountinSubunits + "', '" + currency + "', '" + name + "', '" + description + "', '" + imageLogo + "', '" + orderId + "', '" + profileName + "', '" + "', '" + profileMobile + "', '" + Newtonsoft.Json.JsonConvert.SerializeObject(notes) + "');";

        ClientScript.RegisterStartupScript(this.GetType(), "OpenPaymentWindow", jsFunction, true);
    }
    private string CreateOrder(decimal amountInSubunits, string currency, Dictionary<string, string> notes)
    {
        try
        {
            int paymentCapture = 1;

            RazorpayClient client = new RazorpayClient(_key, _secret);
            Dictionary<string, object> options = new Dictionary<string, object>();
            options.Add("amount", amountInSubunits);
            options.Add("currency", currency);
            options.Add("payment_capture", paymentCapture);
            options.Add("notes", notes);

            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
            System.Net.ServicePointManager.Expect100Continue = false;

            Razorpay.Api.Order orderResponse = client.Order.Create(options);
            var orderId = orderResponse.Attributes["id"].ToString();
            return orderId;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
}
