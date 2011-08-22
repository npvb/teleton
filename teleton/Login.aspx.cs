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
    private BL.Security sec;
    private DropDownList CenterList;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //if (!Page.IsPostBack)
            //{
                sec = new BL.Security();
                CenterList = LoginUser.FindControl("CenterList") as DropDownList;
                CenterList.DataSource = sec.getCentros();
                CenterList.DataBind();
            //}
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
            this.Validate();
            
            if (this.IsValid)
            {
                if (sec.login(this.LoginUser.UserName, this.LoginUser.Password))
                {
                    sec = new BL.Security();
                    Session["Centro_id"] = CenterList.SelectedItem.Text;
                    Session["Centro_idNum"] = sec.getCentroId(Session["Centro_id"].ToString()).ToString();
                    Session["Permisos_usuario"] = sec.getPermisosUsuario(this.LoginUser.UserName);                    
                    //FormsAuthentication.RedirectFromLoginPage(this.LoginUser.UserName, this.LoginUser.RememberMeSet);
                    //FormsAuthentication.SetAuthCookie(this.LoginUser.UserName, this.LoginUser.RememberMeSet);
                    Session["loggedin"] = true;
                    Session["nombre_usuario"] = this.LoginUser.UserName;

                    Response.Redirect("Default.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
        }
    }
}