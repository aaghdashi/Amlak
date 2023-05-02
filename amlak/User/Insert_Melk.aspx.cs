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
    public partial class Insert_Melk : System.Web.UI.Page
    {
        Class_Melk New_user=new Class_Melk();
         string _command_str;
        SqlConnection New_connection=new SqlConnection();
        SqlCommand New_command = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton_vila_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 2;

        }

        protected void LinkButton_bagh_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 0;
        }

        protected void LinkButton_zamin_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 1;

        }

        protected void LinkButton_khaneh_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 3;

        }

        protected void Button_Insert_bagh_Click(object sender, EventArgs e)
        {
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.CommandText = "INSERT INTO melk_baghe  (ID_ostan, ID_shahr, ID_Member, rosta, address, metrazh, type, mahsol, fasele_shar, aj_fo, ghaimat, description, date_insert,  em_ab, em_bargh, em_gaz, em_telephone, em_jhah, em_khane_vilai, em_estakhr) VALUES ('" + DropDownList_ostan_bagh.SelectedValue + "','" + DropDownList_shahr_bagh.SelectedValue + "','" + Session["id_user"] + "','" + TextBox_rosta_bagh.Text.Trim() + "','" + TextBox_address_bagh.Text.Trim() + "','" + Textbox_metrazh_bagh.Text.Trim() + "',N'" + DropDownList_type_bagh.SelectedValue.ToString() + "','" + TextBox_mahsol_bagh.Text.Trim() + "','" + TextBox_fasele_bagh.Text.Trim() + "',N'" + DropDownList_ajfo_bagh.SelectedValue.ToString() + "','" + TextBox_ghaimat_bagh.Text.Trim() + "','"+TextBox_description_bagh.Text.Trim()+"','" + DateTime.Now.Date + "','"+CheckBox_ab_bagh.Checked+"','"+CheckBox_bargh_bagh.Checked+"','"+CheckBox_gaz_bagh.Checked+"','"+CheckBox_telephone_bagh.Checked+"','"+CheckBox_jhah_bagh.Checked+"','"+CheckBox_khanevila_bagh.Checked+"','"+CheckBox_estakhr_bagh.Checked+"')";
                New_command.Connection = New_connection;
                New_command.ExecuteNonQuery();
                Literal_State_bagh.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_State_bagh.Text = "اطلاعات شماثبت نشد.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }
        }

        protected void DropDownList_ostan_bagh_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataReader DR;
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.CommandText = "SELECT ID,name from shahr WHERE ID_ostan='" + DropDownList_ostan_bagh.SelectedValue + "'";
            New_command.Connection = New_connection;
            DR = New_command.ExecuteReader();
            DropDownList_shahr_bagh.Items.Clear();
            while (DR.Read())
            {
                ListItem list_user = new ListItem();
                list_user.Value = DR[0].ToString();
                list_user.Text = DR[1].ToString();
                DropDownList_shahr_bagh.Items.Add(list_user);
            }
            DR.Close();
            New_connection.Close();
        }

        protected void DropDownList_ostan_zamin_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataReader DR;
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.CommandText = "SELECT ID,name from shahr WHERE ID_ostan='" + DropDownList_ostan_zamin.SelectedValue + "'";
            New_command.Connection = New_connection;
            DR = New_command.ExecuteReader();
            DropDownList_shahr_zamin.Items.Clear();
            while (DR.Read())
            {
                ListItem list_user = new ListItem();
                list_user.Value = DR[0].ToString();
                list_user.Text = DR[1].ToString();
                DropDownList_shahr_zamin.Items.Add(list_user);
            }
            DR.Close();
            New_connection.Close();
        }

        protected void DropDownList_ostan_villa_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataReader DR;
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.CommandText = "SELECT ID,name from shahr WHERE ID_ostan='" + DropDownList_ostan_villa.SelectedValue + "'";
            New_command.Connection = New_connection;
            DR = New_command.ExecuteReader();
            DropDownList_shahr_villa.Items.Clear();
            while (DR.Read())
            {
                ListItem list_user = new ListItem();
                list_user.Value = DR[0].ToString();
                list_user.Text = DR[1].ToString();
                DropDownList_shahr_villa.Items.Add(list_user);
            }
            DR.Close();
            New_connection.Close();
        }

        protected void DropDownList_Ostan_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataReader DR;
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.CommandText = "SELECT ID,name from shahr WHERE ID_ostan='" + DropDownList_Ostan.SelectedValue + "'";
            New_command.Connection = New_connection;
            DR = New_command.ExecuteReader();
            DropDownList_City.Items.Clear();
            while (DR.Read())
            {
                ListItem list_user = new ListItem();
                list_user.Value = DR[0].ToString();
                list_user.Text = DR[1].ToString();
                DropDownList_City.Items.Add(list_user);
            }
            DR.Close();
            New_connection.Close();
        }

        protected void Button_Insert_zamin_Click(object sender, EventArgs e)
        {
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.CommandText = "INSERT INTO melk_zamin (ID_Member, ID_ostan, ID_shahr, metrazh,state, fasele_shahr, ghaimat, type, address, description, date_insert) VALUES ('"+Session["id_user"]+"','"+DropDownList_ostan_zamin.Text.ToString()+"','"+DropDownList_shahr_zamin.Text.ToString()+"','"+TextBox_metrazh_zamin.Text.Trim()+"',N'"+DropDownList_state_zamin.Text.ToString()+"','"+TextBox_fasele_zamin.Text.Trim()+"','"+TextBox_ghaimat_zamin.Text.Trim()+"',N'"+DropDownList_type_zamin.Text.ToString()+"','"+TextBox_address_zamin.Text.Trim()+"','"+TextBox_description_zamin.Text+"','"+DateTime.Now.Date+"')";
                New_command.Connection = New_connection;
                New_command.ExecuteNonQuery();
                Literal_State_zamin.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_State_zamin.Text = "اطلاعات شماثبت نشد.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }
        }

        protected void Button_Insert_vila_Click(object sender, EventArgs e)
        {
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.CommandText = "INSERT INTO melk_vila (ID_Member, ID_ostan, ID_shahr, metrazh, state, age, em_ab, em_bargh, em_gaz, em_tele, em_moble, em_estakhr, em_service_ashpaz, em_kafposh, em_entrance, em_yard, em_parking, em_anbari, aj_fo, address, ghaimat, fasele_shahr, description, date_insert) VALUES ('"+Session["id_user"]+"','"+DropDownList_ostan_villa.SelectedValue+"','"+DropDownList_shahr_villa.SelectedValue+"','"+TextBox_metrazh_villa.Text.Trim()+"',N'"+DropDownList_state_villa.Text.ToString()+"','"+TextBox_age_villa.Text.Trim()+"','"+CheckBox_ab_villa.Checked+"','"+CheckBox_bargh_villa.Checked+"','"+CheckBox_gaz_villa.Checked+"','"+CheckBox_telephone_villa.Checked+"','"+CheckBox_mobleh_villa.Checked+"','"+CheckBox_stakher_villa.Checked+"','"+CheckBox_service_villa.Checked+"','"+CheckBox_kaf_villa.Checked+"','"+CheckBox_entrance_villa.Checked+"','"+CheckBox_yard_villa.Checked+"','"+CheckBox_parking_villa.Checked+"','"+CheckBox_anbari_villa.Checked+"',N'"+DropDownList_ajfo_vila.Text.ToString()+"','"+TextBox_address_vila.Text.Trim()+"','"+TextBox_Ghaimat_villa.Text.Trim()+"','"+TextBox_fasele_vila.Text.Trim()+"','"+TextBox_description_vila.Text.Trim()+"','"+DateTime.Now.Date+"')";
                New_command.Connection = New_connection;
                New_command.ExecuteNonQuery();
                Literal_vila.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_vila.Text = "اطلاعات شماثبت نشد.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }
        }

        protected void Button_Insert_khaneh_Click(object sender, EventArgs e)
        {
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.CommandText = "INSERT INTO melk_house  (ID_Member, ID_ostan, ID_shahr, metrazh, age, state, ghaimat, address, va_tele, va_gaz, va_bargh, va_ab, em_asansor, em_anbari, em_yard, em_Enterance, em_parking, em_deadend, aj_fo, type, description, date_insert) VALUES ('"+Session["id_user"]+"','"+DropDownList_Ostan.SelectedValue+"','"+DropDownList_City.SelectedValue+"','"+TextBox_Metrazh.Text.ToString()+"','"+TextBox_age.Text.Trim()+"',N'"+DropDownList_State.Text.ToString()+"','"+TextBox_Ghaimat_khaneh.Text.Trim()+"','"+TextBox_address_khaneh.Text.Trim()+"',N'"+DropDownList_telephone.Text.ToString() +"',N'"+DropDownList_gaz.Text.ToString()+"',N'"+DropDownList_bargh.Text.ToString()+"',N'"+DropDownList_ab.Text.ToString()+"','"+CheckBox_asansor.Checked+"','"+CheckBox_Anbar.Checked+"','"+CheckBox_Yard.Checked+"','"+CheckBox_Entrance.Checked+"','"+CheckBox_Parking.Checked+"','"+CheckBox_Deadlock.Checked+"',N'"+DropDownList_state_khaneh.Text.ToString()+"',N'"+DropDownList_Type.Text.ToString()+"','"+TextBox_description_khaneh.Text.Trim()+"','"+DateTime.Now.Date+"')";
                New_command.Connection = New_connection;
                New_command.ExecuteNonQuery();
                Literal_khaneh.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_khaneh.Text = "اطلاعات شماثبت نشد.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }
        }

       
                  
    }
}