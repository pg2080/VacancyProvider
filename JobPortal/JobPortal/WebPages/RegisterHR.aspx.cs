using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.UserResume
{
    public partial class RegisterHR : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void useRegistration(object sender, EventArgs e)
        {
            string fnames = fname.Text.ToString();
            string lName = lname.Text.ToString();
            string Address = add.Text.ToString() + ',' + pin.Text.ToString();
            string state = State.Value.ToString();
            string gen = gender.Value.ToString();
            string m_status = mstatus.Value.ToString();
            string mobileno = mobile.Text.ToString();
            string ras = "1";
            string email = txtUserName.Text.ToString();
            string pass = txtpassword.Text.ToString();
            string edu = edq.Value.ToString();
            string dd = DOB.Text.ToString();
            string re = resume.FileName.ToString();
            string mds5pass = JobPortalDBConnection.MD5Hash(pass);
         

            string uq = "Select email from tblLogin where  Email = '" + email + "'";
            SqlCommand sqlnewcons = new SqlCommand(uq, con);
            con.Open();
            var newids = sqlnewcons.ExecuteScalar();
            con.Close();
            if (newids != null)
            {
                emailerr.Text = "email already exist    ";
                return;
            }

            int resultID = 0;
            string query = "insert into tblLogin(Email,Password,User_type) values('" + email + "','" + mds5pass + "','" + ras + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            resultID = Convert.ToInt32(cmd.ExecuteScalar());

            string query2 = "Select @@Identity as newId from tblLogin";
            SqlCommand sqlnewcon = new SqlCommand(query2, con);
            int newid = Convert.ToInt32(sqlnewcon.ExecuteScalar());

            re = re + '-' + newid;
            if (resume.HasFile)
            {
                resume.SaveAs(Request.PhysicalApplicationPath + "/UserResume/" + re);
            }

            string querys = "insert into tblUserInfo(LoginId,Email,DOB,Fname,Lname,State,Gender,Address,Resume,Mobile,Merital_status,department) values('" + newid + "','" + email + "','" + dd + "','" + fnames + "','" + lName + "','" + state + "','" + gen + "','" + Address + "','" + re + "','" + mobileno + "','" + m_status + "','"+edu+"')";
            SqlCommand cmds = new SqlCommand(querys, con);
            int result = Convert.ToInt32(cmds.ExecuteScalar());

            con.Close();


        }

    }
}