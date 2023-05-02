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
    public partial class Show_User : System.Web.UI.Page
    {
        Class_Melk New_user = new Class_Melk();
        SqlDataReader _dr;

        SqlConnection New_connection = new SqlConnection();
        SqlConnection New_connection2 = new SqlConnection();

        SqlCommand New_command = new SqlCommand();
        static String _id_user;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView_show_user_SelectedIndexChanged(object sender, EventArgs e)
        {
            _id_user = GridView_show_user.SelectedValue.ToString();
            MultiView_user.ActiveViewIndex = 1;
            string _Command;
            _Command = "SELECT name, family, e_mail, telephone, address, account_name, description, date_signup FROM Member WHERE ID='" + _id_user + "' ";
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.Connection = New_connection;
            New_command.CommandText = _Command;
            _dr = New_command.ExecuteReader();
            _dr.Read();
            Label_Name.Text = _dr[0].ToString();
            Label_family.Text = _dr[1].ToString();
            Label_email.Text = _dr[2].ToString();
            Label_telephone.Text = _dr[3].ToString();
            Label_address.Text = _dr[4].ToString();
            Label_username.Text = _dr[5].ToString();
            Label_description.Text = _dr[6].ToString();
            Label_date.Text = _dr[7].ToString();
            _dr.Close();
            New_connection.Close();
        }

        protected void Button_return_Click(object sender, EventArgs e)
        {
            MultiView_user.ActiveViewIndex = 0;
        }

        protected void GridView_show_user_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl = (Label)e.Row.FindControl("Label_Date");
            if(lbl !=null)
            {
                WebApplication6.Date_Convert dt = new WebApplication6.Date_Convert();
                lbl.Text = dt.C_Date_en_to_fa(lbl.Text);
            }
        }
    }
}