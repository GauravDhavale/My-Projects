using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DataLayer
{
    public class DeleteQueries
    {
        SqlConnection con;

        public void getConnection()
        {
            String conString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            con = new SqlConnection(conString);
        }

        public int deleteSellerProd(int did, String username)
        {
            getConnection();
            con.Open();

            SqlCommand cmd = new SqlCommand("DeleteProductSeller", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@did", did);
           
            return cmd.ExecuteNonQuery();
        }
    }
}
