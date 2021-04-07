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
    public partial class application : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowData();
        }
        protected void ShowData()
        {
            int Login = Convert.ToInt16(Session["LoginId"]);
            DataTable dt = new DataTable();
            SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
            SqlDataAdapter adapt = new SqlDataAdapter("Select * from tblApplication LEFT JOIN tblJobs on tblApplication.JobId = tblJobs.JobId where tblApplication.ApplicantId = '"+Login+"'order by tblApplication.ApplicationId;", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                grdHRList.DataSource = dt;
                grdHRList.DataBind();
            }
        }
    }
}