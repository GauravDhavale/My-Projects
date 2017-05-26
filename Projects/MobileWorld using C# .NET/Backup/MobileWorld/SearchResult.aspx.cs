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
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["txtSearch"] != null)
            {
                ViewData(Request.QueryString["txtSearch"].ToString());
            }
        }

        public void ViewData(string result)
        {
            Search ob = new Search();
            ob.search = result;
            DataTable dt = ob.bl_search();
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

    }
}