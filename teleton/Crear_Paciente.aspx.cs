using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Crear_Paciente : System.Web.UI.Page
{
    private BL.Paciente _paciente = new BL.Paciente();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            cleanPage();
        }
    }

   /* private bool isTheInfoComplete()
    {
        return txtFechaIngreso.Text.Length > 0 &&
               txtPrimerApellido.Text.Length > 0 &&
               txtSegundoApellido.Text.Length > 0 &&
               txtNombres.Text.Length > 0 &&
               txtFechaNacimiento.Text.Length > 0;
    }*/

    private void cleanPage()
    {
        string fecha = DateTime.Now.Year.ToString();
        fecha = fecha + "-" + (DateTime.Now.Month < 10 ? "0" : "") + DateTime.Now.Month.ToString();
        fecha = fecha + "-" + (DateTime.Now.Day < 10 ? "0" : "") + DateTime.Now.Day.ToString();
        txtFechaIngreso.Text = fecha;
        txtCedula.Text = "";
        txtDireccion.Text = "";
        txtFechaNacimiento.Text = "";
        txtLugarNacimiento.Text = "";
        txtNombres.Text = "";
        txtPrimerApellido.Text = "";
        txtSegundoApellido.Text = "";
        rdFemenino.Selected = false;
        rdMasculino.Selected = true;
        ddEstado.SelectedIndex = 0;

    }

    protected void btIngresar_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            //Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('"+txtFechaIngreso.Text+"')", true);
            if (this.IsValid)
            {
                try
                {

                    int ca = 1;//= int.Parse(Session["Centro_id"]); 
                    _paciente.guardarPaciente(ca,txtNombres.Text, txtPrimerApellido.Text, txtSegundoApellido.Text,
                                              txtFechaNacimiento.Text, rdMasculino.Selected, txtFechaIngreso.Text,
                                              txtCedula.Text, txtDireccion.Text, txtLugarNacimiento.Text,
                                              ddEstado.SelectedItem.Text);

                    String pageArgs = String.Format("HojaPaciente.aspx?Expediente={0}", _paciente.Expediente);
                    LiteralControl lctl = new LiteralControl("<script type=\"text/javascript\"> function init(){" + String.Format("window.open('{0}', 'Información del Paciente', 'width=1000, height=600');", pageArgs) + "} window.onload = init(); </script>");
                    Page.Header.Controls.Add(lctl);

                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('La data del paciente ha sido guardada exitosamente con expediente:"+ _paciente.Expediente+ " ')", true);
                    
                    cleanPage();
                }
                catch (Exception err)
                {
                    Response.Write("<script>alert('" + err.Message + "')</script>");
                }
            }
            else
            {
              //  Response.Write("<script>alert('Uno de los Campos necesario esta Vacio')</script>");
            }
        }
    }
}