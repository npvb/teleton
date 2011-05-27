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

    private bool IsTheInfoComplete()
    {
        return txb_firstname.Text.Length > 0 && txb_nombreemp.Text.Length > 0 && txb_secondlastname.Text.Length > 0 && cmb_position.Text.Length>0;
    }

    protected void LimpiarPage() {
        txb_firstname.Text = "";
        txb_nombreemp.Text = "";
        txb_secondlastname.Text = "";
        txb_firstname.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack) {

            cmb_position.Items.Clear();
            cmb_position.DataSource = EMPLOYEES.RetrievePositionName();
            cmb_position.DataBind();
           
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            if (IsTheInfoComplete())
            {
                EMPLOYEES.GuardarEmpleado(Convert.ToInt32(txb_id.Text), txb_nombreemp.Text,txb_firstname.Text,txb_secondlastname.Text, cmb_position.Text);
                LimpiarPage();
            }
            else
            {

                Response.Write("<script>alert('Uno de los Campos esta Vacio')</script>");
            }
        }
    }
}