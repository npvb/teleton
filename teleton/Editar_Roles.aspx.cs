using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Editar_Roles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!this.IsPostBack)
            {
                BL.Rol rl = new Rol();
                descripciones_DDList.DataSource = rl.getRolesDescripcion();
                descripciones_DDList.DataBind();

                setCheckBoxes();
            }
        } 
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Editar Roles!");
        }
    }

    protected void descripciones_DDList_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            setCheckBoxes();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Editar Roles!");
        }

    }

    private void setCheckBoxes()
    {
        try
        {
            BL.Rol rl = new Rol();
            List<string> pers = rl.getRolPermisos(descripciones_DDList.SelectedItem.Text);
            permisos_CBList.DataSource = pers;
            permisos_CBList.DataBind();

            foreach (ListItem it in permisos_CBList.Items)            
                it.Selected = true;

            BL.Permiso per = new Permiso();
            List<string> otherPers = new List<string>();
            List<string> allPers = per.getPermisosID();

            foreach (string pr in allPers)
            {
                bool flag = false;
                foreach (string myper in pers)
                {
                    if (pr == myper)
                    {
                        flag = true;
                        break;
                    }
                }
                if (!flag)
                    otherPers.Add(pr);
            }
            otrosPermisos_CBList.DataSource = otherPers;
            otrosPermisos_CBList.DataBind();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Editar Roles!");
        }
    }

    protected void acceptButton_Click(object sender, EventArgs e)
    {
        try
        {
            List<string> revokes = new List<string>();
            bool flag = false;

            foreach (ListItem it in permisos_CBList.Items)
            {
                if (it.Selected == false)
                {
                    revokes.Add(it.Text);
                    flag = true;
                }
            }

            List<string> grants = new List<string>();

            foreach (ListItem it in otrosPermisos_CBList.Items)
            {
                if (it.Selected == true)
                {
                    grants.Add(it.Text);
                    flag = true;
                }
            }

            if (flag)
            {
                BL.Rol rl = new Rol();
                long rolId = rl.getRolID(descripciones_DDList.SelectedItem.Text);
                AdministradordeSistema admin = new AdministradordeSistema();
                admin.editarRol(rolId, descripciones_DDList.SelectedItem.Text, grants, revokes);
                Response.Write("<script>alert('Rol Editado!')</script>");
                setCheckBoxes();
            }
            else
            {
                Response.Write("<script>alert('Rol No Editado!')</script>");
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.ToString() + " --Editar Roles!");
        }
    }
}