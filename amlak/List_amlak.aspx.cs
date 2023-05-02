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
    public partial class List_amlak : System.Web.UI.Page
    {
        Class_Melk New_user = new Class_Melk();
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

        protected void LinkButton_bagh_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 4;
        }

        protected void LinkButton_zamin_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 6;
        }

        protected void LinkButton_vila_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 5;
        }

        protected void LinkButton_khaneh_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 7;
        }


       
        protected void GridView_vila_SelectedIndexChanged(object sender, EventArgs e)
        {
            _id_vila = GridView_vila.SelectedValue.ToString();
            MultiView_melk.ActiveViewIndex = 2;
            string _Command;
            _Command = "SELECT ostan.name, shahr.name AS Expr1, melk_vila.metrazh, melk_vila.age, melk_vila.state, melk_vila.em_ab, melk_vila.em_bargh, melk_vila.em_gaz, melk_vila.em_tele, melk_vila.em_moble, melk_vila.em_estakhr, melk_vila.em_kafposh, melk_vila.em_service_ashpaz, melk_vila.em_entrance, melk_vila.em_yard, melk_vila.em_parking, melk_vila.em_anbari, melk_vila.aj_fo, melk_vila.address, melk_vila.ghaimat, melk_vila.fasele_shahr, melk_vila.description FROM  melk_vila INNER JOIN  ostan ON melk_vila.ID_ostan = ostan.ID INNER JOIN   shahr ON melk_vila.ID_shahr = shahr.ID AND ostan.ID = shahr.ID_ostan WHERE melk_vila.ID='" + _id_vila + "' ";
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.Connection = New_connection;
            New_command.CommandText = _Command;
            _dr = New_command.ExecuteReader();
            _dr.Read();
            Label_ostan_vila.Text = _dr[0].ToString();
            Label_shahr_vila.Text = _dr[1].ToString();
            Label_metrazh_vila.Text = _dr[2].ToString();
            Label_age_vila.Text = _dr[3].ToString();
            Label_state_vila.Text = _dr[4].ToString();
            CheckBox_ab_villa.Checked = (bool)_dr[5];
            CheckBox_bargh_villa.Checked = (bool)_dr[6];
            CheckBox_gaz_villa.Checked = (bool)_dr[7];
            CheckBox_telephone_villa.Checked = (bool)_dr[8];
            CheckBox_mobleh_villa.Checked = (bool)_dr[9];
            CheckBox_stakher_villa.Checked = (bool)_dr[10];
            CheckBox_kaf_villa.Checked = (bool)_dr[11];
            CheckBox_service_villa.Checked = (bool)_dr[12];
            CheckBox_entrance_villa.Checked = (bool)_dr[13];
            CheckBox_parking_villa.Checked = (bool)_dr[14];
            CheckBox_yard_villa.Checked = (bool)_dr[15];
            CheckBox_anbari_villa.Checked = (bool)_dr[16];
            Label_ajfo_vila.Text = _dr[17].ToString();
            Label_age_vila.Text = (string)_dr[18].ToString();
            Label_ghaimat_vila.Text = (string)_dr[19];
            Label_fasele_vila.Text = (string)_dr[20];
            Label_description_vila.Text = (string)_dr[21];
            _dr.Close();
            New_connection.Close();
        }

        protected void GridView_zamin_SelectedIndexChanged(object sender, EventArgs e)
        {
            _id_zamin = GridView_zamin.SelectedValue.ToString();
            MultiView_melk.ActiveViewIndex = 1;
            string _Command;
            _Command = "SELECT  ostan.name, shahr.name AS Expr1, melk_zamin.metrazh, melk_zamin.fasele_shahr, melk_zamin.ghaimat, melk_zamin.state, melk_zamin.type, melk_zamin.address, melk_zamin.description FROM  melk_zamin INNER JOIN    ostan ON melk_zamin.ID_ostan = ostan.ID INNER JOIN  shahr ON melk_zamin.ID_shahr = shahr.ID AND ostan.ID = shahr.ID_ostan WHERE melk_zamin.ID='" + _id_zamin + "' ";
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.Connection = New_connection;
            New_command.CommandText = _Command;
            _dr = New_command.ExecuteReader();
            _dr.Read();
            Label_ostan_zamin.Text = _dr[0].ToString();
            Label_shahr_zamin.Text = _dr[1].ToString();
            Label_metrazh_zamin.Text = _dr[2].ToString();
            Label_fasele_zamin.Text = _dr[3].ToString();
            Label_ghaimat_zamin.Text = _dr[4].ToString();
            Label_state_zamin.Text= _dr[5].ToString();
            Label_type_zamin.Text = _dr[6].ToString();
            Label_address_zamin.Text = _dr[7].ToString();
            Label_descrption_zamin.Text = _dr[8].ToString();
            _dr.Close();
            New_connection.Close();
        }

        protected void GridView_khaneh_SelectedIndexChanged(object sender, EventArgs e)
        {
            _id_khane = GridView_khaneh.SelectedValue.ToString();
            MultiView_melk.ActiveViewIndex = 3;
            string _Command;
            _Command = "SELECT ostan.name, shahr.name AS Expr1, melk_house.metrazh, melk_house.age, melk_house.state, melk_house.ghaimat, melk_house.address, melk_house.va_tele,melk_house.va_gaz, melk_house.va_bargh, melk_house.va_ab, melk_house.em_asansor, melk_house.em_anbari, melk_house.em_yard,melk_house.em_Enterance, melk_house.em_parking, melk_house.em_deadend, melk_house.aj_fo, melk_house.type, melk_house.description FROM melk_house INNER JOIN ostan ON melk_house.ID_ostan = ostan.ID INNER JOIN shahr ON melk_house.ID_shahr = shahr.ID AND ostan.ID = shahr.ID_ostan WHERE melk_house.ID='" + _id_khane + "' ";
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.Connection = New_connection;
            New_command.CommandText = _Command;
            _dr = New_command.ExecuteReader();
            _dr.Read();
            Label_ostan_khaneh.Text = _dr[0].ToString();
            Label_shahr_khaneh.Text = _dr[1].ToString();
            Label_metrazh_khaneh.Text = _dr[2].ToString();
            Label_age_khaneh.Text = _dr[3].ToString();
            Label_state_khaneh.Text = _dr[4].ToString();
            Label_ghaimat_khaneh.Text = (string)_dr[5];
            Label_address_khaneh.Text = (string)_dr[6].ToString();
            Label_telephone_khaneh.Text = _dr[7].ToString();
            Label_gaz_khaneh.Text = _dr[8].ToString();
            Label_bargh_khaneh.Text = _dr[9].ToString();
            Label_ab_khaneh.Text = _dr[10].ToString();
            CheckBox_asansor.Checked = (bool)_dr[11];
            CheckBox_Anbar.Checked = (bool)_dr[12];
            CheckBox_Yard.Checked = (bool)_dr[13];
            CheckBox_Entrance.Checked = (bool)_dr[14];
            CheckBox_Parking.Checked = (bool)_dr[15];
            CheckBox_Deadlock.Checked = (bool)_dr[16];
            Label_ajfo_khaneh.Text = _dr[17].ToString();
            Label_type_khaneh.Text = _dr[18].ToString();
            Label_description_khaneh.Text = _dr[19].ToString();
            _dr.Close();
            New_connection.Close();
        }

        protected void GridView_bagh_SelectedIndexChanged(object sender, EventArgs e)
        {
            _id_bagh = GridView_bagh.SelectedValue.ToString();
            MultiView_melk.ActiveViewIndex = 0;
            string _Command;
            _Command = "SELECT ostan.name, shahr.name AS Expr1, melk_baghe.rosta, melk_baghe.address, melk_baghe.metrazh, melk_baghe.type, melk_baghe.mahsol, melk_baghe.fasele_shar,melk_baghe.aj_fo, melk_baghe.ghaimat, melk_baghe.description, melk_baghe.em_ab, melk_baghe.em_bargh, melk_baghe.em_gaz, melk_baghe.em_telephone, melk_baghe.em_jhah, melk_baghe.em_khane_vilai, melk_baghe.em_estakhr FROM melk_baghe INNER JOIN ostan ON melk_baghe.ID_ostan = ostan.ID INNER JOIN shahr ON melk_baghe.ID_shahr = shahr.ID AND ostan.ID = shahr.ID_ostan WHERE melk_baghe.ID='" + _id_bagh + "' ";
            New_connection.ConnectionString = New_user._Conection_String;
            New_connection.Open();
            New_command.Connection = New_connection;
            New_command.CommandText = _Command;
            _dr = New_command.ExecuteReader();
            _dr.Read();
            Label_ostan_bagh.Text = _dr[0].ToString();
            Label_shahr_bagh.Text = _dr[1].ToString();
            Label_rosta_bagh.Text = (string)_dr[2];
            Label_address_bagh.Text = (string)_dr[3];
            Label_metrazh_bagh.Text = _dr[4].ToString();
            Label_type_bagh.Text = _dr[5].ToString();
            Label_mahsol_bagh.Text = (string)_dr[6];
            Label_fasele_bagh.Text = (string)_dr[7];
            Label_ajfo_bagh.Text = _dr[8].ToString();
            Label_ghaimat_bagh.Text = (string)_dr[9];
            Label_description_bagh.Text = (string)_dr[10];
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

        protected void Button_bagh_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 4;
        }

        protected void Button_zamin_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 6;
        }

        protected void Button_vila_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 5;
        }

        protected void Button_khaneh_Click(object sender, EventArgs e)
        {
            MultiView_melk.ActiveViewIndex = 7;
        }

        protected void GridView_bagh_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl1 = (Label)e.Row.FindControl("Label_bagh");
            if (lbl1 != null)
            {
                WebApplication6.Date_Convert dt = new WebApplication6.Date_Convert();
                lbl1.Text = dt.C_Date_en_to_fa(lbl1.Text);
            }
        }

        protected void GridView_vila_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl2 = (Label)e.Row.FindControl("Label_vila");
            if (lbl2 != null)
            {
                WebApplication6.Date_Convert dt = new WebApplication6.Date_Convert();
                lbl2.Text = dt.C_Date_en_to_fa(lbl2.Text);
            }
        }

        protected void GridView_zamin_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label lbl3 = (Label)e.Row.FindControl("Label_zamin");
            if (lbl3 != null)
            {
                WebApplication6.Date_Convert dt = new WebApplication6.Date_Convert();
                lbl3.Text = dt.C_Date_en_to_fa(lbl3.Text);
            }
        }

        protected void GridView_khaneh_RowDataBound(object sender, GridViewRowEventArgs e)
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