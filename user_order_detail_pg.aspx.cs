using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Web.UI.WebControls;

namespace Fuel_Flow
{
    public class ProductDataAccess
    {
        private readonly string connectionString;

        public ProductDataAccess()
        {
            // Initialize the connection string from web.config
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
          
        }

        // Function to fetch reg name
        public string GetNameByUsername(string username)
        {
            string fullname = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT fullname FROM reg WHERE username = @username";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@username", username);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        fullname = reader["fullname"].ToString();
                    }
                }
            }

            return fullname;
        }

        // Function to fetch reg location
        public string GetLocationByUsername(string username)
        {
            string location = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT location FROM reg WHERE username = @username";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@username", username);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        location = reader["location"].ToString();
                    }
                }
            }

            return location;
        }

        // Function to fetch reg phone_no
        public string GetPhoneByUsername(string username)
        {
            string phone_no = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT phone_no FROM reg WHERE username = @username";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@username", username);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        phone_no = reader["phone_no"].ToString();
                    }
                }
            }

            return phone_no;
        }

        // Function to fetch order_id from Order table.
        public string GetOrderidByPhone(string phone)
        {
            string order_id = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT order_id FROM Orders WHERE phone = @phone";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@phone", phone);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        order_id = reader["order_id"].ToString();
                    }
                }
            }

            return order_id;
        }

        // Function to fetch date from Order table.
        public string GetDateByPhone(string phone)
        {
            string date = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT date FROM Orders WHERE phone = @phone";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@phone", phone);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        date = reader["date"].ToString();
                    }
                }
            }

            return date;
        }

        // Function to fetch time from Order table.
        public string GetTimeByPhone(string phone)
        {
            string time = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT time FROM Orders WHERE phone = @phone";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@phone", phone);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        time = reader["time"].ToString();
                    }
                }
            }

            return time;
        }

        // Function to fetch qty from Order table.
        public string GetQtyByPhone(string phone)
        {
            string qty = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT qty FROM Orders WHERE phone = @phone";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@phone", phone);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        qty = reader["qty"].ToString();
                    }
                }
            }

            return qty;
        }

        // Function to fetch pro_name from Order table.
        public string GetProductNameByPhone(string phone)
        {
            string pro_name = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT Pro_name FROM Orders WHERE phone = @phone";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@phone", phone);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        pro_name = reader["Pro_name"].ToString();
                    }
                }
            }

            return pro_name;
        }
    }

    public partial class user_order_detail_pg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if username is available in session
            if (Session["username"] != null)
            {
                string username = Session["username"].ToString();
                Label1.Text = username;

                // Create an instance of ProductDataAccess
                ProductDataAccess dataAccess = new ProductDataAccess();

                // Fetch user details
                string fullname = dataAccess.GetNameByUsername(username);
                string location = dataAccess.GetLocationByUsername(username);
                string phone = dataAccess.GetPhoneByUsername(username);

                // Fetch order details
                string order_id = dataAccess.GetOrderidByPhone(phone);
                string date = dataAccess.GetDateByPhone(phone);
                string time = dataAccess.GetTimeByPhone(phone);
                string qty = dataAccess.GetQtyByPhone(phone);
                string pro_name = dataAccess.GetProductNameByPhone(phone);

                // Set retrieved data to labels
                Label2.Text = fullname;
                Label4.Text = location;
                Label5.Text = phone;
                Label3.Text = order_id;
                Label6.Text = pro_name;
                Label7.Text = date;
                Label8.Text = time;
                Label9.Text = qty;

                int price = 95;
                int quantity = 0;
                int totalp;

                totalp = price * quantity;

                // Check if the input string (qty) can be parsed to an integer
                if (int.TryParse(qty, out quantity))
                {
                    // Calculate the total price

                    totalp = price * quantity;
                    // Display the total price in the Label
                    Label10.Text = totalp.ToString();
                }
                else
                {
                    // Handle the case where the input string is not in a correct format
                    Label10.Text = "Invalid quantity";
                }
                //int quantity = int.Parse(qty);

                Label10.Text = totalp.ToString();
                Label11.Text = totalp.ToString();
            }
            else
            {
                // If the username is not stored in the session, redirect to the login page
                Response.Redirect("Login.aspx");
            }
        }
    }
}