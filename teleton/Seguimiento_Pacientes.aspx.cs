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
        try
        {
            this.busqueda.Attributes["onclick"] = "openPopUp()";
        
            if (!this.IsPostBack)
            {
                LBLDATE.Text = segPacientes.GetFecha();
                CargarPatologias();
                //  CargarPrueba();
            }
        }
        catch (Exception er)
        {
            Response.Write("<script>alert('SeguimientoPacientes.aspx.cs: " + er.ToString() + "')</script>");

        }
    }

    public void CargarPatologias()
    {
        try
        {
            cmb_patologias.Items.Clear();
            cmb_patologias.DataSource = segPacientes.RetrievePatologias();
            cmb_patologias.DataBind();
        }
        catch (Exception er)
        {
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




    protected void busqueda_Click(object sender, ImageClickEventArgs e)
    {
        //String pageArgs ="Seguimiento_Paciente_Quicksearch.aspx";
        //LiteralControl lctl = new LiteralControl("<script type=\"text/javascript\"> function init(){" + String.Format("window.open('{0}', 'Busqueda de Expediente', 'width=1000, height=600');", pageArgs) + "} window.onload = init(); </script>");
        //LiteralControl lctrl = new LiteralControl("<script type=\"text/javascript\"> function OpenQuickSearch(){ var resultObejct = window.showModalDialog('Seguimiento_Paciente_Quicksearch.aspx'), '', dialogWidth:600px; dialogHeight:400px;') if (resultObject != null){document.getElementById('txtnumexp').value = resultObject.Url; } return false;}</script>");
        //Page.Header.Controls.Add(lctrl);
    }
 
}