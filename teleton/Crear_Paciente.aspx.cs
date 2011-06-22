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

    private bool isTheInfoComplete()
    {
        return txtFechaIngreso.Text.Length > 0 &&
               txtPrimerApellido.Text.Length > 0 &&
               txtSegundoApellido.Text.Length > 0 &&
               txtNombres.Text.Length > 0 &&
               txtFechaNacimiento.Text.Length > 0;
    }

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
            if (this.IsValid)
            {
                try
                {

                    int ca = 1;//= int.Parse(Session["Centro_id"]); 
                    _paciente.guardarPaciente(ca,txtNombres.Text, txtPrimerApellido.Text, txtSegundoApellido.Text,
                                              txtFechaNacimiento.Text, rdMasculino.Selected, txtFechaIngreso.Text,
                                              txtCedula.Text, txtDireccion.Text, txtLugarNacimiento.Text,
                                              ddEstado.SelectedItem.Text);

                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('la data del paciente ha sido guardada exitosamente')", true);
                    cleanPage();
                }
                catch (Exception err)
                {
                    Response.Write("<script>alert('" + err.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Uno de los Campos necesario esta Vacio')</script>");
            }
        }
    }
}