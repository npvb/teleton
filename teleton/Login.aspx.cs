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
    private BL.Security sec = new Security();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //if (!Page.IsPostBack)
            //{
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
            this.Validate();
            
            if (this.IsValid)
            {
                if (sec.login(UserName.Text, Password.Text))
                {
                    sec = new BL.Security();
                    Session["Centro_id"] = CenterList.SelectedItem.Text;
                    Session["Centro_idNum"] = sec.getCentroId(Session["Centro_id"].ToString()).ToString();
                    Session["Permisos_usuario"] = sec.getPermisosUsuario(UserName.Text);                   
                    Session["loggedin"] = true;
                    Session["nombre_usuario"] = UserName.Text;
                    
                    Response.Redirect("Default.aspx");                    
                }
                else
                {                    
                    FailureText.Text = "Error al intentar loginearse!!!";                 
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
        }
    }
}