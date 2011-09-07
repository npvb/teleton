﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Eliminar_Roles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Lista de permisos que el usuario logueado tiene
        List<String> listaPermisos = (List<String>)Session["Permisos_usuario"];

        bool encontroPermiso = false;

        foreach (String strPermiso in listaPermisos)
        {
            //Iteramos los permisos del usuario para comprobar que puede utilizar esta pagina
            if (strPermiso.Equals("pEliminarRoles"))
            {
                encontroPermiso = true;
                break;
            }
        }

        if (!encontroPermiso)
        {
            //Si no tiene permiso redireccionamos
            Response.Redirect("Default.aspx");
        }

        try
        {
            if (!this.IsPostBack)
            {
                setCheckBoxes();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(" + ex.ToString() + " --Eliminar Roles.aspx.cs / Page_Load()" + ")</script>");
        }
    }
    protected void acceptButton_Click(object sender, EventArgs e)
    {
        try
        {
            if (this.IsValid)
            {
                AdministradordeSistema admin = new AdministradordeSistema();//tmp
                int count = 0;
                BL.Rol rl = new Rol();

                foreach (ListItem it in roles_CBList.Items)
                {
                    if (it.Selected)
                    {
                        long rolId = rl.getRolID((it.Text));
                        admin.eliminarRol(rolId);
                        count++;
                    }
                }

                if (count > 1)
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Roles Eliminados')", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Rol Eliminado')", true);
                }
                setCheckBoxes();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(" + ex.ToString() + " --Eliminar Roles.aspx.cs / acceptButton_Click()" + ")</script>");
        }
    }

    private void setCheckBoxes()
    {
        try
        {
            BL.Rol rl = new Rol();
            roles_CBList.DataSource = rl.getRolesDescripcion();
            roles_CBList.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(" + ex.ToString() + " --Eliminar Roles.aspx.cs / setCheckBoxes()" + ")</script>");
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        bool flag = false;
        foreach (ListItem it in roles_CBList.Items)
        {
            if (it.Selected)
            {
                flag = true;
                break;
            }
        }
        args.IsValid = flag;
    }
}