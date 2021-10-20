<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMedico.aspx.cs" Inherits="Hospital_intersofware.FrmMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
            border-style: solid;
            border-width: 2px;
        }
        .auto-style4 {
            width: 286px;
        }
        .auto-style5 {
            width: 286px;
            text-align: center;
        }
        .auto-style6 {
            width: 304px;
        }
        .auto-style7 {
            width: 304px;
            text-align: center;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 418px;
        }
        .auto-style10 {
            width: 418px;
            text-align: center;
        }
        .auto-style11 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style2">
            <strong><span class="auto-style1">
            <br />
             <span class="auto-style11">GESTIÓN DE PERSONAL MÉDICO</span></span></strong><br />
            <br />
        </div>
         <table align="center" class="auto-style3">
             <tr>
                 <td class="auto-style4">Identificación del Medico</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="TxtCodigoMedico" runat="server" Width="238px" MaxLength="15"></asp:TextBox>
                 </td>
                 <td>
                     <asp:Button ID="BtnConsultarMedico" runat="server" OnClick="BtnConsultarMedico_Click" Text="Consultar Médico" Width="201px" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td>
                     <asp:Label ID="LblConsultaMedico" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">Nombre del Médico</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="TxtNombreMedico" runat="server" Width="238px" MaxLength="50"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">Especialidad del Médico</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="TxtEspecilidadMedico" runat="server" Width="238px" MaxLength="20"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td>
                     <asp:Label ID="LblMensaje" runat="server" ForeColor="Red"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <asp:Button ID="BtnGuardar" runat="server" OnClick="BtnGuardar_Click" Text="Guardar Registro" Width="201px" />
                 </td>
                 <td class="auto-style7">
                     <asp:Button ID="BtnAnular" runat="server" OnClick="BtnAnular_Click" Text="Anular Registro Médico" Width="201px" />
                 </td>
                 <td class="auto-style2">
                     &nbsp;<asp:Button ID="BtnActivar" runat="server" OnClick="BtnActivar_Click" Text="Activar Registro Medico" Width="180px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="BtnLimpiar" runat="server" OnClick="BtnLimpiar_Click" Text="Limpiar Campos" Width="201px" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <asp:Button ID="BtnGeneral" runat="server" OnClick="BtnGeneral_Click" Text="Consulta General" Width="182px" />
                 </td>
                 <td class="auto-style7">
                     <asp:GridView ID="GvGeneral" runat="server">
                     </asp:GridView>
                 </td>
                 <td class="auto-style2">
                     &nbsp;&nbsp;</td>
             </tr>
         </table>
         <table class="auto-style8">
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style10">
                     <asp:HyperLink ID="HplCitas" runat="server" NavigateUrl="~/frmCitas.aspx">Gestión de Citas</asp:HyperLink>
                 </td>
                 <td class="auto-style2">
                     <asp:HyperLink ID="HplPacientes" runat="server" NavigateUrl="~/FrmPacientes.aspx">Gestión de Pacientes</asp:HyperLink>
                 </td>
             </tr>
         </table>
    </form>
</body>
</html>
