<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Eliminar_Permisos.aspx.cs" Inherits="Eliminar_Permisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="content">
        <div id = "titulo">Eliminar Permisos</div>
        <div id="navcontroles">
            <fieldset>
                <ul class  = "list">
                    <li class = "field">
                        <asp:Label ID="Label1" CssClass = "label" runat="server" Text="Permisos:"></asp:Label>
                        <div id="ctrlCentrado">
                            <asp:CheckBoxList ID="permisos_CBList" runat="server" TabIndex="3">
                                </asp:CheckBoxList>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                                ErrorMessage="Seleccione un permiso a borrar" 
                                onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                        </div>
                    </li>
                </ul>
            </fieldset>
        </div>
        <div id="navBotones">
            <asp:Button ID="acceptButton" CssClass = "boton" runat="server" Text="Aceptar" 
                onclick="acceptButton_Click" />
        </div>
    </div>
</asp:Content>

