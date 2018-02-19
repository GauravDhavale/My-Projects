using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class ProductSeller
    {
        public int setProductSeller(String userName, int did, int price, int quantity, String name)
        {
            InsertQueries iq = new InsertQueries();
            return iq.setProductSeller(userName, did, price, quantity, name);
        }
    }
}
