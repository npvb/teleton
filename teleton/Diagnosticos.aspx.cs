﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class Diagnosticos : System.Web.UI.Page
{
    private BL.Patologia PAT= new BL.Patologia();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        try{
        if (!this.IsPostBack) {
            //cargarDiagnostico();
        } 
        }catch(Exception er){
           Response.Write("<script>alert('Patologias.aspx.cs: " + er.ToString() + "')</script>");
        
        }
    }

    protected void cargarDiagnostico()
    {
        try
        {
            GridView1.DataSource = PAT.CargarDiagnostico();
            GridView1.DataBind();
        }
        catch (Exception er)
        {
            Response.Write("<script>alert('Diagnosticos.aspx.cs/CargarDiagnosticos: " + er.ToString() + "')</script>");
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
       try
        {
            if (this.IsValid)
            {
                if (this.IsPostBack)
                {
                    PAT.GuardarPatologia(0, diagnostico_txt.Text);
                    GridView1.DataBind();
                    diagnostico_txt.Text = "";
                }
            }
        }
        catch (Exception)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('ERROR')", true);
            
        }
    }

  
}