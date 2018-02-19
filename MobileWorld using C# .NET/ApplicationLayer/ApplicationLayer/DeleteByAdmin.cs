using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataLayer;

namespace ApplicationLayer
{
    public class DeleteByAdmin
    {
        public int getSellerProduct(int did, String username)
        {
            DeleteQueries dq = new DeleteQueries();
            return dq.deleteadmin(did, username);
        }
    }

}
