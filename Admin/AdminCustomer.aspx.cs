using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace DairyMania.Admin
{
    public partial class AdminBooking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RIYA-PC\\SQLEXPRESS;Initial Catalog=DM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindgrid();
            }
        }

        private void bindgrid()
        {
            disp_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int userCount = GetUserCountFromLoginData();
            count.Text = userCount.ToString();
        }

        private int GetUserCountFromLoginData()
        {
            int userCount = 0;
            string query = "SELECT COUNT(ULID) FROM UserLog WHERE ULID IS NOT NULL";

            // Ensure the connection is open before executing the command
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            using (SqlCommand command = new SqlCommand(query, con))
            {
                userCount = (int)command.ExecuteScalar();
            }

            return userCount;
        }

        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT [ULID], [ULUserName], [ULEmail] FROM [UserLog]";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            // Ensure the connection is open before filling the DataTable
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            da.Fill(dt);
            userdata.DataSource = dt;
            userdata.DataBind();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            // Ensure the connection is closed when the page is unloaded
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }

        protected void userdata_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
         userdata.EditIndex = e.NewEditIndex;
         bindgrid();
    
        }

        protected void userdata_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(userdata.DataKeys[e.RowIndex].Value);
            TextBox txtName = (TextBox)userdata.Rows[e.RowIndex].FindControl("txtName");
            TextBox textEmail = (TextBox)userdata.Rows[e.RowIndex].FindControl("txtEmail");
            string name = txtName.Text;
            string email = textEmail.Text;
            UpdateData(id, name,email);
            userdata.EditIndex = -1;
            bindgrid();

        }

        private void UpdateData(int id, string name, string email)
        {
            string query = "UPDATE UserLog SET ULUserName = @Name, ULEmail = @Email WHERE ULID = @ID";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@ID", id);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                con.Close();
            }
            
        }

        protected void userdata_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            userdata.EditIndex = -1;
            bindgrid();
        }

        protected void userdata_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(userdata.DataKeys[e.RowIndex].Value);
            DeletedData(id);
            bindgrid();

        }

        private void DeletedData(int id)
        {
            string query = "DELETE FROM UserLog WHERE ULID = @ID";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@ID", id);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}