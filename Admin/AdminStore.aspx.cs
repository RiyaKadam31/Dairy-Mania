using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DairyMania.Admin
{
    public partial class storemanagement : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RIYA-PC\\SQLEXPRESS;Initial Catalog=DM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void storebtn_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Store (StoreName,StoreOwner,StoreGender,StoreAddress,StorePhNumber,StoreJD,StoreAadhar) VALUES (@storeName,@storeowner,@storeGender,@storeAddress,@storeMobile,@storeJD,@storeAadhar)";
            cmd.Parameters.AddWithValue("@storeName", storeName.Text);
            cmd.Parameters.AddWithValue("@storeowner", storeowner.Text);
            cmd.Parameters.AddWithValue("@storeGender", storeGender.Text);
            cmd.Parameters.AddWithValue("@storeAddress", storeAddress.Text);
            cmd.Parameters.AddWithValue("@storeMobile", storeMobile.Text);
            cmd.Parameters.AddWithValue("@storeJD", storeJD.Text);
            cmd.Parameters.AddWithValue("@storeAadhar", storeAadhar.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            storeName.Text = "";
            storeowner.Text = "";
            storeGender.Text = "";
            storeAddress.Text = "";
            storeMobile.Text = "";
            storeJD.Text = "";
            storeAadhar.Text = "";
            Response.Redirect("AdminStore.aspx");
        }
    }
}