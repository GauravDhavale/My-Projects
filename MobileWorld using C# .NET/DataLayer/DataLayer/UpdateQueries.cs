using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DataLayer
{
    public class UpdateQueries
    {
        SqlConnection con;

        public void getConnection()
        {
            String conString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            con = new SqlConnection(conString);
        }

        public int setPriceQuant(int did, int price, int quant, String username)
        {
            getConnection();
            SqlCommand cmd = new SqlCommand("updateprodseller", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@sellerprice", price);
            cmd.Parameters.AddWithValue("@quantity", quant);
            cmd.Parameters.AddWithValue("@did", did);
            cmd.Parameters.AddWithValue("@username", username);
            con.Open();
            int status = cmd.ExecuteNonQuery();
            con.Close();
            return status;
        }

        public int dl_updatespec(int did, string brand,string  model,string  memory,int price,string  ram,string rom, string  cpu,string  camera,string  network, string  simtype,string wifi,string dimension)
        {
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "updatespecification";
            cmd.Parameters.AddWithValue("@did",did);
            cmd.Parameters.AddWithValue("@brand", brand);
            cmd.Parameters.AddWithValue("@model",model);
            cmd.Parameters.AddWithValue("@memory",memory);
            cmd.Parameters.AddWithValue("@price",price);
            cmd.Parameters.AddWithValue("@ram",ram);
            cmd.Parameters.AddWithValue("@rom",ram);
            cmd.Parameters.AddWithValue("@cpu",cpu);
            cmd.Parameters.AddWithValue("@camera",camera);
            cmd.Parameters.AddWithValue("@wifi", wifi);
            cmd.Parameters.AddWithValue("network",network);
            cmd.Parameters.AddWithValue("@simtype",simtype);
            cmd.Parameters.AddWithValue("@dimension",dimension);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;                       
        }

        public int dl_Update(String name, String address, String email, String contactno, String username)
        {
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("Updateprofile", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@contactno", contactno);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
    }
}
