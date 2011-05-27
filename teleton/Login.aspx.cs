using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        /*string SH1Password = FormsAuthentication.HashPasswordForStoringInConfigFile(
            this.LoginUser.Password, "SHA1");*/

        BL.Login l = new BL.Login(this.LoginUser.UserName, this.LoginUser.Password);
        if (l.validateUser())
        {
            FormsAuthentication.RedirectFromLoginPage(this.LoginUser.UserName, LoginUser.RememberMeSet);
        }
    }
}