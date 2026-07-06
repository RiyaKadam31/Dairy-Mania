using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.NetworkInformation;

namespace DairyMania.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RIYA-PC\\SQLEXPRESS;Initial Catalog=DM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboardData();
                LoadTableData();

            }

        }

        private void LoadDashboardData()
        {
            try
            {
                con.Open();
                lblAnimal.Text = GetCount("SELECT COUNT(AnimalID) FROM Animal").ToString();
                lblBooking.Text = GetCount("SELECT COUNT(DelID) FROM Delivery").ToString();
                lblCustomers.Text = GetCount("SELECT COUNT(ULID) FROM UserLog").ToString();

                int total = int.Parse(lblAnimal.Text) + int.Parse(lblBooking.Text) + int.Parse(lblCustomers.Text);
                lblTotal.Text = total.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<Script>alert('" + ex.Message + "');</script>");

            }
            finally
            {
                con.Close();
            }
        }

        

        private int GetCount(string query)
        {
            SqlCommand cmd = new SqlCommand(query, con);
            int count = (int)cmd.ExecuteScalar();
            return count;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        private void LoadTableData()
        {
            try
            {
                string query = "SELECT DelID, DelName, DelAmt, DelDate FROM Delivery";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                // Bind the data to the GridView
               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}