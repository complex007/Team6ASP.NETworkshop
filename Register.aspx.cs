using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        string username = CreateUserWizard1.UserName;
        string password = CreateUserWizard1.Password;
        Roles.AddUserToRole(username, "agent");
        CreateUserWizardStep step1 = (CreateUserWizardStep)CreateUserWizard1.FindControl("Step1");
        TextBox Email = (TextBox)step1.ContentTemplateContainer.FindControl("Email");
        TextBox PhoneNumber = (TextBox)step1.ContentTemplateContainer.FindControl("PhoneNumber");
        ProfileCommon profile = Profile.GetProfile(username); //get profile of the user being created and assign it to the profile
        profile.Email = Email.Text;
        profile.PhoneNumber = PhoneNumber.Text;
        profile.Save();

        //whenever browser shows cookie, it will be authenticated. enable autologin after creating new user
        if (Membership.ValidateUser(username, password))
        {
            FormsAuthentication.SetAuthCookie(username, false);
            Response.Redirect("~/priv/Default.aspx");
        }

    }
}