using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClsEntidades
{
    public class ClsEntPaciente
    {
        private string id_paciente;
        private string nom_paciente;
        private string dir_paciente;
        private string tel_paciente;
        private byte activo;
        private byte tipo;

        public string Id_paciente { get => id_paciente; set => id_paciente = value; }
        public string Nom_paciente { get => nom_paciente; set => nom_paciente = value; }
        public string Dir_paciente { get => dir_paciente; set => dir_paciente = value; }
        public string Tel_paciente { get => tel_paciente; set => tel_paciente = value; }
        public byte Activo { get => activo; set => activo = value; }
        public byte Tipo { get => tipo; set => tipo = value; }
    }
}
