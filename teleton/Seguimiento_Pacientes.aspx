<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Seguimiento_Pacientes.aspx.cs" Inherits="Seguimiento_Pacientes" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
       
    </style>
  
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="content3">
        <div id = "titulo">
            <h1>Seguimiento de Pacientes</h1> 
            <h2><span class="h3">Fecha de Hoy:</span> 
                <asp:Label ID="LBLDATE" CssClass="h3" runat="server"></asp:Label>
            </h2>
            
        </div>
        <div id="navcenter">
        <fieldset id="Seguimiento">
        <legend> Ingreso de Pacientes</legend>

            <asp:Label ID="LblNumExp" CssClass="labelD" runat="server" Text="Nº de Expediente:"></asp:Label>
            <asp:TextBox ID="txtnumexp" runat="server" CssClass="txtbx_labelD"></asp:TextBox>

            <asp:ImageButton ID="busqueda" CssClass="botonbusquedarapida" ImageUrl="~/images/Search.png" 
                runat="server" />

            &nbsp;<asp:Label ID="LblPat" CssClass="labelD" runat="server" Text="Patologia:"></asp:Label>
            <asp:DropDownList ID="cmb_patologias" CssClass="cmbpatologias" runat="server">
            </asp:DropDownList>
             <asp:Label ID="lbobser" CssClass="labelD" runat="server" Text="Observacion:"></asp:Label>
            <asp:TextBox ID="txtobser" runat="server" CssClass="txtbx_labelD"></asp:TextBox>
            <asp:Button ID="btnguardarseguimiento" CssClass="boton" runat="server" Text="Guardar" />
             <asp:ConfirmButtonExtender ID="GuardarConfirmation" 
                            runat="server" TargetControlID="btnguardarseguimiento"
                            ConfirmText="Esta Seguro Que Desea Guardar la Informacion?" ></asp:ConfirmButtonExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtnumexp" ErrorMessage="**Debe Ingresar Nº Exp" 
                Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
          </fieldset>

     <fieldset id="RegistroDiario">
       <legend>Listado de Pacientes</legend>
          <asp:Label ID="lbldateinit" CssClass="labelD" runat="server" Text="Fecha Inicial:"></asp:Label>
             <asp:TextBox ID="txtdateinit" runat="server" CssClass="txtbx_labelD"></asp:TextBox>
                 <img alt="Icon" src="images/calendar_icon.jpg" class="calendar" id="imgdateinit" onclick="return imgdateinit_onclick()" />
                        <asp:CalendarExtender ID="FechaIngresoExtender" runat="server" 
                            TargetControlID="txtdateinit" Format="yyyy-MM-dd" PopupButtonID="imgdateinit">
                        </asp:CalendarExtender>

                        <asp:Label ID="lbldatefini" CssClass="labelD" runat="server" Text="Fecha Final:"></asp:Label>
                            <asp:TextBox ID="txtdatefini" runat="server" CssClass="txtbx_labelD"></asp:TextBox>
                                <img alt="Icon" src="images/calendar_icon.jpg" class="calendar" id="imgdatefini" />
                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                        TargetControlID="txtdatefini" Format="yyyy-MM-dd" PopupButtonID="imgdatefini">
                                    </asp:CalendarExtender>        
                            <asp:ImageButton ID="Refrescar" CssClass="botonbusquedarapida" ImageUrl="~/images/Refresh-32.png" runat="server" />
          
    <div id="separar">
      <asp:GridView ID="GridViewSegPac" CssClass="Grid" runat="server" 
             AutoGenerateColumns="False" DataSourceID="ObjectDataSource2">
             <Columns>
            
              <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                <asp:BoundField DataField="expediente" HeaderText="Expediente" SortExpression="expediente" />
                <asp:BoundField DataField="evaluador" HeaderText="Evaluador" SortExpression="evaluador" />
                <asp:BoundField DataField="notas" HeaderText="Observacion" SortExpression="observacion" />
            
              
             </Columns>                   
      </asp:GridView>

         <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
             SelectMethod="RetrievePrueba" TypeName="BL.SeguimientoPacientes">
         </asp:ObjectDataSource>
      </div>
      
        
      
       </fieldset>  
   
      </div>
     </div>
        

  

</asp:Content>

