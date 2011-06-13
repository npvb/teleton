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
    BL.Security log;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            log = new BL.Security();
            this.DropDownList1.DataSource = this.log.getCentros();
            this.DropDownList1.DataBind();
        }
        catch (Exception ex)
        {
            //this.LoginUser.err
        }
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        /*string SH1Password = FormsAuthentication.HashPasswordForStoringInConfigFile(
            this.LoginUser.Password, "SHA1");*/

        if (log.login(this.LoginUser.UserName, this.LoginUser.Password))
        {
            Session["Centro_id"] = this.DropDownList1.SelectedItem.Text;
            //Session["Permisos_usuarios"] = log.getPermisosUsuario(idUser);
            FormsAuthentication.RedirectFromLoginPage(this.LoginUser.UserName, LoginUser.RememberMeSet);
        }    
    }
}