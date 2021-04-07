using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.WebPages
{
    public partial class RegisterUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            JobPortalDBConnection.Isreg = true;
          //  txtFname.Attributes.add("onblur", "javascript:funBlur();");
            //txtFname.Attributes.Add("onblur","javascript:fnBlur()");
            
        }
    }
}