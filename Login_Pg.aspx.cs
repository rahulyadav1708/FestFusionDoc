using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Login_Pg : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;

        using (SqlConnection con = new SqlConnection(connection))
        {
            try
            {
                con.Open();
                string query = "SELECT COUNT(*) FROM reg WHERE username = @username AND password = @password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                int result = (int)cmd.ExecuteScalar();

                if (result > 0)
                {
                    // Successful login
                    Session["Username"] = username; // Store username in session
                    Response.Redirect("Home.aspx"); // Redirect to dashboard or another page
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reg_pg.aspx");
    }
}
