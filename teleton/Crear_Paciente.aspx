<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Paciente.aspx.cs" Inherits="Crear_Paciente" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div>
        <p style="text-align:center">
        <h1 style="text-align:center">Registro de Pacientes</h1> 
        <h2 style="text-align:center">Información General</h2>
        </p>
        <p style="text-align:center">

                    <span >Nº de Cédula:</span>
                    <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="*Ingrese el Numero de Cédula" ForeColor="Red" 
                                ControlToValidate="txtCedula"></asp:RequiredFieldValidator>

                    <br />
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
        </p>
        <p style="text-align:center">
                    <span >Nombres:</span>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="*Ingrese el Nombre" ForeColor="Red" 
                                ControlToValidate="txtNombres"></asp:RequiredFieldValidator>
                    <br />
                            
                    <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
        </p>
        <p style="text-align:center">
        <span >Primer Apellido:</span>
                    <br />
                    
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="*Ingrese el Primer Apellido" ForeColor="Red" 
                                ControlToValidate="txtPrimerApellido"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtPrimerApellido" runat="server"></asp:TextBox>
        </p>
        <p style="text-align:center">
        <span >Segundo Apellido:</span>
                    <br />
                    <asp:TextBox ID="txtSegundoApellido" runat="server"></asp:TextBox>
        </p>
        <p style="text-align:center">
        <span >Dirección:</span>
        <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ErrorMessage="*Ingrese la Dirección" ForeColor="Red" 
                                ControlToValidate="txtDireccion"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    
        </p>
        <p style="text-align:center" align="center">
        <span >Sexo:</span>
                    <br />
            <asp:radiobuttonlist id="rdSexo" runat="server" RepeatDirection="Horizontal" 
                RepeatLayout="Flow">
                          <asp:listitem id="rdMasculino" Selected="true" runat="server" value="Masculino" />
                          <asp:listitem id="rdFemenino" runat="server" value="Femenino" />
            </asp:radiobuttonlist>
        </p>
        <p style="text-align:center">
        <span >Estado Civil::</span>
                    <br />
                    <asp:DropDownList ID="ddEstado" runat="server">
                        <asp:ListItem Selected="True" Value="0">Soltero</asp:ListItem>
                        <asp:ListItem Value="1">Casado</asp:ListItem>
                        <asp:ListItem Value="2">Divorciado</asp:ListItem>
                        <asp:ListItem Value="3">Viudo</asp:ListItem>
                        <asp:ListItem Value="4">Unión libre</asp:ListItem>
                    </asp:DropDownList>
        </p>
        <p style="text-align:center">
        <span >Lugar de Nacimiento:</span>
                    <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ErrorMessage="*Ingrese el Lugar de Nacimiento" ForeColor="Red" 
                                ControlToValidate="txtLugarNacimiento"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtLugarNacimiento" runat="server"></asp:TextBox>
        </p>
        <p style="text-align:center">
        <span >Fecha de Nacimiento:</span>
                    <br />
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ErrorMessage="*Ingrese la Fecha de Nacimiento" ForeColor="Red" 
                                ControlToValidate="txtFechaNacimiento"></asp:RequiredFieldValidator>
                    <br />
                           <asp:TextBox ID="txtFechaNacimiento" runat="server"></asp:TextBox> 
        </p>
        <p style="text-align:center">
        <span >Fecha de Ingreso:</span>
                    <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ErrorMessage="*Ingrese la fecha de Ingreso" ForeColor="Red" 
                                ControlToValidate="txtFechaIngreso"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtFechaIngreso" runat="server"></asp:TextBox>
        </p>
        <p style="text-align:center">
                    <asp:Button ID="btIngresar" runat="server" Text="Ingresar Paciente" 
                        onclick="btIngresar_Click" />
        </p>
    </div>


</asp:Content>

