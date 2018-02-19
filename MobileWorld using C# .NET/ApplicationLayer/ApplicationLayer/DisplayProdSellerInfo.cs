using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataLayer;
using ApplicationLayer;

namespace ApplicationLayer
{
    public class DisplayProdSellerInfo
    {
        public DataTable getProdSellerInfo(string username)
        {
            SelectQueries sq = new SelectQueries();
            return sq.getProdSellerInfo(username);
        }
    }
}
