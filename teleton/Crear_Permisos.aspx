<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Permisos.aspx.cs" Inherits="Crear_Permisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Security.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div id="content">
        <div id = "titulo">Crear Permiso</div>
        <div id = "navcenter">
            <div>
                <asp:Label ID="Label2" runat="server" Text="Nombre de Permiso:"></asp:Label>            
                <asp:TextBox ID="nombrePermiso_TB" runat="server" TabIndex="1" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Nombre Requerido" ControlToValidate="nombrePermiso_TB"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label>
                <asp:TextBox ID="descripcion_TB" runat="server" TabIndex="2" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Descripcion Requerida" ControlToValidate="descripcion_TB"></asp:RequiredFieldValidator>            
            </div>
        </div>        
        <div id="navBotones">            
            <asp:Button ID="saveButton" runat="server" Text="Guardar" 
                    onclick="saveButton_Click" />
        </div>
    </div>
</asp:Content>

