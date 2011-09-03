using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL;

public partial class Seguimiento_Paciente_Quicksearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cleanBtn_Click(object sender, EventArgs e)
    {
        nombres_TB.Text = primerApellido_TB.Text = segundoApellido_TB.Text = cedula_TB.Text = "";
    }

    protected void acceptBtn_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedIndex >= 0)
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('" + GridView1.SelectedRow.Cells[5].Text + "')", true);
        else
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert(' Debe Elegir un paciente de la tabla. ')", true);
    }

    protected void searchBtn_Click(object sender, EventArgs e)
    {
        try
        {
            SeguimientoPacientes sp = new SeguimientoPacientes();
            sp.BusquedaRapida(nombres_TB.Text, primerApellido_TB.Text, segundoApellido_TB.Text, cedula_TB.Text);
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Seguimiento_Pacientes_Quicksearch.aspx.cs / acceptBtn_Click: " + ex.ToString() + "')</script>");
        }
    }
}