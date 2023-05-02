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
                _Command = "SELECT * FROM Member WHERE ID='" + Session["id_user"] + "' ";
                New_connection.ConnectionString = new_user._Conection_String;
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                _dr = New_command.ExecuteReader();
                _dr.Read();
                TextBox_name.Text = _dr[1].ToString();
                TextBox_family.Text = _dr[2].ToString();
                TextBox_email.Text = _dr[3].ToString();
                TextBox_telephone.Text = _dr[4].ToString();
                TextBox_address.Text = _dr[5].ToString();
                TextBox_name_account.Text = _dr[6].ToString();
                TextBox_description.Text = _dr[8].ToString();
                TextBox_sec_question.Text = _dr[9].ToString();
                TextBox_sec_answer.Text = _dr[10].ToString();
                _dr.Close();
                New_connection.Close();
            }
        }

        protected void Button_Edit_Click(object sender, EventArgs e)
        {
            string _Command;
            _Command =  " UPDATE  Member SET name ='"+TextBox_name.Text.Trim()+"', family ='"+TextBox_family.Text.Trim()+"', e_mail ='"+TextBox_email.Text.Trim()+"', telephone ='"+TextBox_telephone.Text.Trim()+"', address ='"+TextBox_address.Text.Trim()+"', account_name ='"+TextBox_name_account.Text.Trim()+"', description ='"+TextBox_description.Text.Trim()+"', sec_question ='"+TextBox_sec_question.Text.Trim()+"', sec_answer ='"+TextBox_sec_answer.Text.Trim()+"' WHERE ID='" + Session["id_user"] + "' ";
            New_connection.ConnectionString = new_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                New_command.ExecuteNonQuery();
                Literal_Edit.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_Edit.Text = "در فرآیند ثبت اطلاعات خطایی رخ داده است.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }
        }

        protected void Button_Cancel_Click(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx");
        }
    }
}