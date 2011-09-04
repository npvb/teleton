using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Data;
using System.Data.Objects;
using System.Data.Objects.DataClasses;

namespace BL
{
    public class SeguimientoPacientes
    {
        #region Variables
        DataAccess.teletonEntities entities;
        string fecha;
        #endregion

        #region Constructor
        public SeguimientoPacientes() {
            entities = new teletonEntities();
            fecha = DateTime.Now.Year.ToString();
            fecha = fecha + "-" + (DateTime.Now.Month < 10 ? "0" : "") + DateTime.Now.Month.ToString();
            fecha = fecha + "-" + (DateTime.Now.Day < 10 ? "0" : "") + DateTime.Now.Day.ToString();
        }
        #endregion 

        #region Funciones
        public string GetFecha() {
            return fecha;
        }


        public List<String> RetrievePatologias() //Retorna Una Lista de Patologias
        {
            var query = from p in entities.diagnosticos select p;
              List<string> Diag = new List<string>();
                foreach (diagnostico nombre in query)
                    Diag.Add(nombre.diagnostico1);
            
                return Diag;
        }

        public IQueryable RetrievePrueba() //Retorna un dataset de evoluciones
        {
            DateTime d = DateTime.Parse(fecha);
           
            var query = from p in entities.evoluciones
                        where p.fecha.Year== d.Year && p.fecha.Month == d.Month && p.fecha.Day == d.Day
                        select new { p.fecha, p.expediente, p.evaluador, p.notas };

            return query;
        }

        public IQueryable BusquedaRapida(string nombres, string apellido, string segundoapellido, string cedula)
        {
            try
            {
                var query = (from p in entities.pacientes
                            where p.nombres.Contains(nombres)
                            select new { 
                                Nombre = p.nombres, 
                                PrimerApellido = p.primer_apellido, 
                                SegundoApellido = p.segundo_apellido, 
                                Cedula = p.cedula,
                                Expediente = p.expediente
                            }).Union
                            (from p1 in entities.pacientes
                            where p1.primer_apellido == apellido
                            select new { 
                                Nombre = p1.nombres, 
                                PrimerApellido = p1.primer_apellido, 
                                SegundoApellido = p1.segundo_apellido,
                                Cedula = p1.cedula,
                                Expediente = p1.expediente
                            }).Union
                            (from p2 in entities.pacientes
                            where p2.segundo_apellido == segundoapellido
                            select new
                            {
                                Nombre = p2.nombres,
                                PrimerApellido = p2.primer_apellido,
                                SegundoApellido = p2.segundo_apellido,
                                Cedula = p2.cedula,
                                Expediente = p2.expediente
                            }).Union
                            (from p3 in entities.pacientes
                            where p3.cedula == cedula
                            select new
                            {
                                Nombre = p3.nombres,
                                PrimerApellido = p3.primer_apellido,
                                SegundoApellido = p3.segundo_apellido,
                                Cedula = p3.cedula,
                                Expediente = p3.expediente
                            });

                return query;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString() + " --SeguimientoPacientes.cs / BusquedaRapida()");
            }
        }
        
        #endregion
    }
}
