using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class CustomerAddress
    {
        public String[] Al_GetAddress(String username)
        {
            SelectQueries sq = new SelectQueries();
            return sq.Dl_GetAddress(username);
        }
    }
}
