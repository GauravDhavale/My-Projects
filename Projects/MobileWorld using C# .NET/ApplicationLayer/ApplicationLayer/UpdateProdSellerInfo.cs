using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class UpdateProdSellerInfo
    {
        public int setPriceQuant(int did, int price, int quant, String username)
        {
            UpdateQueries ups = new UpdateQueries();
            return ups.setPriceQuant(did, price, quant, username);
        }
    }
}
