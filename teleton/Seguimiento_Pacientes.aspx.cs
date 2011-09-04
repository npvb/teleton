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

                InicializarSeguimientoPacientes();

            }
        }
        catch (Exception er)
        {
            Response.Write("<script>alert('SeguimientoPacientes.aspx.cs: " + er.ToString() + "')</script>");

        }
    }
    public void InicializarSeguimientoPacientes() {
        LBLDATE.Text = segPacientes.GetFecha();
        CargarPatologias();
        txtdateinit.Text = segPacientes.GetFecha();
        txtdatefini.Text = segPacientes.GetFecha();
        GridViewSegPac.DataSource = segPacientes.RetrievePacientesDiario();
        GridViewSegPac.DataBind();

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

     protected void Refrescar_Click1(object sender, ImageClickEventArgs e)
     {
         
         try
         {
              DateTime fechainit = DateTime.Parse(txtdateinit.Text);
              DateTime fechafin = DateTime.Parse(txtdatefini.Text);
         
              if (fechainit.Year > fechafin.Year || fechainit.Month > fechafin.Month || fechainit.Day > fechafin.Day)
              {
                  Label1.Visible = true;

              }
              else
              {
                  GridViewSegPac.DataSource = segPacientes.BusquedaporRangoFecha(fechainit, fechafin);
                  GridViewSegPac.DataBind();
              }
         
         }
         catch (Exception er)
         {
             Response.Write("<script>alert('SeguimientoPacientes.aspx.cs/Refrescar: " + er.ToString() + "')</script>");

         }
     
   }
   
     
}