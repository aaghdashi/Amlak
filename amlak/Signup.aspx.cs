using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amlak
{
    public partial class Signup : System.Web.UI.Page
    {         

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Submit_Click(object sender, EventArgs e)
        {
            Class_Melk New_User = new Class_Melk();
            DateTime _Date_member;
            _Date_member = DateTime.Now.Date;
            string _Command = "INSERT INTO Member (name,family ,e_mail ,account_name ,password ,address,telephone,date_signup)VALUES('" + TextBox_Name.Text.Trim() + "','" + TextBox_Family.Text.Trim() + "','" + TextBox_Email.Text.Trim() + "','" + TextBox_Account_Name.Text.Trim() + "','" + TextBox_Password.Text.Trim() + "','" + TextBox_Address.Text.Trim() + "','" + TextBox_Telephone.Text.Trim() + "','" + _Date_member.ToShortDateString() + "')";
            New_User.signup_Method(_Command);
            if (New_User.signup_State == true)
                Literal1.Text = "عملیات ثبت نام با موفقیت انجام شد.";
            else
                Literal1.Text = "عملیات ثبت نام انجام نشد.";
        }
    }
}