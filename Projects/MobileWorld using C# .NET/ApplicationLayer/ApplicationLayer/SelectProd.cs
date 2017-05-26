using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataLayer;

namespace ApplicationLayer
{
    public class SelectProd
    {
         public DataTable getInfo(int did)
         {
            SelectQueries sq = new SelectQueries();
            return sq.seller_search(did);
         }
    }
}
