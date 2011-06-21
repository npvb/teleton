<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Eliminar Empleados.aspx.cs" Inherits="Eliminar_Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id = "content">
    <div id="titulo">Eliminar Empleados</div>
        <div id = "navcenter">
                    <fieldset>
                        <ul class = "list">
                            <li class="field">
                                <asp:Label ID="Label1" cssclass="label" runat="server" Text="Escoga Empleado"></asp:Label>
                                <asp:DropDownList ID="cmb_empleados" CssClass="cmb_Empleado" runat="server">
                                </asp:DropDownList>
                                <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="cmb_empleados" ErrorMessage="**Debe escoger un empleado"></asp:RequiredFieldValidator>-->
                            </li>
                        </ul>
                    </fieldset>
        </div>
        <div id="navBotones">
                    <asp:Button ID="btn_eliminar" cssclass="boton" runat="server" onclick="btn_eliminar_Click1" 
                    Text="Eliminar" />
        </div>
</div>
</asp:Content>

