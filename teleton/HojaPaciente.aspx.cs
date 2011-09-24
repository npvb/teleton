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
        //Lista de permisos que el usuario logueado tiene
        List<String> listaPermisos = (List<String>)Session["Permisos_usuario"];

        bool encontroPermiso = false;

        foreach (String strPermiso in listaPermisos)
        {
            //Iteramos los permisos del usuario para comprobar que puede utilizar esta pagina
            if (strPermiso.Equals("pHojaPacie"))
            {
                encontroPermiso = true;
                break;
            }
        }

        if (!encontroPermiso)
        {
            //Si no tiene permiso redireccionamos
            Response.Redirect("Default.aspx");
        }
        try
        {
            if (!IsPostBack)
            {
                if (Request.QueryString.Count != 0)
                {

                    long expedienteID = Convert.ToInt64(Request.QueryString["Expediente"]);
                    int ca = int.Parse(Request.QueryString["CentroActual"].ToString());

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
            Response.Redirect("~/Error.aspx?ErrMsg=" + ex.Message, true);
            //Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
}