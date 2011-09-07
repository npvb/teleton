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

        public Int32 GetPatologiasId(string nom_pat) {

            int id=0;

            var query = from diag in entities.diagnosticos
                        where nom_pat==diag.diagnostico1
                        select diag.id;

            id=Convert.ToInt32(query.FirstOrDefault());



            return id;
        }

        public List<String> RetrievePatologias() //Retorna Una Lista de Patologias
        {
            var query = from p in entities.diagnosticos select p;
              List<string> Diag = new List<string>();
                foreach (diagnostico nombre in query)
                    Diag.Add(nombre.diagnostico1);
            
                return Diag;
        }

        public IQueryable RetrievePacientesDiario() //Retorna un dataset de evoluciones
        {
            DateTime d = DateTime.Parse(fecha);
           
            var query = from p in entities.evoluciones
                        where p.fecha.Year== d.Year && p.fecha.Month == d.Month && p.fecha.Day == d.Day
                        select new { p.fecha, p.expediente,p.id_diagnostico, p.evaluador, p.notas };

            return query;
        }

        public IQueryable BusquedaporRangoFecha(DateTime fechainit, DateTime fechafin) 
        {
          
            var query = from p in entities.evoluciones
                            where p.fecha.Year >= fechainit.Year && p.fecha.Month >= fechainit.Month && p.fecha.Day >= fechainit.Day &&
                                  p.fecha.Year <= fechafin.Year && p.fecha.Month <= fechafin.Month && p.fecha.Day <= fechafin.Day
                            select new { p.fecha, p.expediente,p.id_diagnostico, p.evaluador, p.notas };

                return query;
            
        }

        public void GuardarSeguimientoPacientes(int id,int prefix, int numexp, string doctor,string patologia,string observacion) {
            
            try{
                 int idpatologia = GetPatologiasId(patologia);
                 DateTime date = DateTime.Parse(fecha);
                 DataAccess.evolucione evo = new DataAccess.evolucione();

                 evo.id = id;
                 evo.fecha = date;
                 evo.prefijo = prefix;
                 evo.expediente = numexp;
                 evo.id_diagnostico = idpatologia;
                 evo.evaluador = doctor;
                 evo.notas = observacion;

                 entities.evoluciones.AddObject(evo);
                 entities.SaveChanges();

            }catch(Exception err){
                 throw new Exception(err.ToString() + "--SeguimientoPacientes.cs / GuardarSeguimientoPacientes()");
            }

        }
        
        #endregion
    }
}
