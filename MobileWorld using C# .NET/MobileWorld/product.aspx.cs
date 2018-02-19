using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ApplicationLayer;
using System.Collections;

namespace MobileWorld
{

    /// <summary>
    /// Product page gives product description along with all sellers who have that product.
    /// </summary>
    public partial class product : System.Web.UI.Page
    {      
        static int count = 0;
        static DataTable dt;
        public static String userType=null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["type"] != null)
              userType = Session["type"].ToString();

            //else
            //{
                if (!IsPostBack)
                {
                    int descid = Convert.ToInt32(Request.QueryString["did"].ToString());
                    binddata(descid);
                }
          //  }
        }

        protected void binddata(int descid)
        {                                       
            ProductDetails pd = new ProductDetails();
            ICollection details = pd.getProductDetails(descid);
            DataList1.DataSource = ((DataRowCollection)details)[0].Table; ;
            DataList1.DataBind();

            SelectProd sp = new SelectProd();
            DataTable dt = sp.getInfo(descid);
            gridSeller.DataSource = dt;
            gridSeller.DataBind();

            SelectImage si = new SelectImage();
            String imgPath = si.getImgPath(descid);
            Image1.ImageUrl = imgPath;
        }



        protected void update(object source, DataListCommandEventArgs e)
        {
            int descid = Convert.ToInt32(Request.QueryString["did"].ToString());
            if (e.CommandName == "update")
            {
                int did = Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex].ToString());
                TextBox txtbrand;

                txtbrand = (TextBox)e.Item.FindControl("txtbrand");
                TextBox txtmodel = (TextBox)e.Item.FindControl("txtmodel");
                TextBox txtnetwork = (TextBox)e.Item.FindControl("txtnetwork");
                TextBox txtsimtype = (TextBox)e.Item.FindControl("txtsimtype");
                TextBox txtDimension = (TextBox)e.Item.FindControl("txtDimension");
                TextBox txtcpu = (TextBox)e.Item.FindControl("txtcpu");
                TextBox txtrom = (TextBox)e.Item.FindControl("txtrom");
                TextBox txtram = (TextBox)e.Item.FindControl("txtram");
                TextBox txtmemory = (TextBox)e.Item.FindControl("txtmemory");
                TextBox txtcamera = (TextBox)e.Item.FindControl("txtcamera");
                TextBox txtwifi = (TextBox)e.Item.FindControl("txtwifi");
                TextBox txtprice = (TextBox)e.Item.FindControl("txtprice");
                int price = Convert.ToInt32(txtprice.Text);
                
                updatespecification ob = new updatespecification();

                ob.did = did;
                ob.model = txtmodel.Text;
                ob.brand = txtbrand.Text;
                ob.camera = txtcamera.Text;
                ob.cpu = txtcpu.Text;
                ob.dimension = txtDimension.Text;
                ob.rom = txtrom.Text;
                ob.ram = txtram.Text;
                ob.price = price;
                ob.wifi = txtwifi.Text;
                ob.network = txtnetwork.Text;
                ob.sim = txtsimtype.Text;
                ob.memory = txtmemory.Text;
                int i = ob.bl_updatespec();
                DataList1.EditItemIndex = -1;

                binddata(descid);
                if (i > 0)
                {
                    Response.Write("<script>alert('record inserted successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('record inserted not successfully')</script>");
                }
            }
        }

        protected void edit(object source, DataListCommandEventArgs e)
        {
            int descid = Convert.ToInt32(Request.QueryString["did"].ToString());
            DataList1.EditItemIndex = e.Item.ItemIndex;

            binddata(descid);
        }

        protected void delete(object source, DataListCommandEventArgs e)
        {

        }

        protected void cancel(object source, DataListCommandEventArgs e)
        {
            int descid = Convert.ToInt32(Request.QueryString["did"].ToString());
            DataList1.EditItemIndex = -1;
            binddata(descid);
        }



        protected void gridSeller_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            if (Session["username"] == null)
            {
                GridView2.DataSource = null;
                GridView2.DataBind();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                       "alert('Login please...'); window.location='" +
                        Request.ApplicationPath + "Home.aspx';", true);
            }
            else
            {                
                String username = ((Label)gridSeller.Rows[e.RowIndex].FindControl("lblUserName")).Text;

                String name = ((Label)gridSeller.Rows[e.RowIndex].FindControl("lblName")).Text;

                String price = ((Label)gridSeller.Rows[e.RowIndex].FindControl("lblPrice")).Text;

                int did = int.Parse(Request.QueryString["did"].ToString());

                int quant = int.Parse(((Label)gridSeller.Rows[e.RowIndex].FindControl("lblQuant")).Text);
                
                if (count < 1)
                {
                    dt = new DataTable();
                    dt.Columns.Add("ProductName");
                    dt.Columns.Add("Price");
                    dt.Columns.Add("SellerName");
                    dt.Columns.Add("SellerUserId");
                    dt.Columns.Add("Quant");
                }

                GetProdName gpn = new GetProdName();
                String phoneName = gpn.getPhoneName(did);

                dt.Rows.Add();
                dt.Rows[count]["ProductName"] = phoneName;
                dt.Rows[count]["Price"] = int.Parse(price);
                dt.Rows[count]["SellerName"] = name;
                dt.Rows[count]["SellerUserId"] = username;
                dt.Rows[count]["Quant"] = quant;
                
                GridView2.DataSource = dt;
                GridView2.DataBind();

                count++;
            }
        }

        protected void cartButton_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if ( userType != "Admin")
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    LinkButton edit = (LinkButton)e.Item.FindControl("edit");
                    edit.Visible = false;                    
                }
            }
        }

        protected void gridSeller_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if ( userType != "Admin")
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    ImageButton deletebtn = (ImageButton)e.Row.FindControl("ImageButtonDelete");
                    deletebtn.Visible = false;
                }
            }
        }

        protected void gridSeller_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridView2.Rows[e.RowIndex].Visible = false;
            int index = e.RowIndex;
            dt.Rows[index].Delete();

            GridView2.DataSource = dt;
            GridView2.DataBind();
            count--;

            if (count == 0)
            {
                dt.Columns.Remove("ProductName");
                dt.Columns.Remove("Price");
                dt.Columns.Remove("SellerName");
                dt.Columns.Remove("SellerUserId");
                dt.Columns.Remove("Quant");
            }
        }

        protected void gridSeller_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Session["CartItem"] = dt;
            Session["did"] = Request.QueryString["did"].ToString();
            Response.Redirect("Pay.aspx");
        }

        protected void gridSeller_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int did = Convert.ToInt32(Request.QueryString["did"].ToString());

            Label username = (Label)gridSeller.Rows[e.RowIndex].FindControl("lblUserName");
            String uname = username.Text;

            DeleteByAdmin amp = new DeleteByAdmin();
            int status = amp.getSellerProduct(did, uname);

            if (status > 0)
            {
                SelectProd sp = new SelectProd();
                DataTable dt = sp.getInfo(int.Parse(Request.QueryString["did"]));
                gridSeller.DataSource = dt;
                gridSeller.DataBind();
            }
            else
            {
                SelectProd sp = new SelectProd();
                DataTable dt = sp.getInfo(int.Parse(Request.QueryString["did"]));
                gridSeller.DataSource = dt;
                gridSeller.DataBind();
            }
        }

        protected void cartButton_Click1(object sender, EventArgs e)
        {
            //if (Session["username"] == null)
            //{
            //  Response.Write("<script>alert('Login please...')</script>");
                            
            //  GridView2.DataSource = null;
            //  GridView2.DataBind();

           // }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}