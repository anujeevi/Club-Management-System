using Antlr.Runtime.Tree;
using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Club_Management_System
{
    public partial class ManagementEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["ClubDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Events";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                System.Data.DataTable dt = new System.Data.DataTable();

                da.Fill(dt);
                gvEvents.DataSource = dt;
                gvEvents.DataBind();
            }
        }
    }
}