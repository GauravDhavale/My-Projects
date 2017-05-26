using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ApplicationLayer;
using System.Data;

namespace MobileWorld
{
    public partial class Admin : System.Web.UI.Page
    {
        int id;

        /// <summary>
        /// on page load bind data to the grid view placed for reviewing the product.
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Home.aspx");

            if (!IsPostBack)
            {

                AdminManageProduct amp = new AdminManageProduct();
                DataTable sellerProductTable = amp.getSellerProduct();
                GridView1.DataSource = sellerProductTable;
                GridView1.DataBind();

                ShowRequestedPhone srp = new ShowRequestedPhone();
                DataTable requestedPhoneTable = srp.Al_GetRequestedPhone();
                gridRequestPhone.DataSource = requestedPhoneTable;
                gridRequestPhone.DataBind();
            }   
        }

        /// <summary>
        /// The upload button becomes visible when in image uploader an image is uploaded
        /// </summary>
        public void uploadvisible_click()
        {
            ImgUpload.Visible = true;
        }

        /// <summary>
        /// Code for image uploading
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void ImgUpload_Click(object sender, ImageClickEventArgs e)
        {
            string path = "Mobile_Images";
            string serverpath = Server.MapPath(path);
            serverpath = serverpath + "\\" + FileImage.FileName;
            FileImage.SaveAs(serverpath);
            ImgPhone.ImageUrl = path + "/" + FileImage.FileName;
            ImgPhone.Height = 309; ImgPhone.Width = 206;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
       
        protected void ImgSubmit_Click(object sender, ImageClickEventArgs e)
        {
            String strBrand = DropBrand.Text;
            String strModel = txtModel.Text;
            String strNetwork = DropNetwork.Text;
            String strSim = DropSimtype.Text;
            String strDimension = txtDimension.Text;
            String strCpu = txtCpu.Text;
            String strRom = txtRom.Text;
            String strRam = txtRam.Text;
            String strMemory = txtMemory.Text;
            String strCamera = txtCamera.Text;
            String strWireless = txtWifi.Text;
            String strImgPath = ImgPhone.ImageUrl;
            int intPrice = int.Parse(txtPrice.Text);

            SpecificationClass sc = new SpecificationClass();
            int status = sc.setSpecification(strBrand, strModel, strNetwork, strSim, strDimension, strCpu, strRom, strRam, strMemory, strCamera, strWireless, strImgPath, intPrice);

            if (status > 0)
            {
                labelStatus.Text = "Description Successfully Inserted";
            }

            else
            {
                labelStatus.Text = "Description could not be Inserted";
            }
        }
       
        protected void btnAccept_Click(object sender, EventArgs e)
        {
            
        }

        protected void setId(ref int id)
        {
            this.id = id;
        }

        protected int getId()
        {
            return id;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            GridViewRow gView = ((Button)e.CommandSource).NamingContainer as GridViewRow;
            Label lblid = (Label)gView.FindControl("descid");
            int id1 = int.Parse(lblid.Text);
            setId(ref id1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label descid = (Label)GridView1.Rows[e.RowIndex].FindControl("descid");
            int did = int.Parse(descid.Text);

            Label username = (Label)GridView1.Rows[e.RowIndex].FindControl("username");
            String uname = username.Text;

            DeleteSellerProduct dsp = new DeleteSellerProduct();
            int status = dsp.removeSellerProduct(did, uname);

            if (status > 0)
            {
                lblMsg.Text = "Information Deleted Successfully";
            }
            else
            {
                lblMsg.Text = "Information could not be Deleted";
            }

            AdminManageProduct amp = new AdminManageProduct();
            DataTable dt = amp.getSellerProduct();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            AdminManageProduct amp = new AdminManageProduct();
            DataTable dt = amp.getSellerProduct();
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label descid = (Label)GridView1.Rows[e.RowIndex].FindControl("descid");
            int did = int.Parse(descid.Text);

            Label username = (Label)GridView1.Rows[e.RowIndex].FindControl("username");
            String uname = username.Text;

            Label product = (Label)GridView1.Rows[e.RowIndex].FindControl("productname");
            String prod = product.Text;

            Label price = (Label)GridView1.Rows[e.RowIndex].FindControl("price");
            int prc = int.Parse(price.Text);

            Label quantity = (Label)GridView1.Rows[e.RowIndex].FindControl("quantity");
            int quant = int.Parse(quantity.Text);

            InsertProdPermanent ipp = new InsertProdPermanent();
            int status = ipp.setSellerProduct(uname, did, prod, prc, quant);

            if (status > 0)
            {
                lblMsg.Text = "Information Inserted Successfully";
                DeleteSellerProduct dsp = new DeleteSellerProduct();
                dsp.removeSellerProduct(did, uname);

                AdminManageProduct amp = new AdminManageProduct();
                DataTable dt = amp.getSellerProduct();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                lblMsg.Text = "Information could not be Inserted";
            }
        }
    }
}