using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using Newtonsoft.Json;
using System.Xml.Linq;
using Razorpay.Api;


public partial class homepage : System.Web.UI.Page
{
    private const string _key = "rzp_test_3gqIf5Nul8c74h";
    private const string _secret = "Ydz8NQtzVyhNWI2F1VNX9UNW";
    private const decimal PassesAmount = 100;

    string connectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; // Initialize connectionString in Page_Load

        if (!IsPostBack)
        {
            // Check if the user is logged in
            if (Session["Username"] != null)
            {
                string username = Session["Username"].ToString();
                FetchDataFromDatabase(username);
                lblsts2.Text = PassesAmount.ToString();
            }
        }
    }
    protected void btnPaynow(object sender, EventArgs e)
    {
        decimal amountinSubunits = PassesAmount * 100;
        string currency = "INR";
        string name = "Sumit";
        string description = "Razorpay Payment Gateway Demo";
        string imageLogo = "";
        //string profileName = txtName.Text;
        //string profileMobile = txtMobile.Text;
       // string profileEmail = txtEmail.Text;
        Dictionary<string, string> notes = new Dictionary<string, string>()
            {
                { "note 1", "this is a payment note" }, { "note 2", "here another note, you can add max 15 notes" }
            };

       string orderId = CreateOrder(amountinSubunits, currency, notes);

        string jsFunction = "OpenPaymentWindow('" + _key + "', '" + amountinSubunits + "', '" + currency + "', '" + name + "', '" + description + "', '" + imageLogo + "', '" + orderId + "', " + JsonConvert.SerializeObject(notes) + "');";
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

            Order orderResponse = client.Order.Create(options);
            var orderId = orderResponse.Attributes["id"].ToString();
            return orderId;
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    private void FetchDataFromDatabase(string username)
    {
        string query = "SELECT Name, Game, ID_Number, EventCollege, College_name, EventDate, paymentstatus FROM participantdetails WHERE Name = @Username ORDER BY Id DESC";

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", username);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (dt.Rows.Count == 1)
                {
                    lblNamed.Text = dt.Rows[0]["Name"].ToString();
                    lblGamed.Text = dt.Rows[0]["Game"].ToString();
                    lblIDNumber.Text = dt.Rows[0]["ID_Number"].ToString();
                    Label52.Text = dt.Rows[0]["College_name"].ToString();
                    Labelcollegename.Text = dt.Rows[0]["EventCollege"].ToString();
                    lblGameDate.Text = Convert.ToDateTime(dt.Rows[0]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts.Text = dt.Rows[0]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    lblName.Visible = true;
                    lblGame.Visible = true;
                    lblID.Visible = true;
                    lblcollname.Visible = true;
                    lblgameda.Visible = true;
                    Label51.Visible = true;
                    lblpay.Visible = true;
                    Button1.Visible = true;
                }
                else if (dt.Rows.Count == 2)
                {
                    lblNamed.Text = dt.Rows[0]["Name"].ToString();
                    lblGamed.Text = dt.Rows[0]["Game"].ToString();
                    lblIDNumber.Text = dt.Rows[0]["ID_Number"].ToString();
                    Label52.Text = dt.Rows[0]["College_name"].ToString();
                    Labelcollegename.Text = dt.Rows[0]["EventCollege"].ToString();
                    lblGameDate.Text = Convert.ToDateTime(dt.Rows[0]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts.Text = dt.Rows[0]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    lblName.Visible = true;
                    lblGame.Visible = true;
                    lblID.Visible = true;
                    lblcollname.Visible = true;
                    lblgameda.Visible = true;
                    Label51.Visible = true;
                    lblpay.Visible = true;
                    Button1.Visible = true;
                    ////=================================

                    Label2.Text = dt.Rows[1]["Name"].ToString();
                    Label4.Text = dt.Rows[1]["Game"].ToString();
                    Label6.Text = dt.Rows[1]["ID_Number"].ToString();
                    Label54.Text = dt.Rows[1]["College_name"].ToString();
                    Label8.Text = dt.Rows[1]["EventCollege"].ToString();
                    Label10.Text = Convert.ToDateTime(dt.Rows[1]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts2.Text = dt.Rows[1]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label1.Visible = true;
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label7.Visible = true;
                    Label9.Visible = true;
                    Label53.Visible = true;
                    lblpay2.Visible = true;
                    Button2.Visible = true;
                }
                else if (dt.Rows.Count == 3)
                {
                    lblNamed.Text = dt.Rows[0]["Name"].ToString();
                    lblGamed.Text = dt.Rows[0]["Game"].ToString();
                    lblIDNumber.Text = dt.Rows[0]["ID_Number"].ToString();
                    Label52.Text = dt.Rows[0]["College_name"].ToString();
                    Labelcollegename.Text = dt.Rows[0]["EventCollege"].ToString();
                    lblGameDate.Text = Convert.ToDateTime(dt.Rows[0]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts.Text = dt.Rows[0]["paymentstatus"].ToString();
                    
                    //  Set visibility to true for the labels
                    lblName.Visible = true;
                    lblGame.Visible = true;
                    lblID.Visible = true;
                    lblcollname.Visible = true;
                    lblgameda.Visible = true;
                    Label51.Visible = true;
                    lblpay.Visible = true;
                    Button1.Visible = true;
                    ////=================================

                    Label2.Text = dt.Rows[1]["Name"].ToString();
                    Label4.Text = dt.Rows[1]["Game"].ToString();
                    Label6.Text = dt.Rows[1]["ID_Number"].ToString();
                    Label54.Text = dt.Rows[1]["College_name"].ToString();
                    Label8.Text = dt.Rows[1]["EventCollege"].ToString();
                    Label10.Text = Convert.ToDateTime(dt.Rows[1]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts2.Text = dt.Rows[1]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label1.Visible = true;
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label7.Visible = true;
                    Label9.Visible = true;
                    Label53.Visible = true;
                    lblpay2.Visible = true;
                    Button2.Visible = true;
                    /////////===================================

                    Label12.Text = dt.Rows[2]["Name"].ToString();
                    Label14.Text = dt.Rows[2]["Game"].ToString();
                    Label16.Text = dt.Rows[2]["ID_Number"].ToString();
                    Label56.Text = dt.Rows[2]["College_name"].ToString();
                    Label18.Text = dt.Rows[2]["EventCollege"].ToString();
                    Label20.Text = Convert.ToDateTime(dt.Rows[2]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts3.Text = dt.Rows[2]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label11.Visible = true;
                    Label13.Visible = true;
                    Label15.Visible = true;
                    Label17.Visible = true;
                    Label19.Visible = true;
                    Label55.Visible = true;
                    lblpay3.Visible = true;
                    Button3.Visible = true;
                }
                else if (dt.Rows.Count == 4)
                {
                    lblNamed.Text = dt.Rows[0]["Name"].ToString();
                    lblGamed.Text = dt.Rows[0]["Game"].ToString();
                    lblIDNumber.Text = dt.Rows[0]["ID_Number"].ToString();
                    Label52.Text = dt.Rows[0]["College_name"].ToString();
                    Labelcollegename.Text = dt.Rows[0]["EventCollege"].ToString();
                    lblGameDate.Text = Convert.ToDateTime(dt.Rows[0]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts.Text = dt.Rows[0]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    lblName.Visible = true;
                    lblGame.Visible = true;
                    lblID.Visible = true;
                    lblcollname.Visible = true;
                    lblgameda.Visible = true;
                    Label51.Visible = true;
                    lblpay.Visible = true;
                    Button1.Visible = true;
                    ////=================================

                    Label2.Text = dt.Rows[1]["Name"].ToString();
                    Label4.Text = dt.Rows[1]["Game"].ToString();
                    Label6.Text = dt.Rows[1]["ID_Number"].ToString();
                    Label54.Text = dt.Rows[1]["College_name"].ToString();
                    Label8.Text = dt.Rows[1]["EventCollege"].ToString();
                    Label10.Text = Convert.ToDateTime(dt.Rows[1]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts2.Text = dt.Rows[1]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label1.Visible = true;
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label7.Visible = true;
                    Label9.Visible = true;
                    Label53.Visible = true;
                    lblpay2.Visible = true;
                    Button2.Visible = true;
                    /////////===================================

                    Label12.Text = dt.Rows[2]["Name"].ToString();
                    Label14.Text = dt.Rows[2]["Game"].ToString();
                    Label16.Text = dt.Rows[2]["ID_Number"].ToString();
                    Label56.Text = dt.Rows[2]["College_name"].ToString();
                    Label18.Text = dt.Rows[2]["EventCollege"].ToString();
                    Label20.Text = Convert.ToDateTime(dt.Rows[2]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts3.Text = dt.Rows[2]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label11.Visible = true;
                    Label13.Visible = true;
                    Label15.Visible = true;
                    Label17.Visible = true;
                    Label19.Visible = true;
                    Label55.Visible = true;
                    lblpay3.Visible = true;
                    Button3.Visible = true;
                    ////========================================

                    Label22.Text = dt.Rows[3]["Name"].ToString();
                    Label24.Text = dt.Rows[3]["Game"].ToString();
                    Label26.Text = dt.Rows[3]["ID_Number"].ToString();
                    Label58.Text = dt.Rows[3]["College_name"].ToString();
                    Label28.Text = dt.Rows[3]["EventCollege"].ToString();
                    Label30.Text = Convert.ToDateTime(dt.Rows[3]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts4.Text = dt.Rows[3]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label21.Visible = true;
                    Label23.Visible = true;
                    Label25.Visible = true;
                    Label27.Visible = true;
                    Label29.Visible = true;
                    Label57.Visible = true;
                    lblpay4.Visible = true;
                    Button4.Visible = true;
                }
                else if (dt.Rows.Count == 5)
                {
                    lblNamed.Text = dt.Rows[0]["Name"].ToString();
                    lblGamed.Text = dt.Rows[0]["Game"].ToString();
                    lblIDNumber.Text = dt.Rows[0]["ID_Number"].ToString();
                    Label52.Text = dt.Rows[0]["College_name"].ToString();
                    Labelcollegename.Text = dt.Rows[0]["EventCollege"].ToString();
                    lblGameDate.Text = Convert.ToDateTime(dt.Rows[0]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts.Text = dt.Rows[0]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    lblName.Visible = true;
                    lblGame.Visible = true;
                    lblID.Visible = true;
                    lblcollname.Visible = true;
                    lblgameda.Visible = true;
                    Label51.Visible = true;
                    lblpay.Visible = true;
                    Button1.Visible = true;
                    ////=================================

                    Label2.Text = dt.Rows[1]["Name"].ToString();
                    Label4.Text = dt.Rows[1]["Game"].ToString();
                    Label6.Text = dt.Rows[1]["ID_Number"].ToString();
                    Label54.Text = dt.Rows[1]["College_name"].ToString();
                    Label8.Text = dt.Rows[1]["EventCollege"].ToString();
                    Label10.Text = Convert.ToDateTime(dt.Rows[1]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts2.Text = dt.Rows[1]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label1.Visible = true;
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label7.Visible = true;
                    Label9.Visible = true;
                    Label53.Visible = true;
                    lblpay2.Visible = true;
                    Button2.Visible = true;
                    /////////===================================

                    Label12.Text = dt.Rows[2]["Name"].ToString();
                    Label14.Text = dt.Rows[2]["Game"].ToString();
                    Label16.Text = dt.Rows[2]["ID_Number"].ToString();
                    Label56.Text = dt.Rows[2]["College_name"].ToString();
                    Label18.Text = dt.Rows[2]["EventCollege"].ToString();
                    Label20.Text = Convert.ToDateTime(dt.Rows[2]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts3.Text = dt.Rows[2]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label11.Visible = true;
                    Label13.Visible = true;
                    Label15.Visible = true;
                    Label17.Visible = true;
                    Label19.Visible = true;
                    Label55.Visible = true;
                    lblpay3.Visible = true;
                    Button3.Visible = true;
                    ////========================================

                    Label22.Text = dt.Rows[3]["Name"].ToString();
                    Label24.Text = dt.Rows[3]["Game"].ToString();
                    Label26.Text = dt.Rows[3]["ID_Number"].ToString();
                    Label58.Text = dt.Rows[3]["College_name"].ToString();
                    Label28.Text = dt.Rows[3]["EventCollege"].ToString();
                    Label30.Text = Convert.ToDateTime(dt.Rows[3]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts4.Text = dt.Rows[3]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label21.Visible = true;
                    Label23.Visible = true;
                    Label25.Visible = true;
                    Label27.Visible = true;
                    Label29.Visible = true;
                    Label57.Visible = true;
                    lblpay4.Visible = true;
                    Button4.Visible = true;
                    /////========================

                    Label32.Text = dt.Rows[4]["Name"].ToString();
                    Label34.Text = dt.Rows[4]["Game"].ToString();
                    Label36.Text = dt.Rows[4]["ID_Number"].ToString();
                    Label60.Text = dt.Rows[4]["College_name"].ToString();
                    Label38.Text = dt.Rows[4]["EventCollege"].ToString();
                    Label40.Text = Convert.ToDateTime(dt.Rows[4]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts5.Text = dt.Rows[4]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label31.Visible = true;
                    Label33.Visible = true;
                    Label35.Visible = true;
                    Label37.Visible = true;
                    Label39.Visible = true;
                    Label59.Visible = true;
                    lblpay5.Visible = true;
                    Button5.Visible = true;
                }
                else
                {
                    lblNamed.Text = dt.Rows[0]["Name"].ToString();
                    lblGamed.Text = dt.Rows[0]["Game"].ToString();
                    lblIDNumber.Text = dt.Rows[0]["ID_Number"].ToString();
                    Label52.Text = dt.Rows[0]["College_name"].ToString();
                    Labelcollegename.Text = dt.Rows[0]["EventCollege"].ToString();
                    lblGameDate.Text = Convert.ToDateTime(dt.Rows[0]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts.Text= dt.Rows[0]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    lblName.Visible = true;
                    lblGame.Visible = true;
                    lblID.Visible = true;
                    lblcollname.Visible = true;
                    lblgameda.Visible = true;
                    lblpay.Visible = true;
                    Label51.Visible = true;
                    Button1.Visible = true;
                    ////=================================

                    Label2.Text = dt.Rows[1]["Name"].ToString();
                    Label4.Text = dt.Rows[1]["Game"].ToString();
                    Label6.Text = dt.Rows[1]["ID_Number"].ToString();
                    Label54.Text = dt.Rows[1]["College_name"].ToString();
                    Label8.Text = dt.Rows[1]["EventCollege"].ToString();
                    Label10.Text = Convert.ToDateTime(dt.Rows[1]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts2.Text = dt.Rows[1]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label1.Visible = true;
                    Label3.Visible = true;
                    Label5.Visible = true;
                    Label7.Visible = true;
                    Label9.Visible = true;
                    lblpay2.Visible = true;
                    Label53.Visible = true;
                    Button2.Visible = true;
                    /////////===================================

                    Label12.Text = dt.Rows[2]["Name"].ToString();
                    Label14.Text = dt.Rows[2]["Game"].ToString();
                    Label16.Text = dt.Rows[2]["ID_Number"].ToString();
                    Label56.Text = dt.Rows[2]["College_name"].ToString();
                    Label18.Text = dt.Rows[2]["EventCollege"].ToString();
                    Label20.Text = Convert.ToDateTime(dt.Rows[2]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts3.Text = dt.Rows[3]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label11.Visible = true;
                    Label13.Visible = true;
                    Label15.Visible = true;
                    Label17.Visible = true;
                    Label19.Visible = true;
                    lblpay3.Visible = true;
                    Label55.Visible = true;
                    Button3.Visible = true;
                    ////========================================

                    Label22.Text = dt.Rows[3]["Name"].ToString();
                    Label24.Text = dt.Rows[3]["Game"].ToString();
                    Label26.Text = dt.Rows[3]["ID_Number"].ToString();
                    Label58.Text = dt.Rows[3]["College_name"].ToString();
                    Label28.Text = dt.Rows[3]["EventCollege"].ToString();
                    Label30.Text = Convert.ToDateTime(dt.Rows[3]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts4.Text = dt.Rows[3]["paymentstatus"].ToString();
                    //  Set visibility to true for the labels
                    Label21.Visible = true;
                    Label23.Visible = true;
                    Label25.Visible = true;
                    Label27.Visible = true;
                    Label29.Visible = true;
                    lblpay4.Visible = true;
                    Label57.Visible = true;
                    Button4.Visible = true;
                    /////========================

                    Label32.Text = dt.Rows[4]["Name"].ToString();
                    Label34.Text = dt.Rows[4]["Game"].ToString();
                    Label36.Text = dt.Rows[4]["ID_Number"].ToString();
                    Label60.Text = dt.Rows[4]["College_name"].ToString();
                    Label38.Text = dt.Rows[4]["EventCollege"].ToString();
                    Label40.Text = Convert.ToDateTime(dt.Rows[4]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts5.Text = dt.Rows[4]["paymentstatus"].ToString();
                    // Set visibility to true for the labels
                    Label31.Visible = true;
                    Label33.Visible = true;
                    Label35.Visible = true;
                    Label37.Visible = true;
                    Label39.Visible = true;
                    lblpay5.Visible = true;
                    Label59.Visible = true;
                    Button5.Visible = true;
                    ////========================

                    Label42.Text = dt.Rows[5]["Name"].ToString();
                    Label44.Text = dt.Rows[5]["Game"].ToString();
                    Label46.Text = dt.Rows[5]["ID_Number"].ToString();
                    Label62.Text = dt.Rows[4]["College_name"].ToString();
                    Label48.Text = dt.Rows[5]["EventCollege"].ToString();
                    Label50.Text = Convert.ToDateTime(dt.Rows[5]["EventDate"]).ToString("dd/MM/yyyy");
                    lblsts6.Text = dt.Rows[5]["paymentstatus"].ToString();
                    // Set visibility to true for the labels
                    Label41.Visible = true;
                    Label43.Visible = true;
                    Label45.Visible = true;
                    Label47.Visible = true;
                    Label49.Visible = true;
                    lblpay6.Visible = true;
                    Label61.Visible = true;
                    Button6.Visible = true;
                }
                
            }
            else
            {
                conn.Close();
            }

        }
    }
}