﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess; 
using System.Data;
using System.Data.Objects;

namespace BL
{
   public class Empleados
    {
        #region Variables
        DataAccess.teletonEntities entities;
        #endregion

        #region Constructor
           public Empleados() {
             entities = new teletonEntities();
        }
        #endregion

           #region Listas
           
           public List<String> RetrievePositionName() 
        {
            var query = from p in entities.cargos select p;
                List<string> Cargos = new List<string>();
                    foreach (cargo name in query)
                          Cargos.Add(name.cargo1);
                     return Cargos;
        }


           public List<String> RetrieveEmployeesName() 
           {
               var query = from e in entities.empleados select e;
                    List<string> nomemp = new List<string>();
                    foreach (empleado emp in query)
                        nomemp.Add(emp.nombres);
                 
               return nomemp;
           }
           #endregion

           #region Gets

         
           public int GetPositionId(string nombrecargo) {
               var query = from pos in entities.cargos
                           where nombrecargo == pos.cargo1
                           select pos.id;
               int posId = Convert.ToInt32(query.First());

               return posId;
           }


           public int GetEmpId(string nombre) {
               var idemp_query = from p in entities.empleados
                                 where p.nombres==nombre
                                 select p.id;
               int emp_id = Convert.ToInt32(idemp_query.First());

               return emp_id;
           
           }

           #endregion

        #region Funciones
           public void GuardarEmpleado(int id, string nombre, string primernombre, string segundonombre, string nombrecargo)
           {
               try
               {

                   int posId = GetPositionId(nombrecargo);


                   DataAccess.empleado emp = new DataAccess.empleado();
                   emp.id = id;
                   emp.nombres = nombre;
                   emp.primer_apellido = primernombre;
                   emp.segundo_apellido = segundonombre;
                   emp.puesto = posId;

                   entities.empleados.AddObject(emp);//Se guarda en la memoria

                   entities.SaveChanges();//Se guarda en la base de datos
               }
               catch (Exception er)
               {
                   throw new Exception(er.ToString());
               }

           }

           public void EditarEmpleado(string usuario,string nombre, string primerapellido, string segundoapellido, string nombrecargo)
           {
               try
               {
               
                   int emp_id = GetEmpId(usuario); //Con el nombre se selecciona el id del empleado
                   int idcargo = GetPositionId(nombrecargo);//Se saca el id del cargo

                   var query = (from e in entities.empleados
                                where e.id==emp_id
                                select e).First();

                   DataAccess.empleado TEMPEMP = query;
                   //TEMPEMP.id = emp_id;
                   TEMPEMP.nombres = nombre;
                   TEMPEMP.primer_apellido = primerapellido;
                   TEMPEMP.segundo_apellido = segundoapellido;
                   TEMPEMP.puesto = idcargo;

                   entities.SaveChanges();

               }
               catch (Exception er)
               {
                   throw new Exception(er.ToString());
               }
           }

           public void EliminarEmpleado(string nombre)
           {
               try
               {

                   int id = GetEmpId(nombre);

                   var query = (from e in entities.empleados
                                where e.id == id
                                select e).First();

                   DataAccess.empleado EMPDELETE = query;
                   entities.DeleteObject(EMPDELETE);
                   entities.SaveChanges();

               }
               catch (Exception er)
               {
                   throw new Exception(er.ToString());

               }

           }
         #endregion


    }
}
