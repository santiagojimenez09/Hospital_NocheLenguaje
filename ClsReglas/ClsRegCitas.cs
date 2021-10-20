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
    public class ClsRegCitas
    {

        ClsDatCitas odatcitas = new ClsDatCitas();

        public bool guardar_cita(ClsEntCitas oentcitas)
        {
            return odatcitas.guardar_cita(oentcitas);
        }

        public bool anular_cita(ClsEntCitas oentcitas)
        {
            return odatcitas.anular_cita(oentcitas);
        }

        public DataSet consultar_cita(ClsEntCitas oentcitas)
        {
            return odatcitas.consultar_cita(oentcitas);
        }

    }
}
