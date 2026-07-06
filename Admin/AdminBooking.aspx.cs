using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace DairyMania.Admin
{
    public partial class AdminBooking1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RIYA-PC\\SQLEXPRESS;Initial Catalog=DM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                

            }

        }

        protected void todaybk_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            int todayOrder = GetOrderCount(today, today);
            count.Text = todayOrder.ToString();


        }


        protected void monthbk_Click(object sender, EventArgs e)
        {
            DateTime firstDayOfMonth = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            DateTime lastDayOfMonth = firstDayOfMonth.AddMonths(1).AddDays(-1);

            int monthOrder = GetOrderCount(firstDayOfMonth, lastDayOfMonth);
            countm.Text = monthOrder.ToString();


        }

        protected void yearbk_Click(object sender, EventArgs e)
        {
            DateTime firstDayOfYear = new DateTime(DateTime.Now.Year, 1, 1);
            DateTime lastDayOfYear = new DateTime(DateTime.Now.Year, 12, 31);

            int yearOrder = GetOrderCount(firstDayOfYear, lastDayOfYear);
            county.Text = yearOrder.ToString();

        }

        private int GetOrderCount(DateTime startDate, DateTime endDate)
        {
            int OrderCount = 0;
            string query = "SELECT COUNT(*) FROM Delivery WHERE DelDate >= @StartDate AND DelDate <= @EndDate";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@StartDate", startDate);
                cmd.Parameters.AddWithValue("@EndDate", endDate);
                con.Open();
                OrderCount = (int)cmd.ExecuteScalar();
                con.Close();
            }
            return OrderCount;
        }


       
    }
}

       

       
    
