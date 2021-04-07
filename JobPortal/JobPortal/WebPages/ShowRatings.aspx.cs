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
    public partial class ShowRatings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showStudentFeedback();
            showHRFeedback();

        }

        public void showStudentFeedback()
        {
            DataTable dt = new DataTable();
            SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
            SqlDataAdapter adapt = new SqlDataAdapter("select * from tblRating where ut=2", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                grv.DataSource = dt;
                grv.DataBind();
            }
        }

        public void showHRFeedback()
        {
            DataTable dt = new DataTable();
            SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
            SqlDataAdapter adapt = new SqlDataAdapter("select * from tblRating where ut=1", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                grh.DataSource = dt;
                grh.DataBind();
            }
        }
    }
}