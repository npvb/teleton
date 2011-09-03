﻿using System;
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


        public List<String> RetrievePatologias() //Retorna Una Lista de Patologias
        {
            var query = from p in entities.diagnosticos select p;
              List<string> Diag = new List<string>();
                foreach (diagnostico nombre in query)
                    Diag.Add(nombre.diagnostico1);
                return Diag;
        }

        public List<String> RetrievePrueba() //Retorna Una Lista de Patologias
        {
            
            List<string> Diag = new List<string>();
                Diag.Add("03/09/2011");
                Diag.Add("0801");
                Diag.Add("Naville");
                Diag.Add("nada");
            return Diag;
        }
        
        #endregion
    }
}
