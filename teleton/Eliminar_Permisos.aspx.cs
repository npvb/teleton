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
                setCheckBoxes();
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
            if (this.IsValid)
            {
                AdministradordeSistema admin = new AdministradordeSistema();
                int count = 0;

                foreach (ListItem it in permisos_CBList.Items)
                {
                    if (it.Selected == true)
                    {
                        admin.eliminarPermiso(it.Text);
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
                setCheckBoxes();
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Eliminar Permisos!");
        }
    }

    private void setCheckBoxes()
    {
        BL.Permiso per = new Permiso();
        permisos_CBList.DataSource = per.getPermisosID();
        permisos_CBList.DataBind();
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        bool flag = false;
        foreach (ListItem it in permisos_CBList.Items)
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