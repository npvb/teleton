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
    public class Permiso
    {
        #region variables
        DataAccess.teletonEntities entidad;
        private String nombre;
        private String descripcion;
        #endregion

        #region gets y sets
        public String nombrePermiso
        {
            get { return nombre;}
            set { nombre = value; }
        }

        public String descripcionPermiso
        {
            get { return descripcion;}
            set { descripcion = value; }
        }
        #endregion

        #region constructores
        public Permiso()
        {
            try
            {
                entidad = new teletonEntities();
                nombre = descripcion = "";                
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --PERMISO!!!");
            }
        }

        public Permiso(string name)
        {
            try
            {     
                entidad = new teletonEntities();

                var query = from per in entidad.permisos        // alias de tabla
                            where per.id == name    //filtro
                            select per;                         //proyeccion

                DataAccess.permiso permisoTMP = query.First();
                nombre = permisoTMP.id;
                descripcion = permisoTMP.descripcion;
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --PERMISO!!!");
            }
        }        
        #endregion

        public List<string> getPermisos()
        {
            try
            {
                List<string> pers; //= new List<string>();

                var allpers = from p in entidad.permisos
                              select p.id;

                pers = allpers.ToList();
                return pers;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString() + " --PERMISO!!!");
            }
        }
    }
}
