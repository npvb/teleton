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
        try
        {
            if (!this.IsPostBack)
            {
                setCheckBoxes();
            }
        }
        catch (Exception ex)
        {
            throw new Exception(e.ToString() + " --Eliminar Roles!");
        }
    }
    protected void acceptButton_Click(object sender, EventArgs e)
    {
        try
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
                Response.Write("<script>alert('Roles Eliminados')</script>");
            }
            else
            {
                Response.Write("<script>alert('Rol Eliminado')</script>");
            }
            setCheckBoxes();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Eliminar Roles!");
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
            throw new Exception(ex.ToString() + " --Eliminar Roles!");
        }
    }
}