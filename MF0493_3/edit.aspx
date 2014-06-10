﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla1.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="MF0493_3.edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker3.css" rel="stylesheet" />
    <script type="text/javascript" src="../Scripts/bootstrap-datepicker.js"></script>    

    <style type="text/css">
        #boton {
            text-align:center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="zona1" runat="server">
    <fieldset>
        <legend>Modificar Empresa</legend>
        <div class="row">
            <div class="col-md-3">
                <asp:Image ID="foto" runat="server" Height="150px" Width="150px" ImageUrl="~/Private/img/bank.png" />
                <br />
                <br />
                <div id="listado_archivos">
                    <asp:Table CssClass="table table-striped table-bordered table-hover" ID="tabla" runat="server"></asp:Table>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="form-label" for="txtDni" runat="server" Font-Bold="True">NIF: </asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtDni" ToolTip="NIF de la empresa" runat="server" ReadOnly="true" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valNIF" runat="server" ErrorMessage="Debe de escribir un NIF" ControlToValidate="txtDni" CssClass="label label-danger" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="valNifCustom" runat="server" ErrorMessage="El NIF escrito no es valido" ControlToValidate="txtDni" CssClass="label label-danger" OnServerValidate="Nif_Valido" SetFocusOnError="True" Display="Dynamic"></asp:CustomValidator>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="form-label" for="txtNombre" runat="server" Font-Bold="True">Nombre: </asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtNombre" ToolTip="Nombre del alumno" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValNombre" runat="server" ErrorMessage="Debe de escribir un nombre" ControlToValidate="txtNombre" CssClass="label label-danger" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="form-label" for="txtEmail" runat="server" Font-Bold="True">Email: </asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtEmail" ToolTip="Email de la empresa" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valEmail" runat="server" ErrorMessage="Debe escribir un email" ControlToValidate="txtEmail" CssClass="label label-danger" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="valEmailCustom" runat="server" ErrorMessage="El email no es correcto" ControlToValidate="txtEmail" CssClass="label label-danger" OnServerValidate="val_email" SetFocusOnError="True" Display="Dynamic"></asp:CustomValidator>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="form-label" for="txtFF" runat="server" Font-Bold="True">Fecha de fundación: </asp:Label>                                       
                        <asp:TextBox CssClass="form-control" ID="txtFnac" ToolTip="Fecha de fundación" runat="server" data-provide="datepicker" readonly="" data-date-format="dd/mm/yyyy"></asp:TextBox>                                            
                </div>

            </div>
            <div class="col-md-5">
                <div class="form-group">
                    <asp:Label CssClass="form-label" for="txtPoblacion" runat="server" Font-Bold="True">Poblacion: </asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtPoblacion" ToolTip="Poblacion de la empresa" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label CssClass="form-label" for="txtActivo" runat="server" Font-Bold="True">Pyme: </asp:Label>
                    <asp:CheckBox ID="txtPyme" ToolTip="Si es pyme o no" runat="server" />
                </div>
                <div class="form-group">
                    <asp:Label CssClass="form-label" for="txtTlf" runat="server" Font-Bold="True">Telefono: </asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtTlf" ToolTip="Telefono de la empresa" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="valTelefono" runat="server" ErrorMessage="El telefono no es valido" ControlToValidate="txtTlf" CssClass="label label-danger" OnServerValidate="val_tel" SetFocusOnError="True" Display="Dynamic"></asp:CustomValidator>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="control-label" ID="Label4" runat="server" Text="Logotipo" AssociatedControlID="file_u"></asp:Label>
                    <asp:FileUpload CssClass="fileupload-new" ID="file_u" runat="server" />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="file_u" CssClass="text-danger" ErrorMessage="CustomValidator" OnServerValidate="ValidarArchivo" ValidationGroup="archivo"></asp:CustomValidator>
                </div>            
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-4">
                <div class="form-group" id="boton">
                    <asp:Button CssClass="btn btn-primary" Text="Guardar" ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" />
                    <asp:Button CssClass="btn btn-danger" Text="Cancelar" ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" />
                </div>
            </div>
            <div class="col-md-5">
            </div>
        </div>
        
    </fieldset>

</asp:Content>
