using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Club_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ClubDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM Members WHERE Email=@Email AND Password=@Password";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Email", txtLoginEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtLoginPassword.Text);

                con.Open();

                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count > 0)
                {
                    Response.Write("<script>alert('Login Successful!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password!');</script>");
                }
            }
        }
    }
}