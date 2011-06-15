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
    BL.Security sec;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            sec = new BL.Security();
            this.DropDownList1.DataSource = sec.getCentros();
            this.DropDownList1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
        }
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        try
        {
            /*string SH1Password = FormsAuthentication.HashPasswordForStoringInConfigFile(
                this.LoginUser.Password, "SHA1");*/

            if (sec.login(this.LoginUser.UserName, this.LoginUser.Password))
            {
                Session["Centro_id"] = DropDownList1.SelectedItem.Text;
                Session["Permisos_usuario"] = sec.getPermisosUsuario(sec.GetEmpId(this.LoginUser.UserName));
                FormsAuthentication.RedirectFromLoginPage(this.LoginUser.UserName, LoginUser.RememberMeSet);
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
        }
    }
}