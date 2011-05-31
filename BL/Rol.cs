using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess; //para el ADO Entity
using System.Data;// ^^
using System.Data.Objects;// ^^ y haber agregado la referencia a System.Data.Entity -->

namespace BL
{
    public class Rol
    {
        #region variables
        DataAccess.teletonEntities entidad;
        private long id;
        private string descripcion;
        private List<string> permisos;
        #endregion

        #region gets y sets
        public long Id
        {
            get { return id; }
            set { id = value; }
        }

        public string descripcionRol
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public List<string> permisosRol
        {
            get { return permisos; }
            set { permisos = value; }
        }
        #endregion

        #region constructores
        public Rol(int identity)
        {
            try
            {
                entidad = new teletonEntities();
                permisos = new List<string>();

                var rolQuery = from rl in entidad.roles         // alias de tabla
                            where rl.id == identity         //filtro
                            select rl;                          //proyeccion
                
                DataAccess.role rolTMP = rolQuery.First();//el primer elemento del query
                id = rolTMP.id;
                descripcion = rolTMP.descripcion;

                foreach (DataAccess.permiso per in rolTMP.permisos)
                {
                    permisos.Add(per.id);
                }
            } 
            catch(Exception e)
            {
                throw new Exception(e.ToString() + " --ROL!!!");
            }
        }

        public Rol()
        {
            try
            {
                entidad = new teletonEntities();
                permisos = new List<string>();
                id = -1;
                descripcion = "";
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --ROL!!!");
            }
        }
        #endregion

        public List<long> getRoles()
        {
            try
            {
                List<long> rols;

                var allRols = from r in entidad.roles
                              select r.id;
                rols = allRols.ToList();
                return rols;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString() + " --ROL!!!");
            }
        }

        /*List<string> otrosPermisos()
        {
            try
            {
                //List<string> elsePers = new List<string>();                
            }
            catch (Exception ex)
            {
            }
        }*/
    }
}
