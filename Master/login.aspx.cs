using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DairyMania.Master
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RIYA-PC\\SQLEXPRESS;Initial Catalog=DM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logbtn_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(username.Text) || string.IsNullOrEmpty(password.Text))
            {
                // Display a message to the user indicating that all fields are mandatory
                Response.Write("<script>alert('Please fill in all fields');</script>");
                return;
            }
            con.Open();

            // Set the connection for the command
            SqlCommand cmd = new SqlCommand("SELECT * FROM UserLog WHERE ULUserName=@username AND ULPassword=@password", con);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);

            // Execute the command to retrieve data
            SqlDataReader reader = cmd.ExecuteReader();

            // Check if any rows are returned
            if (reader.Read())
            {
                Response.Redirect("../User/UHome.aspx");
            }
            else
            {
                msg.Text = "Invalid User";
            }

            // Close the reader and connection
            reader.Close();


            // Clear input fields
            username.Text = "";
            password.Text = "";
            con.Close();
        }

    }
}