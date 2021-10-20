using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ClsEntidades;
using ClsReglas;


namespace Hospital_Noche
{
    public partial class frmCitas : System.Web.UI.Page
    {
        ClsEntCitas oentcitas = new ClsEntCitas();
        ClsEntPaciente oentpaciente = new ClsEntPaciente();
        ClsEntMedico oentmedico = new ClsEntMedico();

        ClsRegCitas oregcitas = new ClsRegCitas();
        ClsRegPaciente oregpaciente = new ClsRegPaciente();
        ClsRegMedico oregmedico = new ClsRegMedico();

        protected void btnConsultarCita_Click(object sender, EventArgs e)
        {
            if (txtCodCita.Text.Trim() == "")
            {
                LblMensaje.Text = "Digite un codigo";
                txtCodCita.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentcitas.Cod_cita = txtCodCita.Text;
                ds = oregcitas.consultar_cita(oentcitas);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblCita.Text = "Cita no existe";
                }
                
            }
        }

        protected void BtnAnular_Click(object sender, EventArgs e)
        {

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {

        }

        protected void btnGuardarCita_Click(object sender, EventArgs e)
        {

        }

        protected void btnConsPaciente_Click(object sender, EventArgs e)
        {

        }

        protected void btnBuscarMedico_Click(object sender, EventArgs e)
        {

        }
    }    
}