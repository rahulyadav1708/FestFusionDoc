using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class adminpage : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }

    }

    protected void ddlEventCollege_SelectedIndexChanged(object sender, EventArgs e)
    {
        // You can add logic here if needed
    }

    protected void ddlGame_SelectedIndexChanged(object sender, EventArgs e)
    {
        // You can add logic here if needed
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        BindGrid();
    }

    private void BindGrid()
    {
        string college = ddlEventCollege.SelectedValue;
        string game = ddlGame.SelectedValue;

        if (!string.IsNullOrEmpty(college) && !string.IsNullOrEmpty(game))
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Name, College_name, Class, class_year, Id_number, EventDate " +
                               "FROM participantdetails " +
                               "WHERE EventCollege = @College AND Game = @Game";

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@College", college);
                command.Parameters.AddWithValue("@Game", game);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();

                try
                {
                    connection.Open();
                    adapter.Fill(dataTable);

                    // Bind data to GridView
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();

                    if (dataTable.Rows.Count == 0)
                    {
                        lblMessage.Text = "No records found.";
                    }
                    else
                    {
                        lblMessage.Text = string.Empty;
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }
    }

}

