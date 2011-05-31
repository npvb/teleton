using System;
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
                BL.Rol rl = new Rol();
                roles_CBList.DataSource = rl.getRoles();
                roles_CBList.DataBind();
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

            foreach (ListItem it in roles_CBList.Items)
            {
                if (it.Selected)
                {
                    admin.eliminarRol(long.Parse(it.Text));
                    it.Enabled = it.Selected = false;
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
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Eliminar Roles!");
        }
    }
}