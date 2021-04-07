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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCandidate();
                getAppCandidate();
                getRejCandidate();
            }
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            //Session["email"] = "0";

          
            if (!string.IsNullOrEmpty(Session["email"] as string))
            {
                this.MasterPageFile = "HR.Master";
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }

        public void getCandidate()
        
        {
            int loginid = Convert.ToInt32(Session["loginId"]);
            string qu ="SELECT tblApplication.*,tblUserInfo.*,tblJobs.* FROM tblApplication LEFT JOIN tblUserInfo ON tblApplication.Email = tblUserInfo.Email INNER JOIN tblJobs ON tblApplication.JobId = tblJobs.JobId where tblJobs.JobCreatedByUserId =  '" + loginid + "'    and tblApplication.Sta= '0'  order by  tblApplication.ApplicantId ";
            DataTable dt = new DataTable();
            SqlDataAdapter adapt = new SqlDataAdapter(qu, con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                listCandiates.DataSource = dt;
                listCandiates.DataBind();
                listCandiates.Visible = true;
            }
            else
            {
                listCandiates.Visible = false;
            }
        }

        public void getAppCandidate()
        {
            int loginid = Convert.ToInt32(Session["loginId"]);
            string qu = "SELECT tblApplication.*,tblUserInfo.*,tblJobs.* FROM tblApplication LEFT JOIN tblUserInfo ON tblApplication.Email = tblUserInfo.Email INNER JOIN tblJobs ON tblApplication.JobId = tblJobs.JobId where tblJobs.JobCreatedByUserId =  '" + loginid + "'    and tblApplication.Sta = '1'  order by  tblApplication.ApplicantId ";
            DataTable dt = new DataTable();
            SqlDataAdapter adapt = new SqlDataAdapter(qu, con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                list_Approvecan.DataSource = dt;
                list_Approvecan.DataBind();
                list_Approvecan.Visible = true;
            }
            else
            {
                list_Approvecan.Visible = false;
            }
        }


        public void getRejCandidate( )
        {
            int loginid = Convert.ToInt32(Session["loginId"]);
            string qu = "SELECT tblApplication.*,tblUserInfo.*,tblJobs.* FROM tblApplication LEFT JOIN tblUserInfo ON tblApplication.Email = tblUserInfo.Email INNER JOIN tblJobs ON tblApplication.JobId = tblJobs.JobId where tblJobs.JobCreatedByUserId =  '" + loginid + "'    and tblApplication.Sta = '2'  order by  tblApplication.ApplicantId ";
            DataTable dt = new DataTable();
            SqlDataAdapter adapt = new SqlDataAdapter(qu, con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                list_rejcan.DataSource = dt;
                list_rejcan.DataBind();
                list_rejcan.Visible = true;
            }
            else
            {
                list_rejcan.Visible = false;
            }
        }

        protected void listCandiates_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Control ctrl = e.CommandSource as Control;  
            GridViewRow gvRow = ctrl.Parent.NamingContainer as GridViewRow;
            TextBox txtno = (TextBox)gvRow.FindControl("rem");  // Find Your Control here
          


            //string st = t.Text.ToString();
            if(e.CommandName=="Approve")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                string qu = "update tblApplication set Sta = '1' , Remark = '" + txtno.Text.ToString() + "' where ApplicationId  = '" + index + "'";
                SqlCommand cmd = new SqlCommand(qu, con);
                con.Open();
                var s = cmd.ExecuteNonQuery();
                con.Close();
                getCandidate();
                
            }
            if(e.CommandName=="Reject")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                string qu = "update tblApplication set Sta = '2' , Remark = '" + txtno.Text.ToString() + "' where ApplicationId  = '" + index + "' ";
                SqlCommand cmd = new SqlCommand(qu, con);
                con.Open();
                var s = cmd.ExecuteNonQuery();
                con.Close();
                getCandidate();

            }
            getAppCandidate();
            getRejCandidate();
           
        }

        protected void list_Approvecan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Control ctrl = e.CommandSource as Control;
            GridViewRow gvRow = ctrl.Parent.NamingContainer as GridViewRow;
            TextBox txtno = (TextBox)gvRow.FindControl("remr");  // Find Your Control here
          
            if (e.CommandName == "AReject")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                string qu = "update tblApplication set Sta = '2' , Remark = '" + txtno.Text.ToString() + "' where ApplicationId  = '" + index + "' ";
                SqlCommand cmd = new SqlCommand(qu, con);
                con.Open();
                var s = cmd.ExecuteNonQuery();
                con.Close();
                getCandidate();

            }
            getAppCandidate();
            getRejCandidate();
           
        }

        protected void list_rejcan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Control ctrl = e.CommandSource as Control;
            GridViewRow gvRow = ctrl.Parent.NamingContainer as GridViewRow;
            TextBox txtno = (TextBox)gvRow.FindControl("rema");  // Find Your Control here



            //string st = t.Text.ToString();
            if (e.CommandName == "RApprove")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                string qu = "update tblApplication set Sta = '1' , Remark = '" + txtno.Text.ToString() + "' where ApplicationId  = '" + index + "'";
                SqlCommand cmd = new SqlCommand(qu, con);
                con.Open();
                var s = cmd.ExecuteNonQuery();
                con.Close();
                getCandidate();

            }
            getAppCandidate();
            getRejCandidate();
           
        }

        
       

     
    }
}