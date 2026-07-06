using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DairyMania.Master
{
    public partial class contactus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RIYA-PC\\SQLEXPRESS;Initial Catalog=DM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Contact (ContactName,ContactEmail,ContactMsg) VALUES (@name,@email,@message)";
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@message", message.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            name.Text = "";
            email.Text = "";
            message.Text = "";
            Response.Redirect("home.aspx");
        }
    }
}