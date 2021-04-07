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
    public partial class SearchJobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { ShowData(); }
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            //Session["email"] = "0";


            if (!string.IsNullOrEmpty(Session["email"] as string))
            {
                //  this.MasterPageFile = "HR.Master";
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }



        protected void ShowData()
        {
            int loginId = Convert.ToInt32(Session["LoginId"]);
            DataTable dt = new DataTable();
            SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
            SqlDataAdapter adapt = new SqlDataAdapter("Select * from tblJobs where not exists (Select * from tblApplication where tblJobs.JobId = tblApplication.JobId and tblApplication.ApplicantId = '" + loginId + "' and tblApplication.Sta ='0') and tblJobs.vacancy > 0", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                grv.DataSource = dt;
                grv.DataBind();
            }
        }

        protected void grv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                // string s = namespace.
                int loginId = Convert.ToInt32(Session["LoginId"]);
                string email = Session["email"].ToString();
                int index = Convert.ToInt32(e.CommandArgument.ToString());

                string quer = "insert into tblApplication(JobId,ApplicantId,Email) values('" + index + "','" + loginId + "','" + email + "')";
                SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
                SqlCommand cmd = new SqlCommand(quer, con);
                int res = 0;
                con.Open();
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

                if (res > 0)
                {
                    GridViewRow gvr = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                    int i = gvr.RowIndex;
                    GridViewRow gr = grv.Rows[i];
                    gr.Visible = false;
                }
                con.Close();
            }
        }
    }
}