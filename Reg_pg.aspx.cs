using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Reg_pg : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string fullname = TextBox2.Text;
        string location = TextBox3.Text;
        string phone_no = TextBox4.Text;
        string email = TextBox5.Text;
        string username = TextBox1.Text;
        string password = TextBox6.Text;

        using (SqlConnection con = new SqlConnection(connection))
        {
            try
            {
                con.Open();
                string query = "INSERT INTO reg (fullname,location,phone_no,email,username, password) VALUES (@fullname,@location,@phone_no,@email,@username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@fullname", fullname);
                cmd.Parameters.AddWithValue("@location", location);
                cmd.Parameters.AddWithValue("@phone_no", phone_no);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);


                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Data inserted successfully
                    Session["Username"] = username;
                    Response.Redirect("Home.aspx");
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
