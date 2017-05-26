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
    /// <summary>
    /// This page is related to all task task that customer can do.
    /// </summary>
    public partial class CustomerProfile : System.Web.UI.Page
    {
        static int check = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                string username = Session["username"].ToString();

                if (!IsPostBack)
                {
                                      
                    txtName.ReadOnly = true;
                    txtAddress.ReadOnly = true;
                    txtContactno.ReadOnly = true;
                    txtEmail.ReadOnly = true;
                    Profile edit = new Profile();

                    DataTable dt = edit.editRegistered(username);
                    ArrayList regd = new ArrayList();
                    regd.Add(dt.Rows[0][0].ToString());
                    regd.Add(dt.Rows[0][1].ToString());
                    regd.Add(dt.Rows[0][2].ToString());
                    regd.Add(dt.Rows[0][3].ToString());
                    regd.Add(dt.Rows[0][4].ToString());
                    regd.Add(dt.Rows[0][5].ToString());

                    string[] arr = (string[])regd.ToArray(typeof(string));
                    txtName.Text = arr[0];
                    txtUserName.Text = arr[1];
                    txtAddress.Text = arr[2];
                    txtEmail.Text = arr[3];
                    txtContactno.Text = arr[4];
                    txtType.Text = arr[5];
                }
            }
        }

        protected void BtnShowProfile_Click(object sender, EventArgs e)
        {
            BtnShowProfile_ModalPopupExtender.Show();
        }

        protected void btnCancel2_Click(object sender, EventArgs e)
        {
            BtnShowProfile_ModalPopupExtender.Hide();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            btnUpdate.Enabled = true;
            txtName.ReadOnly = false;
            txtAddress.ReadOnly = false;
            txtContactno.ReadOnly = false;
            txtEmail.ReadOnly = false;
            lblstatus1.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Profile update = new Profile();
            string name = txtName.Text;
            string address = txtAddress.Text;
            string email = txtEmail.Text;
            string contactno = txtContactno.Text;
            string username = txtUserName.Text;
            int upstatus = update.updateRegistered(name, address, email, contactno, username);
            if (upstatus > 0)
            {
                lblstatus1.Text = "Details updated Successfully";
                btnUpdate.Enabled = false;

            }
            else lblstatus1.Text = "Due to some technical issues Update could not be processed.";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ShowStatus ss = new ShowStatus();
            String message = ss.Al_GetStatus(int.Parse(textTrack.Text));
            if (message == "")
            {
             
              lblStatusdelivery.Text = "Pending";
            }
            else
            {               
                lblStatusdelivery.Text = "Delivered";
            }
        }


        protected void txtCurrent_TextChanged(object sender, EventArgs e)
        {

            Profile password = new Profile();
            string current = txtCurrent.Text;
            int currstatus = password.checkPassword(Session["username"].ToString(), current);

            if (currstatus > 0)
            {
                lblPassword.Text = "Correct Password";
                check = 1;
            }
            else
            {
                check = 0;
                lblPassword.Text = "Incorrect Password ";
            }
        }

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            if (check == 1)
            {
                string newPassword = txtNew.Text;
                Profile password = new Profile();
                int passwordStatus = password.UpdatePassword(Session["username"].ToString(), newPassword);
                if (passwordStatus > 0)
                {
                    lblPassword.Text = "Password Updated Successfully";
                }
            }

            else
            {
                if (check == 0)
                    lblPassword.Text = "Old Password is wrong";
                else
                    lblPassword.Text = "Password could not be inserted";
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}