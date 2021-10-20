<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPacientes.aspx.cs" Inherits="Hospital_intersofware.FrmPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 466px;
        }
        .auto-style4 {
            width: 466px;
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 393px;
        }
        .auto-style7 {
            width: 390px;
        }
        .auto-style8 {
            width: 390px;
            text-align: center;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            width: 393px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
           <div class="auto-style1">
            <strong><span class="auto-style1">
            <br />
             <span class="auto-style5">GESTIÓN DE PACIENTES</span></span></strong><br />
            <br />
        </div>
    
    <table class="auto-style2">
        <tr>
            <td class="auto-style6">Identificación del Paciente</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtIdPaciente" runat="server" Width="266px" MaxLength="15"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:Button ID="BtnConsultarPaciente" runat="server" OnClick="BtnConsultarPaciente_Click" Text="Consultar Paciente" Width="224px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Label ID="LblCodigoPaciente" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Nombre del Paciente</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtNombrePaciente" runat="server" Width="266px" MaxLength="50"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Dirección del Paciente</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtDireccionPaciente" runat="server" Width="266px" MaxLength="50"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Teléfono del Paciente</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtTelefonoPaciente" runat="server" Width="266px" MaxLength="10"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Label ID="LblMensaje" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="BtnGuardarPaciente" runat="server" OnClick="BtnGuardarPaciente_Click" Text="Guardar Paciente" Width="224px" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="BtnAnularPaciente" runat="server" OnClick="BtnAnularPaciente_Click" Text="Anular Paciente" Width="224px" />
            </td>
            <td class="auto-style1">
                <asp:Button ID="BtnLimpiarCampos" runat="server" OnClick="BtnLimpiarCampos_Click" Text="Limpiar Campos" Width="224px" />
            </td>
        </tr>
    </table>
           <table class="auto-style2">
               <tr>
                   <td class="auto-style3">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:HyperLink ID="HplCitas" runat="server" NavigateUrl="~/frmCitas.aspx">Gestión de Citas</asp:HyperLink>
                   </td>
                   <td class="auto-style1">
                       <asp:HyperLink ID="HplMedicos" runat="server" NavigateUrl="~/FrmMedico.aspx">Gestion de Medicos</asp:HyperLink>
                   </td>
               </tr>
           </table>
  </form>
</body>
</html>
