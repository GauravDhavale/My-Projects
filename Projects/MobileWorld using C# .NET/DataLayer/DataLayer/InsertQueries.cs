using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DataLayer
{
    public class InsertQueries
    {
        SqlConnection con;

        public void getConnection()
        {
            String conString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            con = new SqlConnection(conString);
        }

        public int setSpecification(String network, String brand, String model, String sim, String dimension, String cpu, String rom, String ram, String memory, String camera, String wireless, String imgPath, int price)
        {
            getConnection();
            con.Open();
            
            SqlCommand cmd = new SqlCommand("InsertSpecification", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@network",network);
            cmd.Parameters.AddWithValue("@brand",brand);
            cmd.Parameters.AddWithValue("@model",model);
            cmd.Parameters.AddWithValue("@simtype",sim);
            cmd.Parameters.AddWithValue("@dimension",dimension);
            cmd.Parameters.AddWithValue("@cpu",cpu);
            cmd.Parameters.AddWithValue("@rom",rom);
            cmd.Parameters.AddWithValue("@ram",ram);
            cmd.Parameters.AddWithValue("@memory",memory);
            cmd.Parameters.AddWithValue("@camera",camera);
            cmd.Parameters.AddWithValue("@wifi",wireless);
            cmd.Parameters.AddWithValue("@imgPath",imgPath);
            cmd.Parameters.AddWithValue("@price",price);
            int i=cmd.ExecuteNonQuery();
            con.Close();
            return i;           
        }

        public int setRegistration(String UserName, String Password, String Address, String Email, String ContactNo, String Type)
        {
            getConnection();
            con.Open();

            SqlCommand cmd = new SqlCommand("Registration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", UserName);
            cmd.Parameters.AddWithValue("@password", Password);
            cmd.Parameters.AddWithValue("@address", Address);
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@contactno", ContactNo);
            cmd.Parameters.AddWithValue("@type", Type);

            int x = cmd.ExecuteNonQuery();
            con.Close();
            return x;
        }

        public int setProductSeller(String userName, int did, int price, int quantity, String name)
        {
            getConnection();
            con.Open();

            SqlCommand cmd = new SqlCommand("InsertProductSeller", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@username", userName);
            cmd.Parameters.AddWithValue("@did", did);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@name", name);

            return cmd.ExecuteNonQuery();
        }

        public int setRegistration(String UserName, String Password, String Address, String Email, String Name, String ContactNo, String Type)
        {
            getConnection();
            con.Open();

            SqlCommand cmd = new SqlCommand("Registration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", UserName);
            cmd.Parameters.AddWithValue("@password", Password);
            cmd.Parameters.AddWithValue("@address", Address);
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.AddWithValue("@contactno", ContactNo);
            cmd.Parameters.AddWithValue("@type", Type);

            int x = cmd.ExecuteNonQuery();
            con.Close();
            return x;
        }

        public int addtopermanent(String userName, int did, String prodname, int sellerprice, int quantity)
        {
            getConnection();
            con.Open();

            SqlCommand cmd = new SqlCommand("InsertProductPermanent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", userName);
            cmd.Parameters.AddWithValue("@did", did);
            cmd.Parameters.AddWithValue("@prodname", prodname);
            cmd.Parameters.AddWithValue("@sellerprice", sellerprice);
            cmd.Parameters.AddWithValue("@quantity", quantity);

            return cmd.ExecuteNonQuery();
        }
    }
}