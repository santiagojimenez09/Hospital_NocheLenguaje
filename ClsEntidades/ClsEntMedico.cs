using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClsEntidades
{
    public class ClsEntMedico
    {
        private string id_medico;
        private string nom_medico;
        private string especialidad;
        private bool activo;
        private bool tipo;

        public string Id_medico { get => id_medico; set => id_medico = value; }
        public string Nom_medico { get => nom_medico; set => nom_medico = value; }
        public string Especialidad { get => especialidad; set => especialidad = value; }
        public bool Activo { get => activo; set => activo = value; }
        public bool Tipo { get => tipo; set => tipo = value; }
    }
}
