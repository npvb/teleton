﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Seguimiento_Pacientes.aspx.cs" Inherits="Seguimiento_Pacientes" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function openPopUp() {
            var popUrl = 'Seguimiento_Paciente_Quicksearch.aspx';
            var name = 'popUp';
            var appearence = 'dependent=yes,menubar=no,resizable=yes,' +
                                          'status=yes,toolbar=no,titlebar=no,' +
                                          'left=5,width=1024px,height=600px';
            var openWindow = window.open(popUrl, name, appearence);
            openWindow.focus();
        }
    </script>
  
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id = "content">
        <ContentTemplate>
            <div id="content3">
                <div id = "titulo">
                    <h1>
                        Seguimiento de Pacientes</h1>
                    <h2>
                        <span class="h3">Fecha de Hoy:</span>
                        <asp:Label ID="LBLDATE" CssClass="h3" runat="server"></asp:Label>
                    </h2>
                </div>
                <div id="navcenter">
                    <fieldset id="Seguimiento">
                        <legend>Ingreso de Pacientes</legend>
                        <asp:Label ID="LblNumExp" CssClass="labelD" runat="server" 
                Text="Nº de Expediente:"></asp:Label>
                        <asp:TextBox ID="txtnumexp" runat="server" CssClass="txtbx_labelD"></asp:TextBox>
                        <asp:ImageButton ID="busqueda" CssClass="botonbusquedarapida" ImageUrl="~/images/Search.png" 
                runat="server" CausesValidation="False" />
                        &nbsp;<asp:Label ID="LblPat" CssClass="labelD" runat="server" Text="Patologia:"></asp:Label>
                        <asp:DropDownList ID="cmb_patologias" CssClass="cmbpatologias" runat="server">
                        </asp:DropDownList>
                        <asp:Label ID="lbobser" CssClass="labelD" runat="server" Text="Observacion:"></asp:Label>
                        <asp:TextBox ID="txtobser" runat="server" CssClass="txtbx_labelD"></asp:TextBox>
                        <asp:Button ID="btnguardarseguimiento" CssClass="boton" runat="server" 
                Text="Guardar" onclick="btnguardarseguimiento_Click" />
                <asp:ConfirmButtonExtender ID="GuardarConfirmation" 
                            runat="server" TargetControlID="btnguardarseguimiento"
                            ConfirmText="Esta Seguro Que Desea Guardar la Informacion?" >
                        </asp:ConfirmButtonExtender>
                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtnumexp" ErrorMessage="**Debe Ingresar Nº Exp" 
                Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </fieldset>
                    <fieldset id="RegistroDiario">
                        <legend>Listado de Pacientes</legend>
                        <asp:Label ID="lbldateinit" CssClass="labelD" runat="server" 
             Text="Fecha Inicial:"></asp:Label>
                        <asp:TextBox ID="txtdateinit" runat="server" CssClass="txtbx_labelD"></asp:TextBox>
                        <asp:CalendarExtender ID="FechaIngresoExtender" runat="server" 
                            TargetControlID="txtdateinit" Format="yyyy-MM-dd" 
             PopupButtonID="imgdateinit">
                        </asp:CalendarExtender>
                        <img alt="Icon" src="images/calendar_icon.jpg" class="calendar" 
             id="imgdateinit" />
                        <asp:Label ID="lbldatefini" CssClass="labelD" runat="server" 
             Text="Fecha Final:"></asp:Label>
                        <asp:TextBox ID="txtdatefini" runat="server" 
             CssClass="txtbx_labelD"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                        TargetControlID="txtdatefini" 
             Format="yyyy-MM-dd" PopupButtonID="imgdatefini">
                        </asp:CalendarExtender>
                        <img alt="Icon" src="images/calendar_icon.jpg" 
             class="calendar" id="imgdatefini" />
                        <asp:ImageButton ID="Refrescar" 
             CssClass="botonbusquedarapida" ImageUrl="~/images/Refresh-32.png" 
             runat="server" CausesValidation="False" onclick="Refrescar_Click1"  />
                        <asp:Label ID="Label1" runat="server" 
             Text="**Fecha Inicial Mayor que la Fecha Final" Visible="False" 
             ForeColor="Red"></asp:Label>
                        <div id="separar">
                           <asp:GridView ID="GridViewSegPac" CssClass="Grid" 
                                emptydatatext="No Hay Pacientes Registrados el Dia de Hoy." runat="server" 
                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" AllowPaging ="True" 
                                PageSize="8" onpageindexchanging="GridViewSegPac_PageIndexChanging1">      
                                
                                <pagersettings mode="Numeric"
                                    position="Bottom" 
                                    Visible="True"
                                               
                                    />      
                                
                                <pagerstyle backcolor="ControlLight"/>
                                <Columns>
                                    <asp:TemplateField HeaderText="Fecha" SortExpression="fecha" FooterStyle-HorizontalAlign="NotSet">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fecha") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("fecha") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Expediente" SortExpression="expediente">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("expediente") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("expediente") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nombre" SortExpression="nombres">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("nombres")%>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombres")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Apellido">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("primer_apellido")%>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("primer_apellido")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Patologia" SortExpression="id_diagnostico">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("id_diagnostico") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("id_diagnostico") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Evaluador" SortExpression="evaluador">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("evaluador") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("evaluador") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Observacion" SortExpression="observacion">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("notas") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("notas") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </fieldset>
                </div>
            </div>
        </ContentTemplate>
    </div>    
 </asp:Content>

