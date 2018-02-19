using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class InsertProdPermanent
    {
        public int setSellerProduct(String userName, int did, String prodname, int sellerprice, int quantity)
        {
            InsertQueries sq = new InsertQueries();
            return sq.addtopermanent(userName, did, prodname, sellerprice, quantity);
        }
    }
}
