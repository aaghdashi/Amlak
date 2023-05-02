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
    public partial class News : System.Web.UI.Page
    {
        Class_Melk New_user = new Class_Melk();
        string _command_str;
        SqlConnection New_connection = new SqlConnection();
        SqlCommand New_command = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_insert_Click(object sender, EventArgs e)
        {
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.CommandText = "INSERT INTO news(title, [content], date_insert) VALUES('"+TextBox_title.Text.Trim()+"','"+TextBox_content.Text.Trim()+"','"+DateTime.Now.Date+"')";
                New_command.Connection = New_connection;
                New_command.ExecuteNonQuery();
                Literal_insert.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_insert.Text = "اطلاعات شماثبت نشد.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }

        }

        protected void LinkButton_insert_Click(object sender, EventArgs e)
        {
            MultiView_news.ActiveViewIndex = 0;
        }

        protected void LinkButton_show_Click(object sender, EventArgs e)
        {
            MultiView_news.ActiveViewIndex = 1;
        }

        protected void GridView_News_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl = (Label)e.Row.FindControl("Label_Date");
            if(lbl!=null)
            {
                WebApplication6.Date_Convert dt = new WebApplication6.Date_Convert();
                lbl.Text = dt.C_Date_en_to_fa(lbl.Text);
            }
        }
    }
}