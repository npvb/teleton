using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Crear_Roles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!this.IsPostBack)
            {
                BL.Permiso per = new Permiso();
                permisos_CBList.DataSource = per.getPermisosID();
                permisos_CBList.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(" + ex.ToString() + " --Crear_Roles.aspx.cs /  Page_Load()" + ")</script>");
        }
    }

    protected void acceptButton_Click(object sender, EventArgs e)
    {
        try
        {
            if (this.IsValid)
            {
                List<string> persAdded = new List<string>();
                
                foreach (ListItem it in permisos_CBList.Items)
                {
                    if (it.Selected == true)
                    {
                        persAdded.Add(it.Text);
                        it.Selected = false;
                    }
                }

                AdministradordeSistema admin = new AdministradordeSistema();//tmp-> deberia ser quien este logeado!
                admin.crearRol(descripcion_TB.Text, persAdded);

                Response.Write("<script>alert('Rol Guardado')</script>");
                LimpiarPage();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(" + ex.ToString() + " --Crear_Roles.aspx.cs /  acceptButton_Click()" + ")</script>");     
        }
    }

    void LimpiarPage()
    {
        descripcion_TB.Text = "";
    }
}