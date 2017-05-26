using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ApplicationLayer;
using System.Data;

namespace MobileWorld
{
    public partial class Pay : System.Web.UI.Page
    {
        /// <summary>
        /// payment page ddeals with 2 type of payment .
        /// 1. card payment 
        /// 2.cash on delivery.
        /// customer can also change shiping address or can keep the same as registered address.
        /// </summary>

       public static int trackid;
       string trackid1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Write("Home.aspx");
            else
            {
                if (!IsPostBack)
                {
                    PanelCard.Visible = false;
                    int total = 0;
                    DataTable dt = (DataTable)Session["CartItem"];
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        total += int.Parse(dt.Rows[i]["Price"].ToString());
                    }
                    txtAmount.Text = total.ToString();
                    txtCash.Text = total.ToString();
                    CustomerAddress ca = new CustomerAddress();
                    String[] address = ca.Al_GetAddress(Session["username"].ToString());
                    textAddress.Text = address[0];
                    textContact.Text = address[1];
                    textMail.Text = address[2];
                }
            }
        }

        protected void checkAddress_CheckedChanged(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["CartItem"];

            if (checkAddress.Checked)
            {
                panelAddress.Enabled = false;
            }
            else
            {
                panelAddress.Enabled = true;
            }
        }

        protected void radioCard_CheckedChanged(object sender, EventArgs e)
        {
            if (radioCard.Checked)
            {
                PanelCard.Visible = true;
                PanelCash.Visible = false;
            }

        }

        protected void txtCardNumber_TextChanged(object sender, EventArgs e)
        {
            try
            {
                string t = "";
                string cardNo = txtCardNumber.Text;
                char[] arr = cardNo.ToCharArray();
                Array.Reverse(arr);
                String charArr = new String(arr);

                int c = 0;
                for (int i = 0; i < charArr.Length; i++)
                {

                    c = int.Parse(charArr[i].ToString());
                    if (i % 2 != 0)
                        c *= 2;
                    t = t + c;

                }

                int n = 0;
                char[] temp = t.ToCharArray();

                for (int i = 0; i < t.Length; i++)
                {
                    c = int.Parse(t[i].ToString());
                    n = n + c;
                }
                if (n != 0 && n % 10 == 0)
                    lblMsg.Text = "Card Number Valid";
                else
                    lblMsg.Text = "Card Number InValid";
            }

            catch (FormatException)
            {
                lblStatuscard.Text = "Numeric format required";
            }
            catch (ArgumentOutOfRangeException)
            {
                lblStatuscard.Text = " A 16-digit number required.";
            }

        }

        protected void radioCash_CheckedChanged(object sender, EventArgs e)
        {
            if (radioCash.Checked)
            {
                PanelCard.Visible = false;
                PanelCash.Visible = true;
            }
        }
        static DataTable track_Status;
        protected void btnPay_Click(object sender, EventArgs e)
        { 
            if (radioCard.Checked == true)
            {
                if (txtValidFrom.Text.Equals(txtValidUpto.Text))
                {
                    Response.Write("<script>alert('Enter Valid Month')</script>");
                }
            }


            DataTable dt = (DataTable)Session["CartItem"];
            ApplicationLayer.PendingDelivery pd = new ApplicationLayer.PendingDelivery();
            ArrayList al = new ArrayList();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                String name = dt.Rows[i]["ProductName"].ToString();
                int price = int.Parse(dt.Rows[i]["Price"].ToString());
                String seller = dt.Rows[i]["SellerUserId"].ToString();
                String buyer = Session["username"].ToString();
                int quant = 1;
                String address = textAddress.Text;
                String contact = textContact.Text;
                String mail = textMail.Text;
                int did = int.Parse(Session["did"].ToString());

               track_Status= pd.Al_InsertPendingDetails(name, price, seller, buyer, quant, address, contact, mail, did);
                trackid1 = track_Status.Rows[0].ItemArray[0].ToString();
               
            }
            Session["trackids"] = al;
            ArrayList al1 = (ArrayList)Session["trackids"];
            String str = "";
            foreach (Object a in al1)
            {
                str += a.ToString() + ", ";
            }

            

            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                      "alert('Thank you for purchasing Product...Visit Again...Yor track id is '+'"+trackid1+"'); window.location='" +
                       Request.ApplicationPath + "Home.aspx';", true);

         //   Response.Redirect("Home.aspx");


        }

    }
}