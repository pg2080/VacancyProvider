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
    public partial class HRJobs : System.Web.UI.Page
    {
        SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCandidate();
            }
        }
        public void getCandidate()
        {
            int loginId = Convert.ToInt32(Session["LoginId"]);
            string qu = "Select*, (Select count(*) from tblApplication where JobId=tblJobs.JobId Group by  tblApplication.JobId) As CO   from tblJobs where JobCreatedByUserId='" + loginId + "' order by tblJobs.JobId ";
            DataTable dt = new DataTable();
            SqlDataAdapter adapt = new SqlDataAdapter(qu, con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int indexs = Convert.ToInt32(e.CommandArgument.ToString());

            if (e.CommandName == "edit")
            {
                // string s = namespace.
                Control ctrl = e.CommandSource as Control;
                GridViewRow gvRow = ctrl.Parent.NamingContainer as GridViewRow;

                int index = Convert.ToInt32(e.CommandArgument.ToString());
                string title = ((TextBox)gvRow.FindControl("txtjtype")).ToString();
                string company = ((TextBox)gvRow.FindControl("txtcname")).ToString();
                string jtype = ((TextBox)gvRow.FindControl("cmbjtype")).ToString();
                string location = ((TextBox)gvRow.FindControl("txtlocation")).ToString();
                string exp = ((TextBox)gvRow.FindControl("txtexp")).ToString();
                string sal = ((TextBox)gvRow.FindControl("txtsal")).ToString();
                string des = ((TextBox)gvRow.FindControl("txtdes")).ToString();
                int vcs = Convert.ToInt32((TextBox)gvRow.FindControl("vc"));
                con.Open();
                string qu = "update tblJobs set title='" + title + " and Job_type='" + jtype + "' and Location='" + location + "' and Company = '" + company + "'and Description='" + des + "'and Req_experiance='" + exp + "' and Expected_salary='" + sal + "'and vacancy='" + vcs + "'and dept='" + des + "' where JobId = '" + index + "' ";
                SqlCommand cmd = new SqlCommand(qu, con);
                int res = Convert.ToInt32(cmd.ExecuteNonQuery());
                con.Close();
                /*   string quer = "insert into tblApplication(JobId,ApplicantId,Email) values('" + index + "','" +loginId + "','" + email + "')";
                   SqlConnection con = JobPortalDBConnection.getDatabaseConnection();
                   SqlCommand cmd = new SqlCommand(quer, con);
                   int res = 0;
                   con.Open();
                   res = Convert.ToInt32(cmd.ExecuteNonQuery());

                   if (res != 0)
                   {
                    //   GridViewRow gr = grv.Rows[index-1];
                      // gr.Visible = false;
                   }
                   con.Close();*/
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getCandidate();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getCandidate();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtid = GridView1.Rows[e.RowIndex].FindControl("Jid") as TextBox;

            //  string ase = (GridView1.Rows[e.RowIndex].FindControl("txtjtype") as TextBox).Text.ToString();
            int index = Convert.ToInt32(txtid.Text.ToString());


            string title = (GridView1.Rows[e.RowIndex].FindControl("txtjtype") as TextBox).Text.ToString();
            string company = (GridView1.Rows[e.RowIndex].FindControl("txtcname") as TextBox).Text.ToString();
            string jtype = (GridView1.Rows[e.RowIndex].FindControl("cmbjtype") as DropDownList).SelectedValue.ToString();
            string location = (GridView1.Rows[e.RowIndex].FindControl("txtlocation") as TextBox).Text.ToString();
            string exp = (GridView1.Rows[e.RowIndex].FindControl("txtexp") as TextBox).Text.ToString();
            string sal = (GridView1.Rows[e.RowIndex].FindControl("txtsal") as TextBox).Text.ToString();
            string des = (GridView1.Rows[e.RowIndex].FindControl("txtdes") as TextBox).Text.ToString();
            TextBox vv = GridView1.Rows[e.RowIndex].FindControl("vc") as TextBox;
            int vcs = Convert.ToInt32(vv.Text);
            //TextBox txtname = GridView1.Rows[e.RowIndex].FindControl("txtjtype") as TextBox;
            //   string aa = txtname.Text.ToString();
            // Response.Write(txtname.Text.ToString());

            con.Open();
            string qu = "update tblJobs set title='" + title + "' , Job_type='" + jtype + "' , Location='" + location + "' , Company = '" + company + "', Description='" + des + "', Req_experiance='" + exp + "' , Expected_salary='" + sal + "', vacancy='" + vcs + "'  where JobId = '" + index + "' ";
            SqlCommand cmd = new SqlCommand(qu, con);
            int res = Convert.ToInt32(cmd.ExecuteNonQuery());
            con.Close();
            GridView1.EditIndex = -1;
            getCandidate();
           }
    }
}
