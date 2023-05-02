using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace amlak.User
{
    public partial class Change : System.Web.UI.Page
    {
        Class_Melk New_user = new Class_Melk();
        SqlConnection New_connection = new SqlConnection();
        SqlDataReader _dr;
        SqlCommand New_command = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Change_pass_Click(object sender, EventArgs e)
        {
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                string _Command;
                _Command = "SELECT password FROM Member WHERE ID='" + Session["id_user"] + "' ";
                New_connection.ConnectionString = New_user._Conection_String;
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                _dr = New_command.ExecuteReader();
                _dr.Read();
                if ((string)_dr[0] == TextBox_pass_pre.Text.ToString())
                {
                    New_connection.Close();
                    New_connection.Open();
                    New_command.CommandText = "UPDATE  Member SET password = '" + TextBox_pass_new.Text.Trim() + "'";
                    New_command.Connection = New_connection;
                    New_command.ExecuteNonQuery();
                    Literal_change_password.Text = "اطلاعات شما با موفقیت ثبت شد.";
                }
                else
                {
                    Literal_change_password.Text = "رمز عبور قبلی به درستی وارد نشده است.";
                }
            }
            catch
            {
                Literal_change_password.Text = "اطلاعات شماثبت نشد.";
                throw;
            }
            finally
            {
                _dr.Close();
                New_connection.Close();
            }
        }

        protected void Button_return_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/User/Default.aspx");
        }
    }
}