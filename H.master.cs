using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class H : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Check if the username is stored in the session
        if (Session["username"] != null)
        {
            // Get the username from the session
            string username = Session["username"].ToString();

            // Use the username as needed (e.g., display a welcome message)
            Label1.Text = username;
        }
        else
        {
            // If the username is not stored in the session, redirect to the login page
            Response.Redirect("Login.aspx");
        }
    }
    protected void logout(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
        Response.Cache.SetNoStore();

        // Remove the username session when logging out
        if (Session["username"] != null)
        {
            Session.Remove("username");
            Session.Abandon();
        }
    }

}

