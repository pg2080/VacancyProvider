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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
        string code = string.Empty;
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCandidate();
            }
            int loginid = Convert.ToInt32(Session["LoginId"]);
           string qu1 = "select tblUserInfo.*,tblLogin.*  from tblUserInfo Inner join tblLogin on tblUserInfo.LoginId = tblLogin.LoginId AND tblLogin.LoginId='" + loginid + "'";
            SqlCommand cmd = new SqlCommand(qu1, con);
            con.Open();
            SqlDataReader ds = cmd.ExecuteReader();
            if (ds.Read())
            {
                code = ds["Password"].ToString();
            }
            con.Close();
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

        public void getCandidate()
        {
            /*   int loginId = Convert.ToInt32(Session["LoginId"]);
               string qu = "Select * from tblUserInfo where LoginId=3";
               DataTable dt = new DataTable();
               SqlDataAdapter adapt = new SqlDataAdapter(qu, con);
               con.Open();
               fname.Text = dt.Rows[0]["fname"].ToString();


               adapt.Fill(dt);
               con.Close();
               */
             int loginid = Convert.ToInt32(Session["LoginId"]);
           
            string qu = "select tblUserInfo.*,tblLogin.*  from tblUserInfo Inner join tblLogin on tblUserInfo.LoginId = tblLogin.LoginId AND tblLogin.LoginId='"+loginid+"'";
            SqlCommand cmd = new SqlCommand(qu, con);
            con.Open();
            SqlDataReader ds = cmd.ExecuteReader();
            if (ds.Read())
            {
                fname.Text = ds["fname"].ToString();
                lname.Text = ds["lname"].ToString();
                mobile.Text = ds["mobile"].ToString();
                DOB.Text = ds["DOB"].ToString();
                address.Text = ds["address"].ToString();
                mstatus.SelectedIndex = Convert.ToInt32(ds["merital_status"].ToString());
                State.Value = ds["State"].ToString();
                //txtUserName.Text = ds["Email"].ToString();

                vfname.Text = ds["fname"].ToString();
                vlname.Text = ds["lname"].ToString();
                vmobile.Text = ds["mobile"].ToString();
                vDOB.Text = ds["DOB"].ToString();
                vadd.Text = ds["address"].ToString();
                vmstatus.SelectedIndex = Convert.ToInt32(ds["merital_status"].ToString());
                vState.Value = ds["State"].ToString();
                vtxtUserName.Text = ds["Email"].ToString();
              
            }
            con.Close();

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            edt.Visible = true;
            vw.Visible = false;
        }
        protected void Unnamed_Clickdel(object sender, EventArgs e)
        {
            int loginid = Convert.ToInt32(Session["LoginId"]);
            string q = "delete from tblUserInfo where LoginId='" + loginid + "'";
            string q1 = "delete from tblLogin where LoginId='" + loginid + "'";
            string q2 = "delete from tblApplication where ApplicantId='" + loginid + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(q,con);
            SqlCommand cmd1 = new SqlCommand(q1,con);
            SqlCommand cmd2 = new SqlCommand(q2,con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("HomePage.aspx");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Delete  Successfully ')", true);
          
        }
        protected void upd_Click(object sender, EventArgs e)
        {
            int loginid = Convert.ToInt32(Session["LoginId"]);
            if (!string.IsNullOrEmpty(oldp.Text.ToString()) && string.IsNullOrEmpty(newp.Text.ToString()))
            {
                errp.Text = "Please enter new and old Password";
                return;
            }
            if (string.IsNullOrEmpty(oldp.Text.ToString()) && !string.IsNullOrEmpty(newp.Text.ToString()))
            {
                errp.Text = "Please enter new and old Password";
                return;
            }
                  string fnames = fname.Text.ToString();
            string lName = lname.Text.ToString();
            string Address = address.Text.ToString() ;
            string state = State.Value.ToString();
            string m_status = mstatus.Value.ToString();
            string mobileno =mobile.Text.ToString();
            string ras = "2";
            string pass = JobPortalDBConnection.MD5Hash(newp.Text.ToString());
            string opass = oldp.Text.ToString();
            string dd = DOB.Text.ToString();
            if (!string.IsNullOrEmpty(oldp.Text.ToString()) && !string.IsNullOrEmpty(newp.Text.ToString()))
            {
                 if(JobPortalDBConnection.MD5Hash(opass) == code )
                 {
                     string qu = "update tblLogin set Password = '" + pass + "' where LoginId='" + loginid + "'";
                     string q = "UPDATE tblUserInfo SET DOB = '" + dd + "', Fname ='" + fnames + "', Lname ='" + lName + "', State ='" + state + "', Address ='" + Address + "', Mobile ='" + mobileno + "', Merital_status ='" + m_status + "' where LoginId='" + loginid + "'";
                     SqlCommand cmd = new SqlCommand(q, con);
                     con.Open();
                     int a = Convert.ToInt32(cmd.ExecuteNonQuery());
                     con.Close();
                     SqlCommand cmmd = new SqlCommand(qu, con);
                     con.Open();
                     int a1 = Convert.ToInt32(cmmd.ExecuteNonQuery());
                     con.Close();

                 }
                errp.Text = "yes p";
               return;
            }
            else
            {
                string q = "UPDATE tblUserInfo SET DOB = '" + dd + "', Fname ='" + fnames + "', Lname ='" + lName + "', State ='" + state + "', Address ='" + Address + "', Mobile ='" + mobileno + "', Merital_status ='" + m_status + "' where LoginId='" + loginid + "'";
                SqlCommand cmd = new SqlCommand(q,con);
                con.Open();
                int a = Convert.ToInt32(cmd.ExecuteNonQuery());
                con.Close();
                errp.Text = "no p";
                return;
            }

        }

        protected void can_Click(object sender, EventArgs e)
        {
            edt.Visible = false;
            vw.Visible = true;

        }

    }
}