﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Proyecto_V.Models;
namespace Proyecto_V.Clases
{
    public class Cls_Encuentros:Cls_Torneo
    {
        //INSTANCIAS
        #region INSTANCIAS
        programacion5Entities _modeloDB = new programacion5Entities();
        #endregion


        //ATRIBUTOS
        #region ATRIBUTOS
        public DateTime FechaEncuentro { get; set; }
        public int IdCasa { get; set; }
        public int IdVisita { get; set; }
        public int GolCasa { get; set; }
        public int GolVisita { get; set; }
        public Boolean Estado { get; set; }
        #endregion


        //COSNTRUCTORES
        #region COSNTRUCTORES
        public Cls_Encuentros()
        {

        }
        #endregion


        //METODOS
        #region METODOS
        //METODO CONSULTA LOS EQUIPOS POR EL TORNEO
        public List<SP_CONSULTAR_EQUIPOS_ECUENTRO_Result> pc_cosultar_equipos_casa_x_torneo()
        {
            return this._modeloDB.SP_CONSULTAR_EQUIPOS_ECUENTRO(this.idConsecutivo_Torneo,null).ToList();
        }

        //METODO CONSULTA LOS EQUIPOS POR EL TORNEO
        public List<SP_CONSULTAR_EQUIPOS_ECUENTRO_Result> pc_cosultar_equipos_visita_x_torneo()
        {
            return this._modeloDB.SP_CONSULTAR_EQUIPOS_ECUENTRO(this.idConsecutivo_Torneo,this.idConsecutivo).ToList();
        }

        //METODO REGISTRA UN ENCUENTRO

        public string pc_registrar_encuentro()
        {
            string mensaje = "";
            int filas = 0;
            try
            {
                filas = this._modeloDB.SP_REGISTRAR_ENCUENTRO_X_TORNEO(this.IdCasa, this.IdVisita, this.idConsecutivo_Torneo, this.FechaEncuentro);
            }
            catch (Exception ex)
            {
                mensaje = ex.Message;
            }
            if (filas > 0)
            {
                mensaje = "Exito al registrar el partido";
            }
            return mensaje;
        }

        //METODO CONSULTA LOS PARTIDOS
        public List<SP_CONSULTAR_PARTIDOS_POR_TORNEO_Result> pc_consultar_partidos()
        {
            return this._modeloDB.SP_CONSULTAR_PARTIDOS_POR_TORNEO(this.idConsecutivo_Torneo).ToList();
        }
        #endregion
    }
}