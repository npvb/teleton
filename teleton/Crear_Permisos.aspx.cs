using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Crear_Permisos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {        
    }

    void LimpiarPage()
    {
        nombrePermiso_TB.Text = descripcion_TB.Text = "";
    }

    protected void saveButton_Click(object sender, EventArgs e)
    {
        try
        {
            if (this.IsValid)
            {
                AdministradordeSistema admin = new AdministradordeSistema();
                admin.crearPermiso(nombrePermiso_TB.Text, descripcion_TB.Text);
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Permiso Guardado')",true);
                LimpiarPage();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(" + ex.ToString() + " --Crear_Permisos.aspx.cs / SaveButton_Click()"+")</script>");          
        }
    }
}