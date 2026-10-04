using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Club_Management_System
{
    public partial class Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnEvent1_Click(object sender, EventArgs e)
        {
            RegisterEvent("Community Meeting");
        }

        protected void btnEvent2_Click(object sender, EventArgs e)
        {
            RegisterEvent("Sports Day");
        }

        protected void btnEvent3_Click(object sender, EventArgs e)
        {
            RegisterEvent("Community Awareness Program");
        }

        private void RegisterEvent(string eventName)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["ClubDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO EventRegistrations
                                (MemberName, Email, EventName)
                                VALUES
                                (@MemberName, @Email, @EventName)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@MemberName", "Jeevitha");
                cmd.Parameters.AddWithValue("@Email", "jeevitha@gmail.com");
                cmd.Parameters.AddWithValue("@EventName", eventName);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            Response.Write("<script>alert('Event Registration Successful!');</script>");
        }
    }
}