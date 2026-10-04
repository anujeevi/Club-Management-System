using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace Club_Management_System
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["ClubDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO ContactMessages
                                (Name, Email, Message)
                                VALUES
                                (@Name, @Email, @Message)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Name", txtContactName.Text);
                cmd.Parameters.AddWithValue("@Email", txtContactEmail.Text);
                cmd.Parameters.AddWithValue("@Message", txtMessage.Text);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            Response.Write("<script>alert('Message Sent Successfully!');</script>");
        }
    }
}