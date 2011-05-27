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
    public class AdministradordeSistema
    {
        
        #region variables
        private Security security;
        #endregion

        #region gets y sets

        #endregion

        #region constructores
        public AdministradordeSistema()
        {
            security = new Security();
        }        
        #endregion

        public void crearPermiso(string name, string description)
        {
            try
            {
                security.crear_permiso(name, description);
                
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --ADMIN!!!");
            }
        }

        public void crearRol(string description, List<string> licences)
        {
            try
            {
                security.crear_rol(description, licences);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --ADMIN!!!");
            }
        }

        public void eliminarPermiso(string identity)
        {
            try
            {
                security.eliminar_permiso(identity);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --ADMIN!!!");
            }
        }

        public void eliminarRol(int identity)
        {
            try
            {
                security.eliminar_rol(identity);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --ADMIN!!!");
            }
        }

        public void editarRol(int identity, string description, List<string> grants, List<string> revokes)
        {
            try
            {
                security.editar_rol(identity, description, grants, revokes);
            }
            catch (Exception e)
            {
                throw new Exception(e.ToString() + " --ADMIN!!!");
            }
        }
    }
}
