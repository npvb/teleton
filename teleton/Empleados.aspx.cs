using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Empleados : System.Web.UI.Page
{
    private BL.Empleados EMPLOYEES = new BL.Empleados();
   

    protected void LimpiarPage()
    {
        txb_firstname.Text = "";
        txb_nombreemp.Text = "";
        txb_secondlastname.Text = "";
        txb_firstname.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!this.IsPostBack)
            {

                cmb_position.Items.Clear();
                cmb_position.DataSource = EMPLOYEES.RetrievePositionName();
                cmb_position.DataBind();

            }
        }
        catch (Exception er)
        {
            Response.Write("<script>alert('Empleados.aspx.cs: " + er.ToString() + "')</script>");
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        try
        {
            if (this.IsPostBack)
            {
                if (this.IsValid)
                {
                    EMPLOYEES.GuardarEmpleado(Convert.ToInt32(txb_id.Text), txb_nombreemp.Text, txb_firstname.Text, txb_secondlastname.Text, cmb_position.Text);
                    LimpiarPage();
                }
                else
                {

                }
            }
        }
        catch (Exception er)
        {
            Response.Write("<script>alert('Empleados.aspx.cs/btn_save_Click: " + er.ToString() + "')</script>");
        }
    }

    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        LimpiarPage();
    }
}