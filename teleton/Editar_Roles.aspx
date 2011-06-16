<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editar_Roles.aspx.cs" Inherits="Editar_Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">    
    <link href="Styles/Security.css" rel="stylesheet" type="text/css" />    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="content">
        <div id = "titulo">Editar Rol</div>
        <div id = "navcenter">
            <asp:Label ID="Label1" runat="server" Text="Descripcion:"></asp:Label>
            <asp:DropDownList ID="descripciones_DDList" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="descripciones_DDList_SelectedIndexChanged" 
                Width="33%">
                </asp:DropDownList>            
        </div>        
        <div id="navcontroles">
            <div id="perActs" style="width:49%; float:left;">
                <asp:Label ID="Label2" runat="server" Text="Permisos Actuales:"></asp:Label>
                <asp:CheckBoxList ID="permisos_CBList" runat="server" TabIndex="3">
                        </asp:CheckBoxList>
            </div>
            <div id="perAds" style="width:49%; float:right;">
                <asp:Label ID="Label3" runat="server" Text="Permisos Adicionales:"></asp:Label>
                <asp:CheckBoxList ID="otrosPermisos_CBList" runat="server" TabIndex="4">
                        </asp:CheckBoxList>
            </div>
            <div style="clear:both;">
            </div>
        </div>
        <div id="navBotones">
            <asp:Button ID="acceptButton" runat="server" Text="Aceptar" 
                    onclick="acceptButton_Click" />
        </div>
    </div>
</asp:Content>

