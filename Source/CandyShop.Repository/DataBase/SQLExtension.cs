using System;
using System.Data.SqlClient;
using System.Linq;

namespace CandyShop.Repository.DataBase
{
    public static class SQLExtension
    {    
        // Essa classe contém os métodos de extensão para leitura de dados
        public static string ReadAsString(this SqlDataReader r, string campo)
        {
            try
            {
                if (r[campo] == DBNull.Value || string.IsNullOrEmpty(r[campo].ToString()))
                    return default(string);

                var tipoT = typeof(string);
                var tipoR = r[campo].GetType();

                return (string) (tipoR == tipoT ||
                                 (tipoT.GetGenericArguments().Any() && tipoR == tipoT.GenericTypeArguments[0])
                    ? r[campo]
                    : Convert.ChangeType(r[campo], tipoT));
            }
            catch
            {
                return string.Empty;
            }
        }

        public static int ReadAsInt(this SqlDataReader r, string campo)
        {
            return r.GetInt32(r.GetOrdinal(campo));
        }

        public static decimal ReadAsDecimal(this SqlDataReader r, string campo)
        {
            return r.GetDecimal(r.GetOrdinal(campo));
        }

        /* A interrogação nesse caso indica que o valor aqui pode vir nulo e permite 
           que isso aconteça sem problemas */
        public static decimal? ReadAsDecimalNull(this SqlDataReader r, string campo)
        {
            var ordinal = r.GetOrdinal(campo);
            return r.IsDBNull(ordinal) ? (decimal?)null : r.GetDecimal(r.GetOrdinal(campo)) ;
        }

        public static DateTime ReadAsDateTime(this SqlDataReader r, string campo)
        {
            return r.GetDateTime(r.GetOrdinal(campo));
        }                       
    }
}
