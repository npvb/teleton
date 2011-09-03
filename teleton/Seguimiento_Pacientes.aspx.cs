using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Seguimiento_Pacientes : System.Web.UI.Page
{
    private BL.SeguimientoPacientes segPacientes = new BL.SeguimientoPacientes();
    protected void Page_Load(object sender, EventArgs e)
    {
        try{
            if (!this.IsPostBack)
            {
              LBLDATE.Text=segPacientes.GetFecha();
              CargarPatologias();
              CargarPrueba();

            }
        }
        catch (Exception er)
        {
            Response.Write("<script>alert('SeguimientoPacientes.aspx.cs: " + er.ToString() + "')</script>");

        }
    }

    public void CargarPatologias() {
        try {
            cmb_patologias.Items.Clear();
            cmb_patologias.DataSource = segPacientes.RetrievePatologias();
            cmb_patologias.DataBind();
        }catch(Exception er){
            Response.Write("<script>alert('SeguimientoPacientes.aspx.cs: " + er.ToString() + "')</script>");
        }
    }

    public void CargarPrueba()
    {
        try
        {
            GridViewSegPac.DataSource = segPacientes.RetrievePrueba();
            GridViewSegPac.DataBind();
        }
        catch (Exception er)
        {
            Response.Write("<script>alert('SeguimientoPacientes.aspx.cs: " + er.ToString() + "')</script>");
        }
    }

   


}