using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClsDatos;
using ClsEntidades;
using System.Data;

namespace ClsReglas
{
    public class ClsRegMedico
    {

        ClsDatMedico odatmedico = new ClsDatMedico();

        public bool guardar_medico(ClsEntMedico oentmedico)
        {
            return odatmedico.guardar_medico(oentmedico);
        }

        public bool anular_medico(ClsEntMedico oentmedico)
        {
            return odatmedico.anular_medico(oentmedico);
        }

        public DataSet consultar_medico(ClsEntMedico oentmedico)
        {
            return odatmedico.consultar_medico(oentmedico);
        }

    }
}
