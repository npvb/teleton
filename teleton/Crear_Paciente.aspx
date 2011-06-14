<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Paciente.aspx.cs" Inherits="Crear_Paciente" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    <link href="Styles/Security.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div id="content">

        <div id = "titulo">
            <h1 style="text-align:center">Registro de Pacientes</h1> 
            <h2 style="text-align:center">Información General</h2>
        </div>

        <div id="navcenter">

            <span >Nº de Cédula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            &nbsp;<asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="*Ingrese el Numero de Cédula" ForeColor="Red" 
                                ControlToValidate="txtCedula"></asp:RequiredFieldValidator>
                    <span >
            <br />
            <br />
            Nombres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;<asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="*Ingrese el Nombre" ForeColor="Red" 
                                ControlToValidate="txtNombres"></asp:RequiredFieldValidator>
                    
                    <span >
            <br />
            <br />
            Primer Apellido:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>                    
                                        &nbsp;<asp:TextBox ID="txtPrimerApellido" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ErrorMessage="*Ingrese el Primer Apellido" ForeColor="Red" 
                                            ControlToValidate="txtPrimerApellido"></asp:RequiredFieldValidator>
                    <span >
            <br />
            <br />
            Segundo Apellido:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="txtSegundoApellido" runat="server"></asp:TextBox>
                    <span >
            <br />
            <br />
            Dirección:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ErrorMessage="*Ingrese la Dirección" ForeColor="Red" 
                                ControlToValidate="txtDireccion"></asp:RequiredFieldValidator>
            <span >
            <br />
            <br />
            Sexo:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:radiobuttonlist id="rdSexo" runat="server" RepeatDirection="Horizontal" 
                RepeatLayout="Flow">
                          <asp:listitem id="rdMasculino" Selected="true" runat="server" value="Masculino" />
                          <asp:listitem id="rdFemenino" runat="server" value="Femenino" />
            </asp:radiobuttonlist>
            <span >
            <br />
            <br />
            Estado Civil:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="ddEstado" runat="server">
                        <asp:ListItem Selected="True" Value="0">Soltero</asp:ListItem>
                        <asp:ListItem Value="1">Casado</asp:ListItem>
                        <asp:ListItem Value="2">Divorciado</asp:ListItem>
                        <asp:ListItem Value="3">Viudo</asp:ListItem>
                        <asp:ListItem Value="4">Unión libre</asp:ListItem>
                    </asp:DropDownList>
        <span >
            <br />
            <br />
            Lugar de Nacimiento: </span>
                            &nbsp;<asp:TextBox ID="txtLugarNacimiento" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ErrorMessage="*Ingrese el Lugar de Nacimiento" ForeColor="Red" 
                                ControlToValidate="txtLugarNacimiento"></asp:RequiredFieldValidator>
        <span >
            <br />
            <br />
            Fecha de Nacimiento:</span>
                           <asp:TextBox ID="txtFechaNacimiento" runat="server" 
                ReadOnly="True"></asp:TextBox>
                           
                            <asp:CalendarExtender ID="txt_fecha_CalendarExtender" runat="server" 
                            TargetControlID="txtFechaNacimiento" Format="dd/MM/yyyy" PopupButtonID="img_fecha_nacimiento" >
                        </asp:CalendarExtender>
                    <img alt="Icon" src="images/calendar_icon.jpg" id="img_fecha_nacimiento" width="24px" />
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ErrorMessage="*Ingrese la Fecha de Nacimiento" ForeColor="Red" 
                                ControlToValidate="txtFechaNacimiento"></asp:RequiredFieldValidator>
        <span >
            <br />
            <br />
            Fecha de Ingreso:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="txtFechaIngreso" runat="server" ReadOnly="True"></asp:TextBox>
                            
                            <img alt="Icon" src="images/calendar_icon.jpg" id="img_fecha_ingreso" width="24px" />
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ErrorMessage="*Ingrese la fecha de Ingreso" ForeColor="Red" 
                                ControlToValidate="txtFechaIngreso"></asp:RequiredFieldValidator>
                                <asp:CalendarExtender ID="txt_fecha_CalendarExtender2" runat="server" 
                            TargetControlID="txtFechaIngreso" Format="dd/MM/yyyy" PopupButtonID="img_fecha_ingreso">
                        </asp:CalendarExtender>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btIngresar" runat="server" Text="Ingresar Paciente" 
                        onclick="btIngresar_Click" />
        </div>
    </div>


</asp:Content>

