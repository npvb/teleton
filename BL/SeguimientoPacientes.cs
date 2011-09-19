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
        public SeguimientoPacientes()
        {
            entities = new teletonEntities();
            fecha = DateTime.Now.Year.ToString();
            fecha = fecha + "-" + (DateTime.Now.Month < 10 ? "0" : "") + DateTime.Now.Month.ToString();
            fecha = fecha + "-" + (DateTime.Now.Day < 10 ? "0" : "") + DateTime.Now.Day.ToString();
        }
        #endregion

        #region Funciones
        
        public string GetFecha()
        {
            return fecha;
        }

        public Int32 GetPatologiasId(string nom_pat)
        {

            int id = 0;

            var query = from diag in entities.diagnosticos
                        where nom_pat == diag.diagnostico1
                        select diag.id;

            id = Convert.ToInt32(query.FirstOrDefault());



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

        public IQueryable RetrievePacientesDiario(int centroid) //Retorna un dataset de evoluciones
        {
            DateTime d = DateTime.Parse(fecha);

            var query = from p in entities.evoluciones
                        join e in entities.pacientes
                        on p.expediente equals e.expediente
                        where p.fecha.Year == d.Year && p.fecha.Month == d.Month && p.fecha.Day == d.Day && p.prefijo==centroid
                        select new { p.fecha, p.expediente, p.id_diagnostico, p.evaluador, p.notas, e.nombres, e.primer_apellido };

            return query;
        }

        public IQueryable BusquedaRapida(string nombres, string apellido, string segundoapellido, string cedula, long centroActual)
        {
            try
            {
                var query = (from p in entities.pacientes
                             where (p.nombres.Contains(nombres) && nombres != "") && p.centro_actual == centroActual
                             select new
                             {
                                 Nombre = p.nombres,
                                 PrimerApellido = p.primer_apellido,
                                 SegundoApellido = p.segundo_apellido,
                                 Cedula = p.cedula,
                                 Expediente = p.expediente
                             }).Union
                             (from p1 in entities.pacientes
                              where (p1.primer_apellido.Contains(apellido) && apellido != "") && p1.centro_actual == centroActual
                              select new
                              {
                                  Nombre = p1.nombres,
                                  PrimerApellido = p1.primer_apellido,
                                  SegundoApellido = p1.segundo_apellido,
                                  Cedula = p1.cedula,
                                  Expediente = p1.expediente
                              }).Union
                              (from p2 in entities.pacientes
                               where (p2.segundo_apellido.Contains(segundoapellido) && segundoapellido != "") && p2.centro_actual == centroActual
                               select new
                               {
                                   Nombre = p2.nombres,
                                   PrimerApellido = p2.primer_apellido,
                                   SegundoApellido = p2.segundo_apellido,
                                   Cedula = p2.cedula,
                                   Expediente = p2.expediente
                               }).Union
                               (from p3 in entities.pacientes
                                where p3.cedula == cedula && p3.centro_actual == centroActual
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

        public IQueryable BusquedaporRangoFecha(DateTime fechainit, DateTime fechafin,int centroid)
        {

            var query = from p in entities.evoluciones
                        join e in entities.pacientes
                        on p.expediente equals e.expediente
                        where p.fecha.Year >= fechainit.Year && p.fecha.Month >= fechainit.Month && p.fecha.Day >= fechainit.Day &&
                              p.fecha.Year <= fechafin.Year && p.fecha.Month <= fechafin.Month && p.fecha.Day <= fechafin.Day && p.prefijo==centroid 
                        select new { p.fecha, p.expediente, p.id_diagnostico, p.evaluador, p.notas,e.nombres,e.primer_apellido };

            return query;

        }

        public bool VerificarPacientes(string numexpediente) {
            try {

                bool found;
                long numexp = Convert.ToInt64(numexpediente);
                var query = from p in entities.pacientes
                            where p.expediente == numexp
                            select p.nombres;

                if (!query.Any())
                {
                    found = false;
                }
                else {
                    found = true;
                }
                return found;  
               
            }catch(Exception ex){
                throw new Exception(ex.ToString());
            
            }
        }

        public int VerificarExpPorCentro(int numexp) {

            long numexpe = Convert.ToInt64(numexp);
            var query = from p in entities.pacientes
                        where p.expediente == numexpe
                        select p.centro_actual;

            int centroactual = Convert.ToInt32(query.First().ToString());
            return centroactual;
        }

        public void GuardarSeguimientoPacientes(int id, int prefix, int numexp, string doctor, string patologia, string observacion)
        {

            try
            {
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

            }
            catch (Exception err)
            {
                throw new Exception(err.ToString() + "--SeguimientoPacientes.cs / GuardarSeguimientoPacientes()");
            }
        }
    }
        #endregion
      
}
