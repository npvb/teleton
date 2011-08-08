﻿using System;
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
                    //TODO: leer el codigo del centro
                    int ca = 1;

                    BL.Paciente paciente = new BL.Paciente();
                    if (paciente.leerPaciente(ca, expedienteID))
                    {
                        expediente.Text = paciente.Expediente.ToString();
                        cedula.Text = paciente.Cedula;
                        nombre.Text = paciente.Nombres + " " + paciente.PrimerApellido + " " + paciente.SegundoApellido;
                        sexo.Text = paciente.Sexo ? "Masculino" : "Femenino";
                        lugarNac.Text = paciente.LugarNac;
                        DateTime fNac = paciente.FechaNac;
                        fechaNac.Text = fNac.Year.ToString() + "-" +
                                       (fNac.Month.ToString().Length == 1 ? "0" : "") + fNac.Month.ToString() + "-" +
                                       (fNac.Day.ToString().Length == 1 ? "0" : "") + fNac.Day.ToString();
                        direccion.Text = paciente.Direccion;
                        DateTime fIng = paciente.FechaIngreso;
                        fechaIngreso.Text = fIng.Year.ToString() + "-" +
                                       (fIng.Month.ToString().Length == 1 ? "0" : "") + fIng.Month.ToString() + "-" +
                                       (fIng.Day.ToString().Length == 1 ? "0" : "") + fIng.Day.ToString();
                        estado.Text = paciente.Estado;
                    }

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