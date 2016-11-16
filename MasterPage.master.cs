using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "Login")
            Response.Redirect("Login.aspx");
        else if (LinkButton1.Text == "Logout")
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("~/Default.aspx");
        }
            
        


         
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Register.aspx");
    }
}
