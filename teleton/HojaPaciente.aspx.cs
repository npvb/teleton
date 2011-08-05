using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HojaPaciente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Request.QueryString.Count != 0)
                {

                    long expedienteID = Convert.ToInt64(Request.QueryString["Expediente"]);

                    BL.Paciente paciente = new BL.Paciente();
                    paciente.getPaciente(expedienteID);
                    expediente.Text = paciente.Expediente.ToString();
                    cedula.Text = paciente.Cedula;
                    nombre.Text = paciente.Nombres + " "+ paciente.PrimerApellido + " " + paciente.SegundoApellido;
                    sexo.Text = paciente.Sexo ? "Masculino" : "Femenino";
                    lugarNac.Text = paciente.LugarNac;
                    fechaNac.Text = paciente.FechaNac;
                    direccion.Text= paciente.Direccion;
                    fechaIngreso.Text = paciente.FechaIngreso;
                    estado.Text = paciente.Estado;

                }
                else
                {
                    throw new Exception();
                }

                
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}