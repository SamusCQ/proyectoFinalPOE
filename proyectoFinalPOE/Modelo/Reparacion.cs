﻿namespace proyectoFinalPOE.Modelo
{
    public class Reparacion
    {
        public int IdReparacion { get; set; }
        public int IdCliente { get; set; }
        public int IdCelular { get; set; }
        public int IdEstado { get; set; }
        public string Descripcion { get; set; }
        public int BdEst { get; set; }
    }
}
