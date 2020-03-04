﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frm_Registro de Jugadores.aspx.cs" Inherits="Proyecto_V.Forms.frm_Registro_de_Jugadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!---HOJA DE ESTILOS-->
    <link href="../Hoja%20Estilos/Estilos_Reg_Jugadores.css" rel="stylesheet" />
    <div>
        <h2>Registro de Jugadores</h2>
    </div>
    <!---CONTENEDOR PRINCIPAL-->
    <div id="contenedor_principal" class="container well container">
        <!---CONTENEDOR SECUNDARO-->
        <div id="contenedor" class="container well container">
            <!---CEDULA-->
            <div class="form-group">
                <div class="col">
                    <asp:Label Text="Cédula" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rq_txt_cedula" runat="server" ErrorMessage="* Debe indicar el número de Cédula" ControlToValidate="txt_cedula" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" ID="txt_cedula" CssClass="form-control" />
                </div>
            </div>
            <!---NOMBRE-->
            <div class="form-group">
                <asp:Label Text="Nombre" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rq_txt_nombre" runat="server" ErrorMessage="* Debe ingresar el nombre" ControlToValidate="txt_nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox runat="server" ID="txt_nombre" CssClass="form-control" />
            </div>
            <!---APELLIDO 1-->
            <div class="form-group">
                <asp:Label Text="Apellido 1" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rq_txt_apellido1" runat="server" ErrorMessage="* Debe ingresar el Apellido 1" ControlToValidate="txt_apellido1" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox runat="server" ID="txt_apellido1" CssClass="form-control" />
            </div>
            <!---APELLIDO2-->
            <div class="form-group">
                <asp:Label Text="Apellido 2" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rq_txt_apellido2" runat="server" ErrorMessage="* Debe ingresar el Apellido 2" ControlToValidate="txt_apellido2" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox runat="server" ID="txt_apellido2" CssClass="form-control" />
            </div>
              <!---GENERO-->
            <asp:Label Text="Genero" runat="server" />
            <div class="custom-control custom-radio custom-control-inline">
                <input runat="server" type="radio" id="rb_masculino" name="genero" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline1">Masculino</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input runat="server" type="radio" id="rb_femenino" name="genero" class="custom-control-input">
                <label class="custom-control-label" for="rb_femenino">Femenino</label>
            </div>
              <!---TELEFONO-->
              <div class="form-group">
                <asp:Label Text="Teléfono" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rq_txt_telefono" runat="server" ErrorMessage="* Debe ingresar un número teléfono" ControlToValidate="txt_telefono" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox runat="server" ID="txt_telefono" CssClass="form-control" />
            </div>
            <!---CORREO-->
              <div class="form-group">
                  <asp:Label Text="Correo" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rq_txt_correo" runat="server" ErrorMessage="* Debe ingresar un correo eléctronico" ControlToValidate="txt_correo" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:TextBox runat="server" ID="txt_correo" CssClass="form-control" />
              </div>
            <!---PROVINCIA,CANTON,DISTRITO-->
            <div class="form-group">
                <asp:Label Text="Provincia" runat="server" />
                <asp:DropDownList ID="dl_lista_provincia" runat="server" CssClass="form-control" DataTextField="nombre" DataValueField="id_Provincia"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label Text="Cantón" runat="server" />
                <asp:DropDownList ID="dl_lista_cantones" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label Text="Distrito" runat="server" />
                <asp:DropDownList ID="dl_lista_distritos" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <!---DIRECCION-->
              <div class="form-group">
                  <asp:Label Text="Dirección" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rqtxt_direccion" runat="server" ErrorMessage="* Debe ingresar la dirección de la vivienda" ControlToValidate="txt_direccion" ForeColor="Red"></asp:RequiredFieldValidator>
                  <textarea id="txt_direccion" class="form-control" runat="server" ></textarea>
              </div>
        </div>
    </div>
    
</asp:Content>
