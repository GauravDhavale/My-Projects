using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;
using System.Data;

namespace ApplicationLayer
{
    public class ViewPendingDelivery
    {
        public DataTable Al_GetPendingDelivery(String username)
        {
            SelectQueries sq = new SelectQueries();
            return sq.Dl_GetPendingDelivery(username);
        }
    }
}
