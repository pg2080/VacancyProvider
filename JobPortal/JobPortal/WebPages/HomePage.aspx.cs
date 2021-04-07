using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace JobPortal.WebPages
{
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            JobPortalDBConnection.Isreg = true;

            //            txtUname.Attributes.Add("onblur", "ValidatorValidate(" + reg1.ClientID + ")");
            //          txtPass.Attributes.Add("onblur", "ValidatorValidate(" + valpass.ClientID + ")");
            /* txtFname.Attributes.Add("onblur", "ValidatorValidate(" + rtxtFname.ClientID + ")");
             txtLname.Attributes.Add("onblur", "ValidatorValidate(" + rtxtLname.ClientID + ")");
             txtAddress.Attributes.Add("onblur", "ValidatorValidate(" + rtxtAddress.ClientID + ")");
             txtpin.Attributes.Add("onblur", "ValidatorValidate(" + rtxtpin.ClientID + ")");
           //  cmbgen.Attributes.Add("onblur", "ValidatorValidate(" + rcmbgen.ClientID + ")");
            // cmbm_satus.Attributes.Add("onblur", "ValidatorValidate(" + rcmbm_satus.ClientID + ")");
             txtmobile.Attributes.Add("onblur", "ValidatorValidate(" + rtxtmobile.ClientID + ")");
             txtem.Attributes.Add("onblur", "ValidatorValidate(" + RequiredFieldValidator7.ClientID + ")");
             txtem.Attributes.Add("onblur", "ValidatorValidate(" + RequiredFieldValidator8.ClientID + ")");

             txtPassw.Attributes.Add("onblur", "ValidatorValidate(" + RequiredFieldValidator9.ClientID + ")");
           
            

             */


            // Session.Clear();
            if (!IsPostBack)
            {
                Session.Clear();
                //this.MasterPageFile = "Navbar.Master";
               
            }
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            /* Session["email"] = "0";
             if (Session["email"].ToString() == "0")
             {
                 this.MasterPageFile = "Admin.Master";
             }*/
          
            if (!string.IsNullOrEmpty(Session["email"] as string))
            {
                int ut = Convert.ToInt32(Session["ut"]);

                if (ut == 1)
                {
                    MasterPageFile = "HR.Master";
                }
                if (ut == 2)
                { MasterPageFile = "Student.Master"; }
                if (ut == 3)
                {
                    this.MasterPageFile = "Admin.Master";
                }
                if (!IsPostBack)
                {
                    this.MasterPageFile = "Navbar.Master";
                }
            }
            else
            {
                this.MasterPageFile = "Navbar.Master";
            }

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        protected void userLogin(object sender, EventArgs e)
        {
            string email = "";// txtUname.Text.ToString();
            string password = "";// txtPass.Text.ToString();
            int result = 0;
            string query = "Select * from tblLogin where Email='" + email + "' and Password = '" + password + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader ds = cmd.ExecuteReader();

            if (ds.Read())
            {
                Session["LoginId"] = ds["LoginId"].ToString();
                Session["email"] = email;
                JobPortalDBConnection.email = email;
                string a = ds["user_type"].ToString();
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
                    Response.Redirect("HRDashboard.aspx");
                    //HR
                }
                //User Login SucessFull
                con.Close();


            }
            else
            {
                //Invalid UserName Password
            }

        }


        public void useRegistration(object sender, EventArgs e)
        {/*
            string fname = txtFname.Text.ToString();
            string lName = txtLname.Text.ToString();
            string Address = txtAddress.Text.ToString() + ',' + txtpin.Text.ToString();
            string state = cmbstate.Value.ToString();
            string gender = cmbgen.Value.ToString();
            string mstatus = cmbm_satus.Value.ToString();
            string mobile = txtmobile.Text.ToString();
            string ras = "2";
            string email = txtem.Text.ToString();
            string pass = txtPassw.Text.ToString();

            int resultID = 0;
            string query = "insert into tblLogin(Email,Password,User_type) values('" + email + "','" + pass + "','"+ras+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            resultID = Convert.ToInt32(cmd.ExecuteScalar());

            string query2 = "Select @@Identity as newId from tblLogin";
            SqlCommand sqlnewcon = new SqlCommand(query2,con);
            int newid = Convert.ToInt32(sqlnewcon.ExecuteScalar());


            string querys = "insert into tblUserInfo(LoginId,Email,Fname,Lname,State,Gender,Address,Mobile,Merttal_status) values('"+newid+"','" + email + "','" + fname + "','" + lName + "','"+state+"','"+gender+"','"+Address+"','"+mobile+"','"+mstatus+"')";
            SqlCommand cmds = new SqlCommand(querys, con);
            int result = Convert.ToInt32(cmds.ExecuteScalar());

            con.Close();
          * */

        }


    }
}