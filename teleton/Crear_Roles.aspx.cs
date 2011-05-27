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
            BL.Permiso per = new Permiso();
            permisos_CBList.DataSource = per.getPermisos();
            permisos_CBList.DataBind();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Crear_Roles.aspx!!!");
        }
    }
    protected void acceptButton_Click(object sender, EventArgs e)
    {
        try
        {
            List<string> persAdded = new List<string>();

            foreach (ListItem it in permisos_CBList.Items)
            {
                if (it.Selected)
                    persAdded.Add(it.Text);
            }

            AdministradordeSistema admin = new AdministradordeSistema();//tmp-> deberia ser quien este logeado!
            admin.crearRol(descripcion_TB.Text, persAdded);

            Response.Write("<script>alert('Rol Guardado')</script>");
            LimpiarPage();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Crear_Roles.aspx");
        }
    }

    void LimpiarPage()
    {
        descripcion_TB.Text = "";
    }
}