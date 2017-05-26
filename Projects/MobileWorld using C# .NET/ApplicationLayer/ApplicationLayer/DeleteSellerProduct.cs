using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class DeleteSellerProduct
    {
        public int removeSellerProduct(int did, String username)
        {
            DeleteQueries dq = new DeleteQueries();
            return dq.deleteSellerProd(did, username);
        }
    }
}
