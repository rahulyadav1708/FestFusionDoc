using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class success : System.Web.UI.Page
{
    string connectionstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string orderId = Request.QueryString["orderId"];
        string paymentId = Request.QueryString["paymentId"];

        // Establish connection to the SQL Server database
        using (SqlConnection connection = new SqlConnection(connectionstring))
        {
            // Define the SQL query with parameters to avoid SQL injection
            string query = "INSERT INTO Payment (Username, OrderId, PaymentId) VALUES (@Username, @OrderId, @PaymentId)";

            // Create and open the SqlCommand object
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Add parameters to the SqlCommand object
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@OrderId", orderId);
                command.Parameters.AddWithValue("@PaymentId", paymentId);

                // Open the database connection
                connection.Open();

                // Execute the SQL query
                command.ExecuteNonQuery();

            }
            // Display the orderId and paymentId
            Label1.Text = username;
            Label2.Text = orderId;
            Label3.Text = paymentId;
        }
    }
}