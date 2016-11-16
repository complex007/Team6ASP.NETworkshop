using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

public partial class PropertyList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (User.Identity.IsAuthenticated)
            {
                Button1.Visible = true;
                LinkButton linkBut = (LinkButton)Master.FindControl("LinkButton1");
                linkBut.Text = "Logout";
                
             }
          
        }
        //if(IsPostBack)
        //{
        //    Button1.Visible = false;
        //    LinkButton linkBut = (LinkButton)Master.FindControl("LinkButton1");
        //    linkBut.Text = "Login";
        //    Response.Redirect("Default.aspx");

        //}
    }

   

    protected void LinkButton1_Click(object sender, CommandEventArgs e)
    {

        string ID = e.CommandArgument.ToString();
        Response.Redirect("PropertyDetails.aspx?id=" + ID, true);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Privileged/MyProperty.aspx", true);
    }
}