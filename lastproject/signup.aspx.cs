using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class signup : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button1_Click(object sender, EventArgs e)
    {
        string fullName = TextBox3.Text;
        DateTime dob = DateTime.ParseExact(TextBox4.Text, "dd/MM/yyyy", null);
       // DateTime dob = Convert.ToDateTime(TextBox4.Text); // Changed data type to string
        string username = TextBox1.Text;
        string password = TextBox2.Text;
        string confirmPassword = TextBox5.Text;

        using (SqlConnection con = new SqlConnection(connection))
        {
            try
            {
                con.Open();
                string query = "INSERT INTO signup (Name, DOB, Username, Password, ConfirmPassword) " +
                               "VALUES (@full_name, @dob, @username, @password, @confirm_password);";


                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@full_name", fullName);
                cmd.Parameters.AddWithValue("@dob", dob);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@confirm_password", confirmPassword);

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Data inserted successfully
                    Session["SuccessMessage"] = "Registration successful";
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Response.Write("Registration failed.");
                }
            }
            catch (Exception ex)
            {
                // Handle exception
                Response.Write("An error occurred: " + ex.Message);
            }
        }
    }
}