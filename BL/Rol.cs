using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess; //para el ADO Entity
using System.Data;// ^^
using System.Data.Objects;// ^^ y haber agregado la referencia a System.Data.Entity -->

namespace BusinessLogic
{
    public class Rol
    {
        #region variables
        DataAccess.TeletonEntities entidad;
        private string id;
        private string nombre;
        private string descripcion;
        private List<string> permisos;
        #endregion

        #region gets y sets
        public string Id
        {
            get { return id; }
            set { id = value; }
        }

        public string nombreRol
        {
            get { return nombre; }
            set { nombre = value; }
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
        public Rol(string identity)
        {
            try
            {
                entidad = new TeletonEntities();
                permisos = new List<string>();

                var rolQuery = from rl in entidad.roles         // alias de tabla
                            where rl.Rol_Codigo == identity     //filtro
                            select rl;                          //proyeccion
                
                DataAccess.role rolTMP = rolQuery.First();//el primer elemento del query
                id = rolTMP.Rol_Codigo;
                nombre = rolTMP.Rol_Nombre;
                descripcion = rolTMP.Rol_Descripcion;

                foreach (DataAccess.permiso per in rolTMP.permisos)
                {
                    permisos.Add(per.Permiso_Codigo);
                }
            } catch(Exception e)
            {
                throw new Exception(e.ToString() + " --ROL!!!");
            }
        }

        public Rol()
        {
            try
            {
                entidad = new TeletonEntities();
                permisos = new List<string>();
                id = nombre = descripcion = "";
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --ROL!!!");
            }
        }
        #endregion

        public List<string> getRoles()
        {
            try
            {
                List<string> rols;

                var allRols = from r in entidad.roles
                              select r.Rol_Codigo;
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
