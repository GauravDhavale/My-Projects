using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ApplicationLayer;

namespace MobileWorld
{
    public partial class Main : System.Web.UI.MasterPage
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                LinkBtnLogout.Visible = true;
                LinkButton1.Text = Session["username"].ToString();
            }

            if (!IsPostBack)
            {
              
            }
           
        }

        protected void ImgBtnAboutUs_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void ImgBtnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void ImgBtnMyProfile_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["type"] == null)
            {

                LinkButton1_ModalPopupExtender.Show();
            }
            else if (Session["type"].ToString() == "Seller")
            {

                Response.Redirect("SellerProfile.aspx");
            }
            else if (Session["type"].ToString() == "Buyer")
            {
                Response.Redirect("Customerprofile.aspx");
            }
            else if (Session["type"].ToString() == "Admin")
            {

                Response.Redirect("Admin.aspx");
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
           
                Response.Redirect("SearchResult.aspx?txtSearch="+txtSearch.Text.Trim());
 
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SearchResult.aspx?txtSearch="+txtSearch.Text.Trim());

        }

        protected void ImgBtnContactUs_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            ui_login();
        }

        public void ui_login()
        {
            String type;
            logincheck log = new logincheck();
            log.username = txtUsername.Text;
            log.password = txtPassword.Text;
            type = log.bl_login();
            if (type.Equals("no"))
            {
                Response.Write("<script>alert('login failed...try again')</script>");
            }
            else
            {
                Session["username"] = txtUsername.Text;
                Session["type"] = type;
                LinkBtnLogout.Visible = true;

                if (type.Equals("Seller"))
                {                    
                    Response.Redirect("SellerProfile.aspx");
                }

                else if (type.Equals("Buyer"))
                {
                    Response.Redirect("Home.aspx");
                }

                else if (type.Equals("Admin"))
                {
                    Response.Redirect("Admin.aspx");
                }
            }



        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {
            ui_login();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //    LinkButton1_ModalPopupExtender.Hide();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1_ModalPopupExtender.Show();
        }

        protected void LinkBtnLogout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["type"] = null;
            LinkBtnLogout.Visible = false;
            Response.Redirect("Home.aspx");
        }

    }
}