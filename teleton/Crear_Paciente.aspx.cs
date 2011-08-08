using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Crear_Paciente : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            cleanPage();
        }
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
        btnPrint.Enabled = false;

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
                    //TODO: hacer que la variable de session Centro_id almacene el codigo del centro no el nombre
                    int ca = 1;//= int.Parse(Session["Centro_id"]);

                    int yy = int.Parse(txtFechaNacimiento.Text.Substring(0, 4));
                    int mm = int.Parse(txtFechaNacimiento.Text.Substring(5, 2));
                    int dd = int.Parse(txtFechaNacimiento.Text.Substring(8, 2));
                    DateTime fechaNac = new DateTime(yy, mm, dd);

                    yy = int.Parse(txtFechaIngreso.Text.Substring(0, 4));
                    mm = int.Parse(txtFechaIngreso.Text.Substring(5, 2));
                    dd = int.Parse(txtFechaIngreso.Text.Substring(8, 2));
                    DateTime fechaIng = new DateTime(yy, mm, dd);

                    BL.Paciente pac = new BL.Paciente();
                    pac.asignarDatos(ca, txtNombres.Text, txtPrimerApellido.Text, txtSegundoApellido.Text,
                                              fechaNac, rdMasculino.Selected, fechaIng,
                                              txtCedula.Text, txtDireccion.Text, txtLugarNacimiento.Text,
                                              ddEstado.SelectedItem.Text);
                    if (!pac.exist())
                    {
                        pac.guardarPaciente();
                        Session["expediente"] = pac.Expediente;
                        //TODO: revisar esto de los mensajes
                        //Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('La data del paciente ha sido guardada exitosamente con expediente:"+ _paciente.Expediente+ " ')", true);
                        Response.Write("<script>alert('La data del paciente ha sido guardada exitosamente con expediente: " + pac.Expediente + "')</script>");
                        btnPrint.Enabled = true;
                    }
                    else
                    {
                        Response.Write("<script>alert('no se ha guardado por que ya existe un registro')</script>");
                    }
                }
                catch (Exception err)
                {
                    Response.Write("<script>alert('" + err.Message + "')</script>");
                }
            }
        }
    }
    protected void btnClean_Click(object sender, EventArgs e)
    {
        cleanPage();
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        int exp = int.Parse(Session["expediente"].ToString());
        String pageArgs = String.Format("HojaPaciente.aspx?Expediente={0}", exp);
        LiteralControl lctl = new LiteralControl("<script type=\"text/javascript\"> function init(){" + String.Format("window.open('{0}', 'Información del Paciente', 'width=1000, height=600');", pageArgs) + "} window.onload = init(); </script>");
        Page.Header.Controls.Add(lctl);
    }
}