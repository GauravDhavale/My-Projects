using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using ApplicationLayer;

namespace MobileWorld
{
    public partial class SellerProfile : System.Web.UI.Page
    {
        static int check=0;

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
                    //show profile textbox
                    txtName.ReadOnly = true;
                    txtAddress.ReadOnly = true;
                    txtContactno.ReadOnly = true;
                    txtEmail.ReadOnly = true;

                    //list of brand present in website
                    BrandList brand = new BrandList();
                    ArrayList brandList = brand.getBrand();
                    dropBrand.DataSource = brandList;
                    dropBrand.DataBind();

                    //Seller old product list
                    DisplayProdSellerInfo dsp = new DisplayProdSellerInfo();
                    DataTable prodSellerInfo = dsp.getProdSellerInfo(username);
                    GridView1.DataSource = prodSellerInfo;
                    GridView1.DataBind();
                    Profile edit = new Profile();

                    //Information displayed in Show profile 
                    DataTable dtedit = edit.editRegistered(username);
                    ArrayList regd = new ArrayList();
                    regd.Add(dtedit.Rows[0][0].ToString());
                    regd.Add(dtedit.Rows[0][1].ToString());
                    regd.Add(dtedit.Rows[0][2].ToString());
                    regd.Add(dtedit.Rows[0][3].ToString());
                    regd.Add(dtedit.Rows[0][4].ToString());
                    regd.Add(dtedit.Rows[0][5].ToString());

                    string[] arr = (string[])regd.ToArray(typeof(string));
                    txtName.Text = arr[0];
                    txtUserName.Text = arr[1];
                    txtAddress.Text = arr[2];
                    txtEmail.Text = arr[3];
                    txtContactno.Text = arr[4];
                    txtType.Text = arr[5];

                    //Pending delivery table
                    ViewPendingDelivery vpd = new ViewPendingDelivery();
                    DataTable dt = vpd.Al_GetPendingDelivery(Session["username"].ToString());
                    gridPending.DataSource = dt;
                    gridPending.DataBind();
                }
            }
        }

        protected void dropBrand_SelectedIndexChanged(object sender, EventArgs e)
        {
            ModelList model1 = new ModelList();
            ArrayList modelList = model1.getModel(dropBrand.SelectedValue);
            dropModel.DataSource = modelList;
            dropModel.DataBind();
        }

        protected void dropModel_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GetDID did = new GetDID();
            did.returnDid(dropBrand.SelectedValue, dropModel.SelectedValue);
        }

        protected void buttonSub_Click(object sender, EventArgs e)
        {
            ProductSeller ps = new ProductSeller();

            GetDID did = new GetDID();

            int descId = did.returnDid(dropBrand.SelectedValue, dropModel.SelectedValue);
            String name = dropBrand.SelectedValue + " " + dropModel.SelectedValue;
            int price = int.Parse(textPrice.Text);
            int quantity = int.Parse(textQuant.Text);
            int status = ps.setProductSeller(Session["username"].ToString(), descId, price, quantity, name);

            if (status > 0)
            {
                lblStatus.Text = "Insertion Successful!";
            }

            else
            {
                lblStatus.Text = "Value could not be inserted!";
            }
        }

        /// <summary>
        /// when the edit button is clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            DisplayProdSellerInfo dsp = new DisplayProdSellerInfo();
            DataTable prodSellerInfo = dsp.getProdSellerInfo(Session["username"].ToString());
            GridView1.DataSource = prodSellerInfo;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int did = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

            TextBox tb1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtPrice");
            int price = int.Parse(tb1.Text);

            TextBox tb2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtQuant");
            int quant = int.Parse(tb2.Text);

         
            UpdateProdSellerInfo ups = new UpdateProdSellerInfo();
            int status = ups.setPriceQuant(did, price, quant, Session["username"].ToString());
            if (status > 0)
            {
                Label1.Text = "Information Updated Successfully";
            }
            else
            {
                Label1.Text = "Information could not be Updated";
            }

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

        protected void BtnShowInfo_Click(object sender, EventArgs e)
        {
            BtnShowInfo_ModalPopupExtender.Show();
        }

        protected void gridPending_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int trackid = int.Parse(((Label)gridPending.Rows[e.RowIndex].FindControl("lblTrack")).Text);

            ApplicationLayer.UpdateStatus us = new ApplicationLayer.UpdateStatus();

            int status = us.Al_UpdateProdStatus(trackid);

            if (status > 0)
            {
                lblStatus.Text = "Product status successfully updated.";
                ViewPendingDelivery vpd = new ViewPendingDelivery();
                DataTable dt = vpd.Al_GetPendingDelivery(Session["username"].ToString());
                gridPending.DataSource = dt;
                gridPending.DataBind();
            }

            else
            {
                lblStatus.Text = "Product status could not be updated.";
                ViewPendingDelivery vpd = new ViewPendingDelivery();
                DataTable dt = vpd.Al_GetPendingDelivery(Session["username"].ToString());
                gridPending.DataSource = dt;
                gridPending.DataBind();
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

        protected void btnSubmit_Click(object sender, EventArgs e)
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
            Response.Redirect("SellerProfile.aspx");
        }

        protected void btnPhoneRequest_Click(object sender, EventArgs e)
        {
            String brand = textReqBrand.Text;
            String model = textReqModel.Text;

            InsertPhoneRequest ipr = new InsertPhoneRequest();
            int status = ipr.Al_InsertPhoneRequest(brand, model);

            if (status > 0)
                lblRequest.Text = "Mobile Request forwarded to Admin";
            else
                lblRequest.Text = "Mobile Request could not be forwarded to Admin";
        }
    }
}