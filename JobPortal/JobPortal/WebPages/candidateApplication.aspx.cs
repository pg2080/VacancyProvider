using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.WebPages
{
    public partial class candidateApplication : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            getCandidate();
        }
        public void getCandidate()
        {

            string qu = "Select*, (Select count(*) from tblApplication where JobId=tblJobs.JobId Group by  tblApplication.JobId) As CO   from tblJobs";
            DataTable dt = new DataTable();
            SqlDataAdapter adapt = new SqlDataAdapter(qu, con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
            }
        }

        protected void ShowData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
            SqlDataAdapter adapt = new SqlDataAdapter("select tblUserInfo.*,tblLogin.*  from tblUserInfo Inner join tblLogin on tblUserInfo.LoginId = tblLogin.LoginId AND tblLogin.User_type=1", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}