using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataLayer;

namespace ApplicationLayer
{
    public class AdminManageProduct
    {
        public DataTable getSellerProduct()
        {
            SelectQueries sq = new SelectQueries();
            return sq.getProdSellerUnreviewed();
        }
    }
}
