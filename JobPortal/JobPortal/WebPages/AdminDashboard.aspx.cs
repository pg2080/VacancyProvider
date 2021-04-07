using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.WebPages
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["email"] as string))
            {
                Response.Redirect("HomePage.aspx");
            }

            if (Session["email"].ToString() != "0")
            {
                this.MasterPageFile = "Admin.Master";
                string aa = Session["email"].ToString();
            }
           
        }

      /*  public void registerHR(object sender, EventArgs e)
        {
            SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
            string fname = txtFname.Text.ToString();
            string lName = txtLname.Text.ToString();
            string Address = txtAddress.Text.ToString() + ',' + txtpin.Text.ToString();
            string state = cmbstate.Value.ToString();
            string gender = cmbgen.Value.ToString();
            string mstatus = cmbm_satus.Value.ToString();
            string mobile = txtmobile.Text.ToString();
            string ras = "1";
            string dept = cmbdept.Value.ToString();
            string email = txtem.Text.ToString();
            string pass = txtPassw.Text.ToString();

            int resultID = 0;
            string query = "insert into tblLogin(Email,Password,User_type) values('" + email + "','" + pass + "','" + ras + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            resultID = Convert.ToInt32(cmd.ExecuteScalar());

            string query2 = "Select @@Identity as newId from tblLogin";
            SqlCommand sqlnewcon = new SqlCommand(query2, con);
            int newid = Convert.ToInt32(sqlnewcon.ExecuteScalar());


            string querys = "insert into tblUserInfo(LoginId,Email,Fname,Lname,State,Gender,Address,Mobile,Merttal_status,department) values('" + newid + "','" + email + "','" + fname + "','" + lName + "','" + state + "','" + gender + "','" + Address + "','" + mobile + "','" + mstatus + "','"+dept+"')";
            SqlCommand cmds = new SqlCommand(querys, con);
            int result = Convert.ToInt32(cmds.ExecuteScalar());

            con.Close();

        }*/

    

    }
}