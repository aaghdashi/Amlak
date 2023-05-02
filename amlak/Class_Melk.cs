using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace amlak
{
    public class Class_Melk
    {
        //create connection 
        SqlConnection new_connection = new SqlConnection();
        SqlCommand new_command = new SqlCommand();
        public  DataSet ds=new DataSet();
        SqlDataAdapter Da=new SqlDataAdapter();
        public SqlDataReader DR;

        //variable
        public Boolean login_State;
        public Boolean signup_State;
        public int id;
        public  string date_sinup;


        public Class_Melk()
        {
            new_connection.ConnectionString = ConfigurationManager.ConnectionStrings["Amlak"].ConnectionString;
        }

        public string _Conection_String
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["Amlak"].ConnectionString;
            }
        }

        public bool login_Method(string _Command)
        {
            SqlDataReader dr;

            new_connection.Open();
            new_command.Connection = new_connection;
            new_command.CommandText = _Command;
            dr = new_command.ExecuteReader();
            if (dr.HasRows)
            {
                login_State = true;
                dr.Read();
                id =(int) dr[0];
               // date_sinup = dr[1].ToString();
                dr.Close();
            }
            else
                login_State = false;
            new_connection.Close();

            return login_State;
        }

        public bool signup_Method(string _Command)
        {
            new_connection.Open();
            new_command.CommandText = _Command;
            new_command.Connection = new_connection;

            try
            {
                new_command.ExecuteNonQuery();
                signup_State = true;
            }
            catch
            {
                signup_State = false;
                throw;
            }
            finally
            {
                new_connection.Close();
            }
            return signup_State;
        }

        public SqlDataReader info_user(string _Command)
        {
            new_connection.Open();
            new_command.CommandText = _Command;
            new_command.Connection = new_connection;

            try
            {
                DR = new_command.ExecuteReader();                
            }
            catch
            {
                throw;
            }
            finally
            {
                new_connection.Close();
            }
            return DR;

        }
    }
}