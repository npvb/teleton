using System;
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

        public List<String> RetrievePositionName() //Retorna Una Lista de Roles
        {
            var query = from p in entities.cargos select p;
            List<string> Cargos = new List<string>();
            foreach (cargo name in query)
                Cargos.Add(name.cargo1);
            return Cargos;
        }


       public void GuardarEmpleado(int id,string nombre, string primernombre,string segundonombre,string nombrecargo) {
           try
           {
               var query = from pos in entities.cargos
                           where nombrecargo == pos.cargo1
                           select pos.id;
               int posId = Convert.ToInt32(query.First());

               DataAccess.empleado emp = new DataAccess.empleado();
               emp.id = id;
               emp.nombres = nombre;
               emp.primer_apellido = primernombre;
               emp.segundo_apellido = segundonombre;
               emp.puesto = posId;

               entities.empleados.AddObject(emp);//Se guarda en la memoria

               entities.SaveChanges();//Se guarda en la base de datos
           }
           catch (Exception e) { 
           
           }
                 
        }
    }
}
