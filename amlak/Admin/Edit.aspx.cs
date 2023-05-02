using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace amlak.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        Class_Melk new_user = new Class_Melk();
        SqlDataReader _dr;
        SqlConnection New_connection = new SqlConnection();
        SqlCommand New_command = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string _Command;
                _Command = "SELECT * FROM admin WHERE ID='" + Session["id_admin"] + "' ";
                New_connection.ConnectionString = new_user._Conection_String;
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                _dr = New_command.ExecuteReader();
                _dr.Read();
                TextBox_name.Text = _dr[1].ToString();
                TextBox_family.Text = _dr[2].ToString();
                TextBox_name_account.Text = _dr[3].ToString();
                TextBox_email.Text = _dr[5].ToString();
                TextBox_telephone.Text = _dr[6].ToString();
                TextBox_address.Text = _dr[7].ToString();
                TextBox_sec_question.Text = _dr[8].ToString();
                TextBox_sec_answer.Text = _dr[9].ToString();
                TextBox_description.Text = _dr[10].ToString();               
                _dr.Close();
                New_connection.Close();
            }

        }

        protected void Button_Edit_Click(object sender, EventArgs e)
        {

        }

        protected void Button_Cancel_Click(object sender, EventArgs e)
        {

        }

        protected void Button_Change_pass_Click(object sender, EventArgs e)
        {
            New_connection.ConnectionString = new_user._Conection_String;
            try
            {
                string _Command;
                _Command = "SELECT password FROM admin WHERE ID='" + Session["id_admin"] + "' ";
                New_connection.ConnectionString = new_user._Conection_String;
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                _dr = New_command.ExecuteReader();
                _dr.Read();
                if ((string)_dr[0] == TextBox_pass_pre.Text.ToString())
                {
                    New_connection.Close();
                    New_connection.Open();
                    New_command.CommandText = "UPDATE  admin SET password = '" + TextBox_pass_new.Text.Trim() + "'";
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

        }
    }
}