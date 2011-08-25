<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Diagnosticos.aspx.cs" Inherits="Diagnosticos" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
<div id = "content3">
    <div id="titulo">
        <h1>Mantenimiento de Patologias</h1>
    </div> 
    <div id = "navcenter">
        <fieldset>
                  

            <asp:Label ID="Label2" CssClass="labelD" runat="server" Text=" Patologia: "></asp:Label>
            <asp:TextBox ID="diagnostico_txt" CssClass="txtbx_Diagnostico" runat="server">
                </asp:TextBox>

           

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="diagnostico_txt" ErrorMessage="Ingrese la patologia" 
                ForeColor="Red"></asp:RequiredFieldValidator>

           

            <asp:Button ID="Button1" CssClass= "boton" runat="server" Text="Guardar" 
                onclick="Button1_Click" />

           

            <asp:GridView ID="GridView1" CssClass="Grid" runat="server" 
                AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource1" 
                Width="322px">
                <Columns>                   
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:ImageButton ID="Refresh" runat="server" CausesValidation="False" 
                                CommandName="Update" ImageUrl="~/images/Refresh-32.png" Text="" />
                            <asp:ImageButton ID="Cancel" runat="server" CausesValidation="False" 
                                CommandName="Cancel" ImageUrl="~/images/button_cancel-32.png" Text="" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="Edit" runat="server" CausesValidation="False" 
                                CommandName="Edit" ImageUrl="~/images/Edit-32.png" Text="" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:ImageButton ID="Delete" runat="server" CausesValidation="False" 
                                CommandName="Delete" ImageUrl="~/images/delete-32.png" Text="" />
                            
                            <asp:ConfirmButtonExtender ID="WinError" 
                            runat="server" TargetControlID="Delete"
                            ConfirmText="Esta seguro que desea eliminar el registro" ></asp:ConfirmButtonExtender>
                        </ItemTemplate>
                    </asp:TemplateField>
                                     
                    <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="diagnostico1" HeaderText="Nom. Patologia" 
                        SortExpression="diagnostico1" />
                </Columns>
            </asp:GridView>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                ConnectionString="name=teletonEntities" DefaultContainerName="teletonEntities" 
                EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                EnableUpdate="True" EntitySetName="diagnosticos">
            </asp:EntityDataSource>

         </fieldset>
    </div>

</div>
</asp:Content>

