using System;
using System.Collections;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class ProductDetails
    {
        public ICollection getProductDetails(int did)
        {
            SelectQueries sq = new SelectQueries();
            return sq.getDetails(did);
        }
    }
}
