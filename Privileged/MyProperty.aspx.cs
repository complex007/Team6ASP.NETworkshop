using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

public partial class Privileged_MyProperty : System.Web.UI.Page
{
    IIdentity id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = User.Identity;
        Label1.Text = id.Name;
        if (User.IsInRole("admin"))
        {
            GridView1.DataSourceID = "SqlDataSource2";
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.DataBind();
        }
        LinkButton linkBut = (LinkButton)Master.FindControl("LinkButton1");
        linkBut.Text = "Logout";

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PropertyDetails.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Default.aspx");
    }
}