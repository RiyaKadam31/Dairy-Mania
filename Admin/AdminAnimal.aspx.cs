using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DairyMania.Admin
{
    public partial class AdminAnimal : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RIYA-PC\\SQLEXPRESS;Initial Catalog=DM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void animlbtn_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Animal (AnimalName,AnimalPrice,AnimalType,AnimalBreed,AnimalQty) VALUES (@animalName,@animalPrice,@animalType,@animalBreed,@animalQty)";
            cmd.Parameters.AddWithValue("@animalName", animalName.Text);
            cmd.Parameters.AddWithValue("@animalPrice", animalPrice.Text);
            cmd.Parameters.AddWithValue("@animalType", animalType.Text);
            cmd.Parameters.AddWithValue("@animalBreed", animalBreed.Text);
            cmd.Parameters.AddWithValue("@animalQty", Convert.ToInt32 (animalQty.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            animalName.Text = "";
            animalPrice.Text = "";
            animalType.Text = "";
            animalBreed.Text = "";
            animalQty.Text = "";
            Response.Redirect("AdminAnimal.aspx");
        }
    }
}