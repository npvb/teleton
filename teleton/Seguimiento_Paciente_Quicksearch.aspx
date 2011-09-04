<%@ Page Title="" Language="C#" MasterPageFile="~/Reportes.master" AutoEventWireup="true" CodeFile="Seguimiento_Paciente_Quicksearch.aspx.cs" Inherits="Seguimiento_Paciente_Quicksearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id = "content">
    <div id="titulo">
    Quickie Search :P
    </div>
    <div id="navcenter">                   
        <fieldset class="fsQuickSearch">
            <asp:Label ID="Label1" CssClass="label" runat="server" Text="Nombres"></asp:Label>
            <asp:TextBox ID="nombres_TB" CssClass="txtbx_QuickSearch" runat="server"></asp:TextBox>
        </fieldset>
        <fieldset class="fsQuickSearch">
            <asp:Label ID="Label2" CssClass="label" runat="server" Text="Primer Apellido"></asp:Label>
            <asp:TextBox ID="primerApellido_TB" CssClass="txtbx_QuickSearch" runat="server"></asp:TextBox>
        </fieldset>
        <div class="resetFloats"></div>
        <fieldset class="fsQuickSearch">
            <asp:Label ID="Label3" CssClass="label" runat="server" Text="Segundo Apellido"></asp:Label>
            <asp:TextBox ID="segundoApellido_TB" CssClass="txtbx_QuickSearch" runat="server"></asp:TextBox>
        </fieldset>
        <fieldset class="fsQuickSearch">
            <asp:Label ID="Label4" CssClass="label" runat="server" Text="Cedula"></asp:Label>
            <asp:TextBox ID="cedula_TB" CssClass="txtbx_QuickSearch" runat="server"></asp:TextBox>
        </fieldset>        
    </div>
    <div id = "navcontroles">
        <asp:GridView ID="GridView1" CssClass="Grid" runat="server" 
            DataSourceID="ObjectDataSource1" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />                
            </Columns>
        </asp:GridView>        
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="BusquedaRapida" TypeName="BL.SeguimientoPacientes">
            <SelectParameters>
                <asp:ControlParameter ControlID="nombres_TB" Name="nombres" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="primerApellido_TB" Name="apellido" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="segundoApellido_TB" Name="segundoapellido" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="cedula_TB" Name="cedula" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <div id="navbotones">
        <asp:Button ID="searchBtn" CssClass="boton" runat="server" Text="Buscar" 
            onclick="searchBtn_Click" />
        <asp:Button ID="acceptBtn" CssClass="boton" runat="server" Text="Aceptar" 
            onclick="acceptBtn_Click" />
        <asp:Button ID="cleanBtn" CssClass="boton" runat="server" Text="Limpiar" 
            onclick="cleanBtn_Click" />
        <asp:Button ID="closeBtn" CssClass="boton" runat="server" Text="Cerrar" OnClientClick="window.close()" />
    </div>
</div>
</asp:Content>

