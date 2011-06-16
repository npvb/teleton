<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Eliminar_Roles.aspx.cs" Inherits="Eliminar_Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Security.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div id="content">
        <div id = "titulo">Eliminar Rol</div>        
        <div id="navcontroles">            
            <asp:Label ID="Label1" runat="server" Text="Roles:"></asp:Label>
            <div id="control1" style = "text-align:left;width: 50%;margin: auto;">                
                <asp:CheckBoxList ID="roles_CBList" runat="server" TabIndex="3">
                    </asp:CheckBoxList>
                <asp:CustomValidator ID="CustomValidator1" runat="server"
                    ErrorMessage="Seleccione al menos un permiso." 
                    onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </div>
        </div>
        <div id="navBotones">     
            <asp:Button ID="acceptButton" runat="server" Text="Aceptar" 
                    onclick="acceptButton_Click" />       
        </div>
    </div>
</asp:Content>

