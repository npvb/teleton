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
    public class Usuarios
    {

        #region Variables
        DataAccess.teletonEntities entities;
        #endregion

        #region Constructor
        public Usuarios() {
            entities = new teletonEntities();
        
        }

        #endregion

        #region Funciones


        public List<String> RetrieveEmployees() //Retorna Una Lista de Empleados
        {
            var query = from p in entities.empleados select p;
            List<string> Emp = new List<string>();
            foreach (empleado name in query)
                Emp.Add(name.nombres);
            return Emp;
        }

        public List<String> RetrieveRol() //Retorna Una Lista de Roles
        {
            var query = from r in entities.roles select r;
            List<string> Roles = new List<string>();
            foreach (role name in query)
                Roles.Add(name.descripcion);
            return Roles;
        }

        public void GuardarUsuario(string nombreusuario,string contrasenia,string empleado,List<string>Roles){

          
             DataAccess.usuario USUARIOS = new DataAccess.usuario();

            try
            {
                var query = from i in entities.empleados
                            where empleado == i.nombres
                            select i.id;

                int IdEmp = Convert.ToInt32(query.First());


                     foreach (string username in Roles)
                     {

                        var userRol = (from us in entities.roles
                                     where us.descripcion == username
                                     select us).First();
                        USUARIOS.roles.Add(userRol);
                        USUARIOS.username = nombreusuario;
                     } 
                   
                    USUARIOS.username = nombreusuario;
                    USUARIOS.password = contrasenia;
                    USUARIOS.empleado = IdEmp;

                    entities.usuarios.AddObject(USUARIOS);
                    entities.SaveChanges();

              
            }
            catch (Exception e) {

                throw new Exception(e.ToString());
            }


        }





















        #endregion



    }

}
