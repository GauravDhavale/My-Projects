using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ApplicationLayer;

namespace MobileWorld
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                textName.Text = Session["username"].ToString();
            }

        }

        protected void BtnSubmitFeddBack_Click(object sender, EventArgs e)
        {
            string name = textName.Text.Trim();
            string mail = textMail.Text.Trim();
            string mobile = textContact.Text.Trim();
            string address = textAddress.Text.Trim();
            string feedback = textComment.Text.Trim();

            contact cs = new contact();
            int status = cs.setcontact(name, mail, mobile, address, feedback);
            if (status > 0)
            {
                Response.Write("<script>alert('Thank you for your valuable feedback')</script>");

            }

            else
            {
                Response.Write("<script>alert('There is some technical problem...please try again')</script>");
            }
        }
    }
}