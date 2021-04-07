using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.WebPages
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void login(object sender, EventArgs e)
            {
            string email = txtUserName.Text.ToString();
            string password = txtpassword.Text.ToString();
            string mds5pass = JobPortalDBConnection.MD5Hash(password);
         
            int result = 0;
            string query = "Select tblLogin.*,tblUserInfo.* from tblLogin Left join tblUserInfo on	tblLogin.Email = tblUserInfo.Email where tblLogin.Email='" + email + "' and tblLogin.Password = '" + mds5pass + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader ds = cmd.ExecuteReader();

            if (ds.Read())
            {
                Session["LoginId"] = ds["LoginId"].ToString();
                Session["email"] = email;
                Session["ut"] = ds["user_type"].ToString();
                Session["dept"] =  ds["department"].ToString();    
                JobPortalDBConnection.email = email;
                string a = ds["user_type"].ToString();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login Successfully ')", true);
                if (a == "3")
                {
                    //Admin 
                    Response.Redirect("AdminDashboard.aspx");

                }
                if (a == "2")
                {
                    //Student
                    Response.Redirect("StudentDashboard.aspx");

                }
                if (a == "1")
                {
                    Session["dept"] = ds["department"].ToString();
                    Response.Redirect("HRDashboard.aspx");
                    //HR
                }
                //User Login SucessFull
                con.Close();
                llb.Visible = false;
                
    
            }
            else
            {
                llb.Text = "Invalid Username or password";
                llb.Visible = true;
                //Invalid UserName Password
            }

        
        }
        

    }
}