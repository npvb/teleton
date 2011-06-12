using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Editar_Empleados : System.Web.UI.Page
{
    private BL.Empleados EMPLOYEE = new BL.Empleados();

    protected void Page_Load(object sender, EventArgs e)
    {
        try{
            if (!this.IsPostBack)
            {
                //carga empleados
                cmb_usuarios.Items.Clear();
                cmb_usuarios.DataSource = EMPLOYEE.RetrieveEmployeesName();
                cmb_usuarios.DataBind();


                //carga puestos de empleados
                cmb_puesto.Items.Clear();
                cmb_puesto.DataSource = EMPLOYEE.RetrievePositionName();
                cmb_puesto.DataBind();
            }
            }catch(Exception er){
            Response.Write("<script>alert('Editar Empleados.aspx.cs: " + er.ToString() + "')</script>");
            
            }
        
        }

    protected void LimpiarPage() {
        txt_username.Text = "";
        txt_lastname.Text = "";
        txt_secondlastname.Text = "";
    
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        try
        {
            if (this.IsValid)
            {
                EMPLOYEE.EditarEmpleado(cmb_usuarios.Text,txt_username.Text, txt_lastname.Text, txt_secondlastname.Text, cmb_puesto.Text);
                Response.Write("<script>alert('Empleado Editado Correctamente')</script>");
                  LimpiarPage();

            }
            else { 
                       
            }

       }
        catch (Exception er) {
           // Response.Write("<script>alert('Guardar_Click/Editar Empleados.aspx.cs: " + er.ToString() + "')</script>");
            throw new Exception(er.ToString());
        }
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        LimpiarPage();
    }
}
