using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PropertyDetails : System.Web.UI.Page
{
    Team6PropertyDBEntities MyProperties = new Team6PropertyDBEntities();

    Property NewProperty = new Property();
    string id = "";
    string buttonName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            LinkButton linkBut = (LinkButton)Master.FindControl("LinkButton1");
            linkBut.Text = "Logout";
        }

        if (Request.QueryString["id"] != null)
            id = Request.QueryString["id"];
        if (Request.QueryString["buttonName"] != null)
            buttonName = Request.QueryString["buttonName"];
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null && Request.QueryString["buttonName"] != null)
            {
                //id = Request.QueryString["id"];
                //buttonName = Request.QueryString["buttonName"];

                if (buttonName.Equals("Details"))
                {
                    ShowProperty(Convert.ToInt32(id));
                    DisplayButton();
                }

                else if (buttonName.Equals("Update"))
                {
                    Button1.Visible = false;
                    Button6.Visible = false;

                    ShowProperty(Convert.ToInt32(id));
                }

            }
            else
            {
                Button3.Visible = false;
                Button6.Visible = false;
            }
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SaveProperty();

        Response.Redirect("~/Privileged/MyProperty.aspx");
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {

        string filename = FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("~/T6Images/") + filename);
        Image1.ImageUrl = "~/T6Images/" + FileUpload1.FileName;
    
        RequiredFieldValidator3.Enabled = false;


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Image1.ImageUrl != null)
        {
            RequiredFieldValidator3.Enabled = false;
        }
        UpdateProperty();
        Response.Redirect("~/Privileged/MyProperty.aspx");
    }
    protected void ShowProperty(int id)
    {
        NewProperty = MyProperties.Properties.Where(x => x.PropertyID == id).FirstOrDefault();
        TextBox1.Text = NewProperty.UserName;
        TextBox2.Text = NewProperty.PropertyName;
        Image1.ImageUrl = NewProperty.ImgPath;
        TextBox4.Text = Convert.ToString(NewProperty.Price);
        RadioButtonList1.SelectedValue = NewProperty.PType;
        TextBox6.Text = Convert.ToString(NewProperty.Size);
        TextBox7.Text = NewProperty.PAddress;
        TextBox9.Text = NewProperty.PDescription;
    }
    protected void SaveProperty()
    {
        NewProperty.UserName = TextBox1.Text;
        NewProperty.PropertyName = TextBox2.Text;
        NewProperty.ImgPath = Image1.ImageUrl;
        NewProperty.Price = Convert.ToDouble(TextBox4.Text);
        NewProperty.PType = RadioButtonList1.SelectedItem.Value;
        NewProperty.Size = Convert.ToDouble(TextBox6.Text);
        NewProperty.PAddress = TextBox7.Text;
        NewProperty.PDescription = TextBox9.Text;
        NewProperty.ListDate = DateTime.Now;
        MyProperties.Properties.Add(NewProperty);
        MyProperties.SaveChanges();
    }
    protected void UpdateProperty()
    {
        int Propertyid = Convert.ToInt32(id);
        NewProperty = MyProperties.Properties.Where(x => x.PropertyID==Propertyid).FirstOrDefault();
        NewProperty.UserName = TextBox1.Text;
        NewProperty.PropertyName = TextBox2.Text;
        NewProperty.ImgPath = Image1.ImageUrl;
        NewProperty.Price = Convert.ToDouble(TextBox4.Text);
        NewProperty.PType = RadioButtonList1.SelectedItem.Value;
        NewProperty.Size = Convert.ToDouble(TextBox6.Text);
        NewProperty.PAddress = TextBox7.Text;
        NewProperty.PDescription = TextBox9.Text;
        NewProperty.ListDate = DateTime.Now;
        MyProperties.SaveChanges();
    }
    protected void DisplayButton()
    {
        RequiredFieldValidator3.Enabled = false;
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox4.Enabled = false;
        RadioButtonList1.Enabled = false;
        TextBox6.Enabled = false;
        TextBox7.Enabled = false;
        TextBox9.Enabled = false;
        FileUpload1.Visible = false;
        Button1.Visible = false;
        Button3.Visible = false;
        Button5.Visible = false;
        Button4.Visible = false;


    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        if (buttonName.Equals("Update"))
            Response.Redirect("~/Privileged/MyProperty.aspx");
        else
            Response.Redirect("Default.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (buttonName.Equals("Update"))
            Response.Redirect("~/Privileged/MyProperty.aspx");
        else
            Response.Redirect("Default.aspx");
    }
}