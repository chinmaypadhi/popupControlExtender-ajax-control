﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace popupControlExtender_ajax_control
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PopupControlExtender1.Commit(RadioButtonList1.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "You Have Successfully Submitted Your University " + TextBox1.Text;
        }
    }
}