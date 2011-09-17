﻿using System;
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
        //Lista de permisos que el usuario logueado tiene
        List<String> listaPermisos = (List<String>)Session["Permisos_usuario"];

        bool encontroPermiso = false;

        foreach (String strPermiso in listaPermisos)
        {
            //Iteramos los permisos del usuario para comprobar que puede utilizar esta pagina
            if (strPermiso.Equals("pSeguimien"))
            {
                encontroPermiso = true;
                break;
            }
        }

        if (!encontroPermiso)
        {
            //Si no tiene permiso redireccionamos
            Response.Write("<script>alert('Usted no posee permisos suficientes para accesar a este recurso')</script>");
            Response.Redirect("Default.aspx");
        }
        
        this.busqueda.Attributes["onclick"] = "openPopUp()";
        
        try
        {
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

    public void LoadGrid()
    {
       
        GridViewSegPac.DataSource = segPacientes.RetrievePacientesDiario();
        GridViewSegPac.DataBind();       
    }

    public void CargarPatologias() {
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
                  Label1.Visible = false;
                  GridViewSegPac.DataSource = segPacientes.BusquedaporRangoFecha(fechainit, fechafin);
                  GridViewSegPac.DataBind();
              }
         
         }
         catch (Exception er)
         {
             Response.Write("<script>alert('SeguimientoPacientes.aspx.cs/Refrescar: " + er.ToString() + "')</script>");

         }
     
   }


     protected void btnguardarseguimiento_Click(object sender, EventArgs e)
     {
         try
         {

             if (this.IsPostBack)
             {
                 if (this.IsValid)
                 {

                     string fecha1 = txtdateinit.Text;
                     string fecha2 = txtdatefini.Text;

                     if (fecha1 != segPacientes.GetFecha() || fecha2 != segPacientes.GetFecha())
                     {

                         Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('No Puede Guardar Pacientes en una Fecha Diferente a "+segPacientes.GetFecha()+"')", true);
                     }
                     else {

                    // int centroid = (int)long.Parse(Session["Centro_idNum"].ToString());
                     string empleado = Session["nombre_usuario"].ToString();
                     int centroid = 1;
                     int exped = (int)long.Parse(txtnumexp.Text);


                     segPacientes.GuardarSeguimientoPacientes(0, centroid, exped, empleado, cmb_patologias.Text, txtobser.Text);
                     Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Paciente Guardado Exitosamente')", true);
                     txtnumexp.Text = "";
                     txtobser.Text = "";
                     LoadGrid();
                     }
                 }
             }


         }
         catch (Exception er)
         {
             Response.Write("<script>alert('SeguimientoPacientes.aspx.cs/GuardarSeguimientoPaciente: " + er.ToString() + "')</script>");
         }
     }
    
    
     protected void GridViewSegPac_PageIndexChanging(object sender, GridViewPageEventArgs e)
     {
         try
         {
             GridViewSegPac.PageIndex = e.NewPageIndex;
             LoadGrid();
         }catch(Exception err){
             Response.Write("<script>alert('SeguimientoPacientes.aspx.cs/PageIndexChanging: " + err.ToString() + "')</script>");
         
         }
     }   
}