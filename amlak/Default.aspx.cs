using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amlak
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Label lbl1 = (Label)e.Item.FindControl("lbl_date");
            if (lbl1 != null)
            {
              WebApplication6.Date_Convert  dt = new WebApplication6.Date_Convert();
                lbl1.Text = dt.C_Date_en_to_fa(lbl1.Text);
            }
        }
    }
}