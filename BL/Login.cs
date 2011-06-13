using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;

namespace BL
{
    public class Login
    {
        #region Variables
        DataAccess.teletonEntities entidad;
        private string userName;
        private string password;
        private string msg; //mensaje de error del login... es usado para debugging
        #endregion

        public Login(string userName, string password)
        {
            try
            {
                this.userName = userName;
                this.password = password;
                this.msg = "";
                entidad = new DataAccess.teletonEntities();
            }catch(Exception ex)
            {
                throw new Exception(ex.ToString() + "  --Login.cs / Login()");
            }
        }

        public bool validateUser()
        {
            try
            {
                var usuarioQuery = entidad.usuarios.Where(USER => USER.username == userName && USER.password == password).FirstOrDefault();
                if (usuarioQuery != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString() + "  --Login.cs / validateUser()");
            }
        }

        public long getIdUser()
        {

            var id = from l in entidad.usuarios
                     where l.username == userName && l.password == password
                     select l.empleado;

            return id.First();
        }
    }
}
