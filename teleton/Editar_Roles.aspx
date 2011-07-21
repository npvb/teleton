﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editar_Roles.aspx.cs" Inherits="Editar_Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">    
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="content">
        <div id = "titulo">
            <h1>Editar Roles</h1>
        </div>
        <div id = "navcenter">
            <fieldset>
                <ul class = "list">
                    <li class = "field">
                        <asp:Label ID="Label1" CssClass="label" runat="server" Text="Descripcion:"></asp:Label>
                        <asp:DropDownList ID="descripciones_DDList" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="descripciones_DDList_SelectedIndexChanged" Width="60%">
                                </asp:DropDownList>
                    </li>
                </ul>
            </fieldset>
        </div>        
        <div id="navcontroles">
            <fieldset>
                <ul class = "list">
                    <li class = "field">
                        <div id="perActs">
                            <asp:Label ID="Label2" runat="server" Text="Permisos Actuales:"></asp:Label>
                            <asp:CheckBoxList ID="permisos_CBList" runat="server" TabIndex="3">
                                </asp:CheckBoxList>
                        </div>
                        <div id="perAds">
                            <asp:Label ID="Label3" runat="server" Text="Permisos Adicionales:"></asp:Label>
                            <asp:CheckBoxList ID="otrosPermisos_CBList" runat="server" TabIndex="4">
                                </asp:CheckBoxList>
                        </div>
                    </li>
                    <li class = "field">
                        <div id="resetFloats"></div>
                    </li>
                </ul>
            </fieldset>
        </div>
        <div id="navBotones">            
            <asp:Button ID="acceptButton" cssclass="boton" runat="server" Text="Aceptar" 
                onclick="acceptButton_Click" />
        </div>
    </div>
</asp:Content>

