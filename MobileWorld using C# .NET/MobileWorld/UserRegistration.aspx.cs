using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ApplicationLayer;
using System.Data;
using System.Collections;

namespace MobileWorld
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        /// <summary>
        /// user registration page is for both seller and customer registraton.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                txtUserName.Text = string.Empty;
                txtName.Text = string.Empty;
                txtPassword.Text = string.Empty;
                txtConfirmPassword.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtContactNo.Text = string.Empty;
                DropDownListType.Text = string.Empty;
                RequiredFieldValidator2.Enabled = false;
                RequiredFieldValidator3.Enabled = false;
                // RequiredFieldValidator6.Enabled = false;
                RequiredFieldValidator5.Enabled = false;
                RequiredFieldValidator4.Enabled = false;
                RequiredFieldValidator7.Enabled = false;
                RegularExpressionValidator2.Enabled = false;
                CompareValidator1.Enabled = false;
                RegularExpressionValidator1.Enabled = false;
                buttonSubmit.Enabled = false;

            }
        }

        protected void btnCheckAvailability_Click(object sender, EventArgs e)
        {

            ApplicationLayer.Registration reg = new ApplicationLayer.Registration();
            reg.namec = txtUserName.Text.Trim();
            string status = reg.funchkname();

            if (status.Equals("no"))
            {
                lblCheckUsername.Text = "Available";
                RequiredFieldValidator2.Enabled = true;
                RequiredFieldValidator3.Enabled = true;
                RequiredFieldValidator4.Enabled = true;
                RequiredFieldValidator5.Enabled = true;
                // RequiredFieldValidator6.Enabled = true;
                RequiredFieldValidator7.Enabled = true;
                CompareValidator1.Enabled = true;
                RegularExpressionValidator1.Enabled = true;

                buttonSubmit.Enabled = true;



            }
            else
            {
                lblCheckUsername.Text = "Already Exists";

            }
        }

        protected void buttonSubmit_Click(object sender, EventArgs e)
        {
            string number = txtContactNo.Text;
            int ct = number.Length;
            if (ct < 10)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                     "alert('Enter Valid Number'); ", true);
            }
            else
            {
                string strUserName = txtUserName.Text;
                string strPassword = txtPassword.Text;
                string strAddress = txtAddress.Text;
                string strName = txtName.Text;

                string strEmail = txtEmail.Text;
                string strContactNo = txtContactNo.Text;
                string strDropDownListType = DropDownListType.Text;
                ApplicationLayer.Registration reg = new ApplicationLayer.Registration();

                int regstatus = reg.setRegistration(strUserName, strPassword, strAddress, strEmail, strName, strContactNo, strDropDownListType);
                if (regstatus > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                        "alert('Registration Successfully Completed.'); window.location='" +
                        Request.ApplicationPath + "Home.aspx';", true);


                }
                else lblRegistration.Text = "Due To Some Technical Issues process could not be completed.";
            }

        }

        protected void buttonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }


        protected void txtContactNo_TextChanged(object sender, EventArgs e)
        {
            string number = txtContactNo.Text;

            try
            {
                Int64 contact = Convert.ToInt64(number);
            }
            catch (FormatException)
            {
                lblContactNoStatus.Text = "Enter valid number";

            }
            catch (ArithmeticException)
            {
                lblContactNoStatus.Text = "Enter valid number";

            }
        }       
    }
}