﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Permisos.aspx.cs" Inherits="Crear_Permisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div id="content">
        <div id = "titulo">Crear Permiso</div>        
        <div id = "navcenter">
            <fieldset>
                <ul class = "list">
                    <li class="field">
                        <asp:Label ID="Label2" CssClass="label" runat="server" Text="Nombre de Permiso"></asp:Label>
                        <asp:TextBox ID="nombrePermiso_TB" runat="server" TabIndex="1" 
                            CssClass="tb_Permiso" ontextchanged="nombrePermiso_TB_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Nombre Requerido" ControlToValidate="nombrePermiso_TB"></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label3" CssClass="label" runat="server" Text="Descripcion"></asp:Label>
                        <asp:TextBox ID="descripcion_TB" runat="server" TabIndex="2" CssClass="tb_Permiso"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Descripcion Requerida" ControlToValidate="descripcion_TB"></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label4" CssClass="label" runat="server" Text=""></asp:Label>
                    </li>
                </ul>        
            </fieldset>
        </div>

        <div id="navBotones">         
            <asp:Button ID="saveButton" cssclass="boton" runat="server" Text="Guardar" 
                        onclick="saveButton_Click" />
        </div>        
    </div>
</asp:Content>

