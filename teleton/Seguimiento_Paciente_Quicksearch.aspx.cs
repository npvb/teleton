﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL;

public partial class Seguimiento_Paciente_Quicksearch : System.Web.UI.Page
{
    SeguimientoPacientes sp = new SeguimientoPacientes();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SetFocus(searchBtn);
            if (!IsPostBack)
            {                
                Security sec = new Security();
                centrosPermitidos.DataSource = sec.getCentrosPermitidos(Session["nombre_usuario"].ToString());
                centrosPermitidos.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Seguimiento_Pacientes_Quicksearch.aspx.cs / Page_Load: " + ex.ToString() + "')</script>");
        }
    }

    protected void cleanBtn_Click(object sender, EventArgs e)
    {
        nombres_TB.Text = primerApellido_TB.Text = segundoApellido_TB.Text = cedula_TB.Text = "";
    }

    protected void acceptBtn_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedIndex >= 0)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('" + GridView1.SelectedRow.Cells[5].Text + "')", true);            
        }
        else
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert(' Debe Elegir un paciente de la tabla. ')", true);
    }

    protected void searchBtn_Click(object sender, EventArgs e)
    {
        try
        {
            this.Validate();


            if (this.IsValid)
            {
                Security sec = new Security();
                long centroSel = sec.getCentroId(centrosPermitidos.Text);

                GridView1.DataSource = sp.BusquedaRapida(nombres_TB.Text, primerApellido_TB.Text, segundoApellido_TB.Text, cedula_TB.Text, centroSel);
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Seguimiento_Pacientes_Quicksearch.aspx.cs / acceptBtn_Click: " + ex.ToString() + "')</script>");
        }
    }
    
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (nombres_TB.Text == "" &&
            primerApellido_TB.Text == "" &&
            segundoApellido_TB.Text == "" &&
            cedula_TB.Text == "")
            args.IsValid = false;
        else
            args.IsValid = true;
    }
}