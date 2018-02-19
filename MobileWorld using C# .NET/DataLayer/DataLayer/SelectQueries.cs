using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;

namespace DataLayer
{
    public class SelectQueries
    {
        SqlConnection con;

        public void getConnection()
        {
            String conString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            con = new SqlConnection(conString);
        }

        public DataTable  getLatestPhones()
        {
            getConnection();
            SqlCommand cmd = new SqlCommand("LatestPhones", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable  dt = new DataTable ();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        public ArrayList getBrand()
        {
            getConnection();
            con.Open();
            ArrayList brandList = new ArrayList();
            SqlCommand cmd = new SqlCommand("BrandList", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                brandList.Add(dr[0]);
            }
            return brandList;
        }

        public DataTable getBrandSpecific(String indexVal)
        {
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("BrandSpecific", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@brand",indexVal);
            DataTable dt = new  DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        public DataTable getPriceRange(int lowPrice, int highPrice)
        {
            getConnection();
            SqlCommand cmd = new SqlCommand("PriceRange", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@lowprice",lowPrice);
            cmd.Parameters.AddWithValue("@highprice",highPrice);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        public ICollection getDetails(int did)
        {
            getConnection();
            SqlCommand cmd = new SqlCommand("getSpecification", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@did", did);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Details");
            return ds.Tables["Details"].Rows;
        }

        public string dl_login(string name, string pswd)
        {
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "loginchk";
            cmd.Parameters.AddWithValue("@uname", name);
            cmd.Parameters.AddWithValue("@pswd", pswd);

            SqlDataAdapter adap = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            string user = "";
            if (dt.Rows.Count == 1)
            {
                user = dt.Rows[0][0].ToString();
            }
            else { user = "no"; }


            con.Close();
            return user;
        }

	    public int GetDID(String brand, String model)
        {
            int descid=0;
            getConnection();
            SqlCommand cmd = new SqlCommand("GetDID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@brand", brand);
            cmd.Parameters.AddWithValue("@model", model);
            con.Open();
            SqlDataReader ds = cmd.ExecuteReader();
            while (ds.Read())
            {
                descid = int.Parse(ds[0].ToString());
            }
            con.Close();
            
            return descid;
        }

        public ArrayList getModel(String brand)
        {
            getConnection();
            con.Open();
            ArrayList modelList = new ArrayList();
            SqlCommand cmd = new SqlCommand("ModelList", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@brand", brand);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                modelList.Add(dr[0]);
            }

            return modelList;
        }


        public DataTable dl_combinesort(string brand, int low,int high)
        {
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("Combinesort",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@brand",brand);
            cmd.Parameters.AddWithValue("@lprice",low);
            cmd.Parameters.AddWithValue("@hprice", high);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable dl_Search(string search)
        {
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("search", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@search",search);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }        
        

        public DataTable getProdSellerUnreviewed()
        {
            getConnection();
            SqlCommand cmd = new SqlCommand("adminreview", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        


        public DataTable seller_search(int did )
        {
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("sellerinfo", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@did", did);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        
        }

        public DataTable getProdSellerInfo(string username)
        {
            getConnection();
            SqlCommand cmd = new SqlCommand("editproduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", username);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        public string prod_image(int did)
        {
            String path = "";
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("imageselect", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@did", did);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                path = dr[0].ToString();
            }
            con.Close();
            return path;        
        }

        public string checkUsername(String Username)
        {
            getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("CheckUsername", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", Username);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            string namechk = "";
            if (dt.Rows.Count == 1)
            {
                namechk = dt.Rows[0][0].ToString();
            }
            else
            {
                namechk = "no";
            }

            con.Close();
            return namechk;
        }

        public DataTable dl_Edit(String username)
        {
            getConnection();

            con.Open();
            SqlCommand cmd = new SqlCommand("Editprofile", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", username);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }   
}
