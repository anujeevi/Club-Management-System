using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;



namespace Club_Management_System
    {
        public partial class Register : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
            }

            protected void btnRegister_Click(object sender, EventArgs e)
            {
                string connectionString =
                    ConfigurationManager.ConnectionStrings["ClubDB"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = @"INSERT INTO Members
                                (FullName, Email, Phone, Address, Password)
                                VALUES
                                (@FullName, @Email, @Phone, @Address, @Password)";

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@FullName", txtName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                Response.Write("<script>alert('Registration Successful!');</script>");
            }
        }
    }



