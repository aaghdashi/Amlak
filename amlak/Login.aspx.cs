using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace amlak
{
    public partial class Login : System.Web.UI.Page
    {
        SqlDataReader _dr;
        SqlConnection New_connection = new SqlConnection();
        SqlCommand New_command = new SqlCommand();
        Class_Melk New_login = new Class_Melk();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_signup_Click(object sender, EventArgs e)
        {
            Server.Transfer("Signup.aspx");
        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            string _Command ;
            if (RadioButtonList_member.SelectedIndex==0)
            {
                _Command = "SELECT ID, date_signup FROM Member WHERE (account_name='" + TextBox_Account_Name.Text + "' AND password='" + TextBox_Password.Text + "')";
                New_login.login_Method(_Command);
                if (New_login.login_State)
                {
                    Session["id_user"] = New_login.id;
                    Response.Redirect("~/User/Default.aspx");
                }
                else
                    Literal_Login_state.Text = "کاربر گرامی ! رمز عبور و یا نام کاربری خود را اشتباه وارد کرده اید.";
            }
            else if (RadioButtonList_member.SelectedIndex == 1)
            {
                _Command = "SELECT ID FROM admin WHERE (account_name='" + TextBox_Account_Name.Text + "' AND password='" + TextBox_Password.Text + "')";
                New_login.login_Method(_Command);
                if (New_login.login_State)
                {
                    Session["id_admin"] = New_login.id;
                    Response.Redirect("~/Admin/Default.aspx");
                }
                else
                    Literal_Login_state.Text = "کاربر گرامی ! رمز عبور و یا نام کاربری خود را اشتباه وارد کرده اید.";
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            MultiView_Login.ActiveViewIndex = 0;
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            MultiView_Login.ActiveViewIndex = 1;
        }

        protected void Button_submit_Click(object sender, EventArgs e)
        {

            if (RadioButtonList_Recovry_Password.SelectedIndex == 0)
            {
                New_connection.ConnectionString = New_login._Conection_String;
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = "SELECT account_name,password FROM Member WHERE account_name='"+TextBox_rec_username.Text.Trim()+"' AND sec_question='"+TextBox_rec_ques.Text.Trim()+"' AND sec_answer='"+TextBox_rec_answ.Text.Trim()+"'";
                _dr = New_command.ExecuteReader();
                _dr.Read();
                     Literal_Recovery_userpass.Text= "نام کاربری:" + _dr[0].ToString() + ";" + "رمز عبور:" + _dr[1].ToString();  
                _dr.Close();
                New_connection.Close();
            }
            else if (RadioButtonList_Recovry_Password.SelectedIndex == 1)
            {
                New_connection.ConnectionString = New_login._Conection_String;
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = "SELECT account_name,password FROM admin WHERE account_name='" + TextBox_rec_username.Text.Trim() + "' AND sec_Q='" + TextBox_rec_ques.Text.Trim() + "' AND sec_A='" + TextBox_rec_answ.Text.Trim() + "'";
                _dr = New_command.ExecuteReader();
                _dr.Read();
                Literal_Recovery_userpass.Text = "نام کاربری:" + _dr[0].ToString() + ";" + "رمز عبور:" + _dr[1].ToString();
                _dr.Close();
                New_connection.Close();
            }
        }
    }
}