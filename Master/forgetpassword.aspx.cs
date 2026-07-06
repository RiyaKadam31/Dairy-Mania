using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace DairyMania.Master
{
    public partial class forgetpassword : System.Web.UI.Page
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
            cmd.CommandText = "INSERT INTO ForgetPassword (FPemail) VALUES (@email)";
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            email.Text = "";
            Response.Redirect("login.aspx");
        }
    }
}