using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        IIdentity id = User.Identity;
        LinkButton linkBut = (LinkButton)Master.FindControl("LinkButton1");
        linkBut.Text = "Logout";
        
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        
    }
}