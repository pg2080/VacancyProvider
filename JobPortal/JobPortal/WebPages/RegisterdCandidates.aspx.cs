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
    public partial class RegisterdCandidates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }
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
            DataTable dt = new DataTable();
            SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
            SqlDataAdapter adapt = new SqlDataAdapter("select tblUserInfo.*,tblLogin.*  from tblUserInfo Inner join tblLogin on tblUserInfo.LoginId = tblLogin.LoginId where tblLogin.User_type  = 2", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                grdCandidateList.DataSource = dt;
                grdCandidateList.DataBind();
            }
        }
    }
}