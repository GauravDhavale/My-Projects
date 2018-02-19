using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class ShowStatus
    {
        public String Al_GetStatus(int trackid)
        {
            SelectQueries sq = new SelectQueries();
            return sq.Dl_GetStatus(trackid);
        }
    }
}
