using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.WebPages
{
    public partial class Ratings : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
           // hdn.Value = "0";
            

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["email"] as string))
            {
                int ut = Convert.ToInt32(Session["ut"]);

                if (ut == 1)
                {
                    MasterPageFile = "HR.Master";
                }
                if (ut == 2)
                { MasterPageFile = "Student.Master"; }
            }
            else
            {
                Response.Redirect("Homepage.aspx");
            }
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            int ut = Convert.ToInt32(Session["ut"].ToString());
            int LoginId = Convert.ToInt32(Session["LoginId"]);
            int s = Convert.ToInt16(hdn.Value) ; //lbl.Text.ToString();
          string cmts = string.Empty;
            
            if(!string.IsNullOrEmpty(cmt.Text.ToString()))
           {
                cmts=cmt.Text.ToString();
           }
            if(s > 0)
            {
                string q = "insert into tblRating (LoginId,ut,star,comment) values ('" + LoginId + "','" + ut + "','" + s + "','" + cmts + "')";
                SqlCommand cmd = new SqlCommand(q, con);
                con.Open();
                int ap= Convert.ToInt32(cmd.ExecuteNonQuery());
                con.Close();
                lblerr.Visible = false;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(),"alertMessage", "alert('FeedBaack Successfully Submitted')", true);
            }
            else
            {
                lblerr.Text = "Please Select Rating Stars";
                lblerr.Visible = true;
            }
        }
    }
}