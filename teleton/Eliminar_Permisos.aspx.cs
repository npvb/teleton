using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Eliminar_Permisos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!this.IsPostBack)
            {
                BL.Permiso per = new Permiso();
                permisos_CBList.DataSource = per.getPermisos();
                permisos_CBList.DataBind();
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Eliminar Permisos!");
        }
    }

    protected void acceptButton_Click(object sender, EventArgs e)
    {
        try
        {
            AdministradordeSistema admin = new AdministradordeSistema();
            int count = 0;

            foreach (ListItem it in permisos_CBList.Items)
            {     
                if (it.Selected == true)
                {
                    admin.eliminarPermiso(it.Text);
                    it.Selected = it.Enabled = false;
                    count++;
                }
            }            
            
            if (count > 1)
            {
                Response.Write("<script>alert('Permisos Eliminados')</script>");
            }
            else
            {
                Response.Write("<script>alert('Permiso Eliminado')</script>");
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Eliminar Permisos!");
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        /*foreach (ListItem it in permisos_CBList.Items)
        {
            bool flag = false;
            if (it.Selected)
            {
                flag = true;
                break;
            }
            args.IsValid = flag;
        }*/
    }
}