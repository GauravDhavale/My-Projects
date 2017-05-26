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
    public partial class Home : System.Web.UI.Page
    {
        
        /// <summary>
        /// On page load bind the data to the datalist for displaying the phone's images
        /// also bind data to the drop down menu displaying the brand names.
        /// If session for track id is created then alert box displaying track id 
        /// appears.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                if (Session["trackids"] != null)
                {
                    ArrayList al = (ArrayList)Session["trackids"];
                    String str = "";
                    foreach (Object a in al)
                    {
                        str += a.ToString() + ", ";
                    }

                   // Response.Write("<script>alert(Thank u purchasing. ur t'" + str + "')</script>");
                }
               
                LatestPhones phones = new LatestPhones();
                DataTable phoneList = phones.getLatestPhones();
                if (phoneList.Rows.Count > 0)
                {
                    DataListdisplayproduct.DataSource = phoneList;
                    DataListdisplayproduct.DataBind();
                }

                BrandList brand = new BrandList();
                ArrayList brandList = brand.getBrand();
                DropBrand.DataSource = brandList;
                DropBrand.DataBind();
            }
        }

        /// <summary>
        /// On selection of a particular brand from the drop down menu the data list is populated 
        /// based on the brand.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void DropBand_SelectedIndexChanged(object sender, EventArgs e)
        {
            String brand = DropBrand.SelectedValue.ToString();
            SpecificBrandPhones spec = new SpecificBrandPhones();
            DataTable dt = spec.getSpecificBrand(brand);
            DataListdisplayproduct.DataSource = dt;
            DataListdisplayproduct.DataBind();

        }

        /// <summary>
        /// On click of the radio button the index is stored in a variable and sent to a 
        /// function where product will be displayed according to the price range.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            int index = radioPrice.SelectedIndex;
            PriceRange price = new PriceRange();
            DataTable dt1 = price.getPriceRange(index);
            DataListdisplayproduct.DataSource = dt1;
            DataListdisplayproduct.DataBind(); 
        }

        /// <summary>
        /// This allows us to populate the datalist based on both price and brand selection.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void ImageButtoncombine_Click(object sender, ImageClickEventArgs e)
        {
            int index = radioPrice.SelectedIndex;
            String brand = DropBrand.SelectedValue.ToString();
            Combine_sort_phone obj = new Combine_sort_phone();
            obj.brand = brand;
            obj.price = index;
            DataTable dt = obj.bl_Combinesort();
            DataListdisplayproduct.DataSource = dt;
            DataListdisplayproduct.DataBind();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}