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
    public partial class Edit_Melk : System.Web.UI.Page
    {
        Class_Melk New_user = new Class_Melk();
        string _command_str;
        SqlDataReader _dr;

        SqlConnection New_connection = new SqlConnection();
        SqlConnection New_connection2 = new SqlConnection();

        SqlCommand New_command = new SqlCommand();
        static String _id_bagh;
        static String _id_vila;
        static String _id_zamin;
        static String _id_khane;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ostan_bagh()
        {
            SqlDataReader DR;
            New_connection2.ConnectionString = New_user._Conection_String;
            New_connection2.Open();
            New_command.CommandText = "SELECT ID,name from shahr WHERE ID_ostan='" + DropDownList_ostan_bagh.SelectedValue + "'";
            New_command.Connection = New_connection2;
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
            New_connection2.Close();
        }

        void ostan_zamin()
        {
            SqlDataReader DR;
            New_connection2.ConnectionString = New_user._Conection_String;
            New_connection2.Open();
            New_command.CommandText = "SELECT ID,name from shahr WHERE ID_ostan='" + DropDownList_ostan_zamin.SelectedValue + "'";
            New_command.Connection = New_connection2;
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
            New_connection2.Close();
        }

        void ostan_vila()
        {
            SqlDataReader DR;
            New_connection2.ConnectionString = New_user._Conection_String;
            New_connection2.Open();
            New_command.CommandText = "SELECT ID,name from shahr WHERE ID_ostan='" + DropDownList_ostan_villa.SelectedValue + "'";
            New_command.Connection = New_connection2;
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
            New_connection2.Close();
        }

        void ostan_khaneh()
        {
            SqlDataReader DR;
            New_connection2.ConnectionString = New_user._Conection_String;
            New_connection2.Open();
            New_command.CommandText = "SELECT ID,name from shahr WHERE ID_ostan='" + DropDownList_Ostan.SelectedValue + "'";
            New_command.Connection = New_connection2;
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
            New_connection2.Close();
        }

        protected void DropDownList_ostan_bagh_SelectedIndexChanged(object sender, EventArgs e)
        {
            ostan_bagh();
        }

        protected void DropDownList_ostan_zamin_SelectedIndexChanged(object sender, EventArgs e)
        {
            ostan_zamin();
        }

        protected void DropDownList_ostan_villa_SelectedIndexChanged(object sender, EventArgs e)
        {
            ostan_vila();
        }

        protected void DropDownList_Ostan_SelectedIndexChanged(object sender, EventArgs e)
        {
            ostan_khaneh();
        }

      
        protected void GridView_Edit_bagh_SelectedIndexChanged(object sender, EventArgs e)
        {
            _id_bagh = GridView_Edit_bagh.SelectedValue.ToString();
            MultiView_melk.ActiveViewIndex = 0;
            string _Command;
            _Command = "SELECT ID_ostan, ID_shahr, rosta, address, metrazh, type, mahsol, fasele_shar, aj_fo, ghaimat, description, em_ab, em_bargh, em_gaz, em_telephone, em_jhah, em_khane_vilai, em_estakhr FROM melk_baghe WHERE ID='" + _id_bagh + "' ";
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.Connection = New_connection;
            New_command.CommandText = _Command;
            _dr = New_command.ExecuteReader();
            _dr.Read();
            DropDownList_ostan_bagh.SelectedValue = _dr[0].ToString();
            ostan_bagh();
            DropDownList_shahr_bagh.SelectedValue = _dr[1].ToString();
            TextBox_rosta_bagh.Text = (string)_dr[2];
            TextBox_address_bagh.Text = (string)_dr[3];
            Textbox_metrazh_bagh.Text = _dr[4].ToString();
            DropDownList_type_bagh.SelectedValue = _dr[5].ToString();
            TextBox_mahsol_bagh.Text = (string)_dr[6];
            TextBox_fasele_bagh.Text = (string)_dr[7];
            DropDownList_ajfo_bagh.SelectedValue = _dr[8].ToString();
            TextBox_ghaimat_bagh.Text = (string)_dr[9];
            TextBox_description_bagh.Text = (string)_dr[10];
            CheckBox_ab_bagh.Checked = (bool)_dr[11];
            CheckBox_bargh_bagh.Checked = (bool)_dr[12];
            CheckBox_gaz_bagh.Checked = (bool)_dr[13];
            CheckBox_telephone_bagh.Checked = (bool)_dr[14];
            CheckBox_jhah_bagh.Checked = (bool)_dr[15];
            CheckBox_khanevila_bagh.Checked = (bool)_dr[16];
            CheckBox_estakhr_bagh.Checked = (bool)_dr[17];
            _dr.Close();
            New_connection.Close();
        }

        protected void GridView_Edit_vila_SelectedIndexChanged(object sender, EventArgs e)
        {
            _id_vila = GridView_Edit_vila.SelectedValue.ToString();
            MultiView_melk.ActiveViewIndex = 2;
            string _Command;
            _Command = "SELECT  ID_ostan, ID_shahr, metrazh, age, state, em_ab, em_bargh, em_gaz, em_tele, em_moble, em_estakhr, em_kafposh, em_service_ashpaz, em_entrance, em_parking, em_yard, em_anbari, aj_fo, address, ghaimat, fasele_shahr, description FROM   melk_vila WHERE ID='" + _id_vila + "' ";
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.Connection = New_connection;
            New_command.CommandText = _Command;
            _dr = New_command.ExecuteReader();
            _dr.Read();
            DropDownList_ostan_villa.SelectedValue = _dr[0].ToString();
            ostan_vila();
            DropDownList_shahr_villa.SelectedValue = _dr[1].ToString();           
            TextBox_metrazh_villa.Text = _dr[2].ToString();
            TextBox_age_villa.Text = _dr[3].ToString();
            DropDownList_state_villa.SelectedValue = _dr[4].ToString();
            CheckBox_ab_villa.Checked = (bool)_dr[5];
            CheckBox_bargh_villa.Checked = (bool)_dr[6];
            CheckBox_gaz_villa.Checked = (bool)_dr[7];
            CheckBox_telephone_villa.Checked = (bool)_dr[8];
            CheckBox_mobleh_villa.Checked = (bool)_dr[9];
            CheckBox_stakher_villa.Checked=(bool)_dr[10];
            CheckBox_kaf_villa.Checked = (bool)_dr[11];
            CheckBox_service_villa.Checked = (bool)_dr[12];
            CheckBox_entrance_villa.Checked = (bool)_dr[13];
            CheckBox_parking_villa.Checked = (bool)_dr[14];
            CheckBox_yard_villa.Checked = (bool)_dr[15];
            CheckBox_anbari_villa.Checked = (bool)_dr[16];
            DropDownList_ajfo_vila.SelectedValue = _dr[17].ToString();
            TextBox_address_vila.Text = (string)_dr[18].ToString();
            TextBox_Ghaimat_villa.Text = (string)_dr[19];
            TextBox_fasele_vila.Text = (string)_dr[20];
            TextBox_description_vila.Text = (string)_dr[21];
            _dr.Close();
            New_connection.Close();
        }

        protected void GridView_Edit_zamin_SelectedIndexChanged(object sender, EventArgs e)
        {
            _id_zamin = GridView_Edit_zamin.SelectedValue.ToString();
            MultiView_melk.ActiveViewIndex = 1;
            string _Command;
            _Command = "SELECT ID_ostan, ID_shahr, metrazh, fasele_shahr, ghaimat, state, type, address, description FROM  melk_zamin WHERE ID='" + _id_zamin + "' ";
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.Connection = New_connection;
            New_command.CommandText = _Command;
            _dr = New_command.ExecuteReader();
            _dr.Read();
            DropDownList_ostan_zamin.SelectedValue = _dr[0].ToString();
            ostan_zamin();
            DropDownList_shahr_zamin.SelectedValue = _dr[1].ToString();
            TextBox_metrazh_zamin.Text = _dr[2].ToString();
            TextBox_fasele_zamin.Text = _dr[3].ToString();
            TextBox_ghaimat_zamin.Text = _dr[4].ToString();
            DropDownList_state_zamin.SelectedValue = _dr[5].ToString();
            DropDownList_type_zamin.SelectedValue = _dr[6].ToString();
            TextBox_address_zamin.Text = _dr[7].ToString();
            TextBox_description_zamin.Text = _dr[8].ToString();

            _dr.Close();
            New_connection.Close();
        }

   
        protected void Button_Edit_bagh_Click(object sender, EventArgs e)
        {
            string _Command;
            _Command = "UPDATE melk_baghe SET ID_ostan=N'" + DropDownList_ostan_bagh.SelectedValue.ToString() + "',ID_shahr=N'"+DropDownList_shahr_bagh.SelectedValue.ToString()+"' ,rosta ='" + TextBox_rosta_bagh.Text.Trim() + "', address ='" + TextBox_address_bagh.Text.Trim() + "', metrazh ='" + Textbox_metrazh_bagh.Text.Trim() + "', type =N'" + DropDownList_type_bagh.SelectedValue.ToString() + "', mahsol ='" + TextBox_mahsol_bagh.Text.ToString() + "', fasele_shar ='" + TextBox_fasele_bagh.Text.Trim() + "', aj_fo =N'" + DropDownList_ajfo_bagh.SelectedValue.ToString() + "', ghaimat ='" + TextBox_ghaimat_bagh.Text.Trim() + "', description ='" + TextBox_description_bagh.Text.Trim() + "', em_ab ='" + CheckBox_ab_bagh.Checked + "', em_bargh ='" + CheckBox_bargh_bagh.Checked + "', em_gaz ='" + CheckBox_gaz_bagh.Checked + "', em_telephone ='" + CheckBox_telephone_bagh.Checked + "', em_jhah ='" + CheckBox_jhah_bagh.Checked + "', em_khane_vilai ='" + CheckBox_khanevila_bagh.Checked + "', em_estakhr ='" + CheckBox_estakhr_bagh.Checked + "' WHERE ID='" + _id_bagh + "'";
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                New_command.ExecuteNonQuery();
                Literal_State_bagh.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_State_bagh.Text = "در فرآیند ثبت اطلاعات خطایی رخ داده است.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }
        }

        protected void Button_Edit_zamin_Click(object sender, EventArgs e)
        {
            string _Command;
            _Command = "UPDATE melk_zamin SET ID_ostan=N'" + DropDownList_ostan_zamin.SelectedValue.ToString() + "',ID_shahr=N'" + DropDownList_shahr_zamin.SelectedValue.ToString() + "',  metrazh ='" + Textbox_metrazh_bagh.Text.Trim() + "', fasele_shahr ='" + TextBox_fasele_zamin.Text.Trim() + "', ghaimat ='" + TextBox_ghaimat_zamin.Text.Trim() + "', state =N'" + DropDownList_state_zamin.SelectedValue.ToString() + "', type =N'" + DropDownList_type_zamin.SelectedValue.ToString() + "', address ='" + TextBox_address_zamin.Text.Trim() + "', description ='" + TextBox_description_zamin.Text.Trim() + "' WHERE ID='" + _id_zamin + "'";
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                New_command.ExecuteNonQuery();
                Literal_State_zamin.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_State_zamin.Text = "در فرآیند ثبت اطلاعات خطایی رخ داده است.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }
        }

        protected void Button_Edit_vila_Click(object sender, EventArgs e)
        {
            string _Command;
            _Command = "UPDATE melk_vila SET ID_ostan=N'" + DropDownList_ostan_villa.SelectedValue.ToString() + "',ID_shahr=N'" + DropDownList_shahr_villa.SelectedValue.ToString() + "', metrazh ='" + TextBox_metrazh_villa.Text.Trim() + "', age ='" + TextBox_age_villa.Text.Trim() + "', state =N'" + DropDownList_state_villa.SelectedValue.ToString() + "', em_ab ='" + CheckBox_ab_villa.Checked + "', em_bargh ='" + CheckBox_bargh_villa.Checked + "', em_gaz ='" + CheckBox_gaz_villa.Checked + "', em_tele ='" + CheckBox_telephone_villa.Checked + "', em_moble ='" + CheckBox_mobleh_villa.Checked + "', em_estakhr ='" + CheckBox_entrance_villa.Checked + "', em_kafposh ='" + CheckBox_kaf_villa.Checked + "', em_service_ashpaz ='" + CheckBox_service_villa.Checked + "', em_entrance ='" + CheckBox_entrance_villa.Checked + "', em_yard ='" + CheckBox_yard_villa.Checked + "', em_parking ='" + CheckBox_parking_villa.Checked + "', em_anbari ='" + CheckBox_anbari_villa.Checked + "', aj_fo =N'" + DropDownList_ajfo_vila.SelectedValue.ToString() + "', address ='" + TextBox_address_vila.Text.Trim() + "', ghaimat ='" + TextBox_Ghaimat_villa.Text.Trim() + "', fasele_shahr ='" + TextBox_fasele_vila.Text.Trim() + "', description ='" + TextBox_description_vila.Text.Trim() + "' WHERE ID='" + _id_vila + "'";
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                New_command.ExecuteNonQuery();
                Literal_vila.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_vila.Text = "در فرآیند ثبت اطلاعات خطایی رخ داده است.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }

        }

        protected void Button_Edit_khaneh_Click(object sender, EventArgs e)
        {
            string _Command;
            _Command = "UPDATE melk_house SET ID_ostan=N'" + DropDownList_Ostan.SelectedValue.ToString() + "',ID_shahr=N'" + DropDownList_City.SelectedValue.ToString() + "', metrazh ='" + TextBox_Metrazh.Text.Trim() + "', age ='" + TextBox_age.Text.Trim() + "', state =N'" + DropDownList_State.SelectedValue.ToString() + "', ghaimat ='" + TextBox_Ghaimat_khaneh.Text.Trim() + "', address ='" + TextBox_address_khaneh.Text.Trim() + "', va_tele =N'" + DropDownList_telephone.SelectedValue.ToString() + "', va_gaz =N'" + DropDownList_gaz.SelectedValue.ToString() + "', va_bargh =N'" + DropDownList_bargh.SelectedValue.ToString() + "', va_ab =N'" + DropDownList_ab.SelectedValue.ToString() + "', em_asansor ='" + CheckBox_asansor.Checked + "', em_anbari ='" + CheckBox_Anbar.Checked + "', em_yard ='" + CheckBox_Yard.Checked + "', em_Enterance ='" + CheckBox_Entrance.Checked + "', em_parking ='" + CheckBox_Parking.Checked + "', em_deadend ='" + CheckBox_Deadlock.Checked + "', aj_fo =N'" + DropDownList_state_khaneh.SelectedValue.ToString() + "', type =N'" + DropDownList_Type.SelectedValue.ToString() + "', description ='" + TextBox_description_khaneh.Text.Trim() + "'  WHERE ID='" + _id_khane + "'";
            New_connection.ConnectionString = New_user._Conection_String;
            try
            {
                New_connection.Open();
                New_command.Connection = New_connection;
                New_command.CommandText = _Command;
                New_command.ExecuteNonQuery();
                Literal_khaneh.Text = "اطلاعات شما با موفقیت ثبت شد.";
            }
            catch
            {
                Literal_khaneh.Text = "در فرآیند ثبت اطلاعات خطایی رخ داده است.";
                throw;
            }
            finally
            {
                New_connection.Close();
            }
        }

        protected void GridView_Edit_khaneh_SelectedIndexChanged(object sender, EventArgs e)
        {            
        _id_khane = GridView_Edit_khaneh.SelectedValue.ToString();
        MultiView_melk.ActiveViewIndex = 3;
        string _Command;
        _Command = "SELECT   ID_ostan, ID_shahr, metrazh, age, state, ghaimat, address, va_tele, va_gaz, va_bargh, va_ab, em_asansor, em_anbari, em_yard, em_Enterance, em_parking, em_deadend, aj_fo, type, description FROM  melk_house WHERE ID='" + _id_khane + "' ";
        New_connection.ConnectionString = New_user._Conection_String;
        New_connection.Open();
        New_command.Connection = New_connection;
        New_command.CommandText = _Command;
        _dr = New_command.ExecuteReader();
        _dr.Read();
        DropDownList_Ostan.SelectedValue = _dr[0].ToString();
        ostan_khaneh();
        DropDownList_City.SelectedValue = _dr[1].ToString();
        TextBox_Metrazh.Text = _dr[2].ToString();
        TextBox_age.Text = _dr[3].ToString();
        DropDownList_State.SelectedValue = _dr[4].ToString();
        TextBox_Ghaimat_khaneh.Text = (string)_dr[5];
        TextBox_address_khaneh.Text = (string)_dr[6].ToString();
        DropDownList_telephone.SelectedValue = _dr[7].ToString();
        DropDownList_gaz.SelectedValue = _dr[8].ToString();
        DropDownList_bargh.SelectedValue = _dr[9].ToString();
        DropDownList_ab.SelectedValue = _dr[10].ToString();
        CheckBox_asansor.Checked = (bool)_dr[11];
        CheckBox_Anbar.Checked = (bool)_dr[12];
        CheckBox_Yard.Checked = (bool)_dr[13];
        CheckBox_Entrance.Checked = (bool)_dr[14];
        CheckBox_Parking.Checked = (bool)_dr[15];
        CheckBox_Deadlock.Checked = (bool)_dr[16];
        DropDownList_state_khaneh.SelectedValue = _dr[17].ToString();
        DropDownList_Type.SelectedValue = _dr[18].ToString();
        TextBox_description_khaneh.Text = _dr[19].ToString();
        _dr.Close();
        New_connection.Close();   
        }

        protected void DropDownList_ostan_bagh_DataBound(object sender, EventArgs e)
        {
            ostan_bagh();
        }

        protected void DropDownList_ostan_zamin_DataBound(object sender, EventArgs e)
        {
            ostan_zamin();
        }

        protected void DropDownList_ostan_villa_DataBound(object sender, EventArgs e)
        {
            ostan_vila();
        }

        protected void DropDownList_Ostan_DataBound(object sender, EventArgs e)
        {
            ostan_khaneh();
        }

        protected void GridView_Edit_bagh_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl1 = (Label)e.Row.FindControl("Label_bagh");
            if(lbl1!=null)
            {
                WebApplication6.Date_Convert dt=new WebApplication6.Date_Convert();
                lbl1.Text = dt.C_Date_en_to_fa(lbl1.Text);
            }
        }

        protected void GridView_Edit_vila_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl2 = (Label)e.Row.FindControl("Label_vila");
            if (lbl2 != null)
            {
                WebApplication6.Date_Convert dt = new WebApplication6.Date_Convert();
                lbl2.Text = dt.C_Date_en_to_fa(lbl2.Text);
            }
        }

        protected void GridView_Edit_zamin_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl3 = (Label)e.Row.FindControl("Label_zamin");
            if (lbl3 != null)
            {
                WebApplication6.Date_Convert dt = new WebApplication6.Date_Convert();
                lbl3.Text = dt.C_Date_en_to_fa(lbl3.Text);
            }
        }

        protected void GridView_Edit_khaneh_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl4 = (Label)e.Row.FindControl("Label_khaneh");
            if (lbl4 != null)
            {
                WebApplication6.Date_Convert dt = new WebApplication6.Date_Convert();
                lbl4.Text = dt.C_Date_en_to_fa(lbl4.Text);
            }
        }

    }
}