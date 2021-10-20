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
    public class ClsRegPaciente
    {

        ClsDatPaciente odatpaciente = new ClsDatPaciente();

        public bool guardar_paciente(ClsEntPaciente oentpaciente)
        {
            return odatpaciente.guardar_paciente(oentpaciente);
        }

        public bool anular_paciente(ClsEntPaciente oentpaciente)
        {
            return odatpaciente.anular_paciente(oentpaciente);
        }

        public DataSet consultar_paciente(ClsEntPaciente oentpaciente)
        {
            return odatpaciente.consultar_paciente(oentpaciente);
        }


    }
}
