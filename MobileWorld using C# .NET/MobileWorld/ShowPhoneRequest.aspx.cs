using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ApplicationLayer;

namespace MobileWorld
{
    public partial class ShowPhoneRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowRequestedPhone srp = new ShowRequestedPhone();
            DataTable dt = srp.Al_GetRequestedPhone();
            gridRequestPhone.DataSource = dt;
            gridRequestPhone.DataBind();
        }
    }
}