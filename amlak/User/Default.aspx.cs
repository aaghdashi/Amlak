using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace amlak.User
{
    public partial class Default : System.Web.UI.Page
    {
        PersianCalendar pc = new PersianCalendar();
        Class_Melk new_user = new Class_Melk();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label_Date.Text=pc.GetYear(DateTime.Now.Date).ToString() + "/"+pc.GetMonth(DateTime.Now.Date).ToString() + "/"+pc.GetDayOfMonth(DateTime.Now.Date).ToString()  ;
            Label_Date2.Text = DateTime.Now.Date.ToShortDateString();
        }
    }
}