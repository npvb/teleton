using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess; //para el ADO Entity
using System.Data;// ^^
using System.Data.Objects;// ^^
using System.Data.Objects.DataClasses;// ^^ y haber agregado la referencia a System.Data.Entity -->

namespace BL
{
    public class Paciente
    {
        #region variables
        private DataAccess.teletonEntities entities;
        private string _nombres;
        private string _primerApellido;
        private string _segundoApellido;
        private string _fechaNac;
        private bool _sexo;
        private string _fechaIngreso;
        private string _cedula;
        private string _direccion;
        private string _lugarNac;
        private string _estado;
        private int _centroActual;
        #endregion

        #region Get y Set
        public string Nombres
        {
            get { return _nombres; }
            set { _nombres = value; }
        }

        public string PrimerApellido
        {
            get { return _primerApellido; }
            set { _primerApellido = value; }
        }

        public string SegundoApellido
        {
            get { return _segundoApellido; }
            set { _segundoApellido = value; }
        }

        public string FechaNac
        {
            get { return _fechaNac; }
            set { _fechaNac = value; }
        }

        public bool Sexo
        {
            get { return _sexo; }
            set { _sexo = value; }
        }

        public string FechaIngreso
        {
            get { return _fechaIngreso; }
            set { _fechaIngreso = value; }
        }

        public string Cedula
        {
            get { return _cedula; }
            set { _cedula = value; }
        }

        public string Direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }

        public string LugarNac
        {
            get { return _lugarNac; }
            set { _lugarNac = value; }
        }

        public string Estado
        {
            get { return _estado; }
            set { _estado = value; }
        }

        public int CentroActual
        {
            get { return _centroActual; }
            set { _centroActual = value; }
        }
        #endregion

        #region Constructores
        public Paciente()
        {
            Nombres = "";
            PrimerApellido = "";
            SegundoApellido = "";
            FechaNac = "";
            Sexo = true;
            FechaIngreso = "";
            Cedula = "";
            Direccion = "";
            LugarNac = "";
            Estado = "";
            entities = new teletonEntities();
        }

        public Paciente(string nombres, string primerApellido, string segundoApellido,
                        string fechaNac, bool sexo, string fechaIngreso, string cedula,
                        string direccion, string lugarNac, string estado)
        {
            Nombres = nombres;
            PrimerApellido = primerApellido;
            SegundoApellido = segundoApellido;
            FechaNac = fechaNac;
            Sexo = sexo;
            FechaIngreso = fechaIngreso;
            Cedula = cedula;
            Direccion = direccion;
            LugarNac = lugarNac;
            Estado = estado;
            entities = new teletonEntities();
        }
        #endregion

        public void guardarPaciente(int centroActual, string nombres, string primerApellido, string segundoApellido,
                                    string fechaNac, bool sexo, string fechaIngreso, string cedula,
                                    string direccion, string lugarNac, string estado)
        {
            CentroActual = centroActual;
            Nombres = nombres;
            PrimerApellido = primerApellido;
            SegundoApellido = segundoApellido;
            FechaNac = fechaNac;
            Sexo = sexo;
            FechaIngreso = fechaIngreso;
            Cedula = cedula;
            Direccion = direccion;
            LugarNac = lugarNac;
            Estado = estado;
            guardarPaciente();
        }

        private bool isTheInfoComplete()
        {

            return FechaIngreso.Length > 0 && PrimerApellido.Length > 0 && SegundoApellido.Length > 0 && Nombres.Length > 0 && Cedula.Length > 0 && FechaNac.Length > 0;
        }

        public void guardarPaciente()
        {
            if (isTheInfoComplete())
            {
                try
                {
                    DataAccess.paciente pac = new DataAccess.paciente();
                    pac.cedula = Cedula;
                    pac.direccion = Direccion;
                    pac.estado_civil = Estado;

                    int yy = int.Parse(FechaIngreso.Substring(0, 4));
                    int MM = int.Parse(FechaIngreso.Substring(5, 2));
                    int dd = int.Parse(FechaIngreso.Substring(8, 2));
                    pac.fecha_ingreso = new DateTime(yy, MM, dd);

                    yy = int.Parse(FechaNac.Substring(0, 4));
                    MM = int.Parse(FechaNac.Substring(5, 2));
                    dd = int.Parse(FechaNac.Substring(8, 2));
                    pac.fecha_nac = new DateTime(yy, MM, dd);

                    pac.lugar_nac = LugarNac;
                    pac.nombres = Nombres;
                    pac.primer_apellido = PrimerApellido;
                    pac.segundo_apellido = SegundoApellido;
                    pac.sexo = Sexo;

                    pac.centro_actual = CentroActual;
                    pac.prefijo = 1;
                    pac.expediente = 0;

                    pac.tipo_doc_alterno = "N/A";
                    pac.numero_doc_alt = "N/A";

                    entities.pacientes.AddObject(pac); //se guarda en la memoria
                    entities.SaveChanges(); //se guarda en la DB

                }
                catch (Exception ex)
                {
                    throw new Exception(ex.ToString() + "Pacientes.cs / guardarPaciente()");
                }
            }
        }
    }
}
