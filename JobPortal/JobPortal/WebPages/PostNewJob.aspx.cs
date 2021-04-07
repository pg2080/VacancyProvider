using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace JobPortal.WebPages
{
    public partial class PostNewJob : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            //Session["email"] = "0";


            if (!string.IsNullOrEmpty(Session["email"] as string))
            {
             //   this.MasterPageFile = "HR.Master";
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }


        protected void createNewJob(object sender, EventArgs e)
        {
            string title = txtjtype.Text.ToString();
            string company = txtcname.Text.ToString();
            string jtype = cmbjtype.SelectedValue.ToString();
            string location = txtlocation.Text.ToString();
            string exp = txtexp.Text.ToString();
            string sal = txtsal.Text.ToString();
            string des = txtdes.Text.ToString();
            int vcs = Convert.ToInt32(vc.Text.ToString());
            DateTime da = DateTime.Parse(DateTime.Now.ToString());
            int user = Convert.ToInt32(Session["LoginId"].ToString());
            string dept = Session["dept"] as string;
            con.Open();
            string qu = "insert into tblJobs(title,Job_type,Location,Company,Description,Req_experiance,Expected_salary,JobCreatedByUserId,vacancy,dept) values('"+title+"','"+jtype+"','"+location+"','"+company+"','"+des+"','"+exp+"','"+sal+"','"+user+"','"+vcs+"','"+dept+"')";
            SqlCommand cmd= new SqlCommand(qu,con);
            int res = Convert.ToInt32(cmd.ExecuteNonQuery());
            con.Close();
        }
    }
}