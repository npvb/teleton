using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Crear_Usuarios : System.Web.UI.Page
{
    private BL.Usuarios USER = new BL.Usuarios();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack) 
        {
            CargarEmpleados();
            CargarRoles();              
        }
    }
    protected void btn_leftuserrol_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            if (lb_sourcerols.SelectedIndex > -1)
            {

                lb_userrols.Items.Add(lb_sourcerols.SelectedValue.ToString());
                lb_sourcerols.Items.RemoveAt(lb_sourcerols.SelectedIndex);
            }
            else
            {
                Response.Write("<script>alert('No Tiene Ningun Rol Seleccionado Para el Usuario')</script>");

            }
        }
    }

    protected void CargarEmpleados(){
            cmb_empleados.Items.Clear();
            cmb_empleados.DataSource = USER.RetrieveEmployees();
            cmb_empleados.DataBind();   
    
    }

    protected void CargarRoles()
    {
        lb_sourcerols.Items.Clear();
        lb_sourcerols.DataSource = USER.RetrieveRol();
        lb_sourcerols.DataBind();

    }

    protected void btn_rightuserrol_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            if (lb_userrols.SelectedIndex > -1)
            {

                lb_sourcerols.Items.Add(lb_userrols.SelectedValue.ToString());
                lb_userrols.Items.RemoveAt(lb_userrols.SelectedIndex);
            }
            else
            {
                Response.Write("<script>alert('No Tiene Ningun Rol Seleccionado Para el Usuario')</script>");

            }
        }
    }

    
    protected void btn_GuardarUsuario_Click(object sender, EventArgs e)
    {
        List<string> RolUsuario=new List<string>();
        if (txt_username.Text.Length > 0 && txt_password.Text.Length > 0)
        {
            if (lb_userrols.Items.Count>0)
            {

                for (int x = 0; x < lb_userrols.Items.Count; x++) {
                    
                    RolUsuario.Add(lb_userrols.Items[x].ToString());
                }

                USER.GuardarUsuario(txt_username.Text, txt_password.Text, cmb_empleados.Text, RolUsuario);
                Response.Write("<script>alert('Usuario Guardado!')</script>");
                LimpiarPagina();


            }
            else {

               Response.Write("<script>alert('El Usuario debe Tener al Menos un Rol')</script>");

             }

        }
        else {

            Response.Write("<script>alert('Debe Llenar Todos Los Campos')</script>");
        
        }
    }

    protected void LimpiarPagina() {

        lb_userrols.Items.Clear();
        txt_password.Text = "";
        txt_username.Text = "";
        CargarEmpleados();
        CargarRoles();
    
    
    }
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        LimpiarPagina();
    }
    
}