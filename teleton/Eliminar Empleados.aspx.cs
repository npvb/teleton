using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Eliminar_Empleados : System.Web.UI.Page
{
    private BL.Empleados DEMPLOYEES = new BL.Empleados();

    protected void Page_Load(object sender, EventArgs e)
    {        
        try { 
            if(!this.IsPostBack){

                CargarEmpleados();
            }
        
        }catch(Exception er){
            Response.Write("<script>alert('Eliminar Empleados.aspx.cs: " + er.ToString() + "')</script>");
        }
    }

    protected void CargarEmpleados() {
        cmb_empleados.Items.Clear();
        cmb_empleados.DataSource = DEMPLOYEES.RetrieveEmployeesName();
        cmb_empleados.DataBind();
    }
    protected void btn_eliminar_Click(object sender, EventArgs e)
    {
        try
        {
            if (this.IsValid)
            {
                DEMPLOYEES.EliminarEmpleado(cmb_empleados.Text);
                CargarEmpleados();
            }
        }
        catch (Exception er) {
            Response.Write("<script>alert('Eliminar_Click/Eliminar Empleados.aspx.cs: " + er.ToString() + "')</script>");
        }
    }
}