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
    public partial class NewJobSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowData();
        }


        protected void ShowData()
        {
            int loginId = Convert.ToInt32(Session["LoginId"]);
            DataTable dt = new DataTable();
            SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
            SqlDataAdapter adapt = new SqlDataAdapter("Select * from tblJobs where vacancy > 0", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                 grv.DataSource = dt;
                 grv.DataBind();
            }
        }

    }
}