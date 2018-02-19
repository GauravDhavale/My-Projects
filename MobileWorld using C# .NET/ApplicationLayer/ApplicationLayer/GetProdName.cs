using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class GetProdName
    {
        public String getPhoneName(int descid)
        {
            SelectQueries sq = new SelectQueries();
            return sq.dl_getPhoneName(descid);
        }
    }
}
