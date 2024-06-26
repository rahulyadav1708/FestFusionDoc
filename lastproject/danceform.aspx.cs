using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System;

public partial class danceform : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if the 'id' parameter is present in the query string
            if (Request.QueryString["ID"] != null)
            {
                // Extract the ID from the query string
                int ID;
                if (int.TryParse(Request.QueryString["ID"], out ID))
                {
                    // Fetch college name from the database based on the ID
                    string collegeName = GetCollegeNameFromDatabase(ID);

                    // Display the fetched college name
                    if (!string.IsNullOrEmpty(collegeName))
                    {
                        // Assuming there is a label control named 'lblCollegeName' to display the college name
                        Txtcollege.Value = collegeName;
                    }
                    else
                    {
                        // College not found for the given ID
                        Txtcollege.Value = "College not found.";
                    }
                }
                else
                {
                    // Invalid ID format
                    Txtcollege.Value = "Invalid ID format.";
                }
            }
            else
            {
                // ID parameter not found in the query string
                Txtcollege.Value = "ID parameter not found.";
            }

            // Fetch game name from the database and populate the input field
            string gameName = GetGameNameFromDatabase();
            txtGame.Value = gameName;

            // Fetch event date from the database and populate the input field
            // string eventDate = GetEventDateFromDatabase();
            // TxtEventDate.Value = eventDate;


            if (Request.QueryString["ID"] != null)
            {
                // Extract the ID from the query string
                int ID;
                if (int.TryParse(Request.QueryString["ID"], out ID))
                {
                    // Fetch college name from the database based on the ID
                    string eventDate = GetEventDateFromDatabase(ID);

                    // Display the fetched college name
                    if (!string.IsNullOrEmpty(eventDate))
                    {
                        // Assuming there is a label control named 'lblCollegeName' to display the college name
                        TxtEventDate.Value = eventDate;
                    }
                    else
                    {
                        // College not found for the given ID
                        TxtEventDate.Value = "College not found.";
                    }
                }
                else
                {
                    // Invalid ID format
                    TxtEventDate.Value = "Invalid ID format.";
                }
            }
            else
            {
                // ID parameter not found in the query string
                TxtEventDate.Value = "ID parameter not found.";
            }


        }
    }

    private string GetGameNameFromDatabase()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string gameName = "";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("SELECT Game FROM Gamename WHERE ID = @ID", connection);
            command.Parameters.AddWithValue("@ID", 5); // Assuming game ID for "Carrom" is 1

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                gameName = reader["Game"].ToString();

            }
        }

        return gameName;
    }

    private string GetCollegeNameFromDatabase(int ID)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string collegeName = "";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("SELECT College FROM Collegename WHERE ID = @ID", connection);
            command.Parameters.AddWithValue("@ID", ID);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                collegeName = reader["College"].ToString();
            }
        }

        return collegeName;
    }

    private string GetEventDateFromDatabase(int ID)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string eventDate = "";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("SELECT EventDate FROM Collegename WHERE ID = @ID", connection);
            command.Parameters.AddWithValue("@ID",ID); // Assuming the ID for the relevant record

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                eventDate = Convert.ToDateTime(reader["EventDate"]).ToString("dd/MM/yyyy");
            }
        }

        return eventDate;
    }


    private void ClearFormFields()
    {
        // Clear values of form fields
        txtName.Value = "";
        txtCollegeName.Value = "";
        ddlClass.SelectedIndex = 0;
        ddlClassYear.SelectedIndex = 0;
        txtIDNumber.Value = "";
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // This method is invoked when the submit button is clicked
        // Retrieve values entered by the user
        string game = txtGame.Value;
        string name = txtName.Value;
        string collegeName = txtCollegeName.Value;
        DateTime Eventdate = DateTime.ParseExact(TxtEventDate.Value, "dd/MM/yyyy", null);
        // string Eventdate =Convert.ToDateTime(TxtEventDate.Value).ToString("dd/MM/yyyy");
        string className = ddlClass.SelectedValue;
        string classYear = ddlClassYear.SelectedValue;
        string idNumber = txtIDNumber.Value;
        string eventcollege = Txtcollege.Value;

        // Your database connection string
       

        // Your SQL query to insert data into the database
        string query = @"INSERT INTO participantdetails (Game, Name, College_Name, Class, Class_Year, ID_Number,EventDate,CreatedOn,EventCollege)
                             VALUES (@Game, @Name, @CollegeName, @ClassName, @ClassYear, @IDNumber,  @eventdate, @Createdon,@eventcollege)";

        try
        {
            // Establish connection to the database and execute the query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Game", game);
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@CollegeName", collegeName);
                command.Parameters.AddWithValue("@ClassName", className);
                command.Parameters.AddWithValue("@ClassYear", classYear);
                command.Parameters.AddWithValue("@IDNumber", idNumber);
                command.Parameters.AddWithValue("@eventdate", Eventdate);
                command.Parameters.AddWithValue("@Createdon", DateTime.Now);
                command.Parameters.AddWithValue("@eventcollege", eventcollege);

                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    // Insert successful
                    Response.Write("<script>alert('Data saved successfully!');</script>");
                    ClearFormFields(); // Clear form fields after successful submission
                }
                else
                {
                    // Insert failed
                    Response.Write("<script>alert('Failed to save data. Please try again.');</script>");
                }
            }
        }
        catch (Exception ex)
        {
            // Log the exception details for debugging purposes
            System.Diagnostics.Trace.WriteLine("An error occurred: " + ex.ToString());

            // Display the detailed error message to the user
            Response.Write("<script>alert('An unexpected error occurred: " + ex.Message + "');</script>");
        }
    }
}