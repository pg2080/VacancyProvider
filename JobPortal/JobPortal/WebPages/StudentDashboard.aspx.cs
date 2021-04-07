using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.WebPages
{
    public partial class Student1 : System.Web.UI.Page
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
                this.MasterPageFile = "Student.Master";
                string aa = Session["email"].ToString();
            }

        }
    }
}