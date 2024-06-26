using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button1_Click(object sender, EventArgs e)
    {
        string Username = TextBox1.Text.Trim();
        string Password = TextBox2.Text.Trim();

        using (SqlConnection con = new SqlConnection(connection))
        {
            try
            {
                con.Open();
                string query = "SELECT COUNT(*) FROM signup WHERE Username = @username AND Password = @password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", Username);
                cmd.Parameters.AddWithValue("@password", Password);

                int result = (int)cmd.ExecuteScalar();

                if (result > 0)
                {
                    if (Username.ToLower() == "admin" && Password.ToLower() == "admin")
                    {
                        // Redirect to admin page
                        Response.Redirect("adminpage.aspx");
                    }
                    else
                    {
                        // Successful login for regular user
                        Session["Username"] = Username; // Store username in session
                        Response.Redirect("Homepagelogout.aspx"); // Redirect to dashboard or another page
                    }
                }
                else
                {
                    // Invalid login
                    Label1.Text = "Invalid username or password";
                }
            }
            catch (Exception ex)
            {
                // Handle exception
                Label2.Text = "An error occurred: " + ex.Message;
            }
        }
    }


    protected void Unnamed4_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
}