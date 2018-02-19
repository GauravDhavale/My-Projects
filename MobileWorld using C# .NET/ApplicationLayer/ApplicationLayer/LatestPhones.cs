using System;
using System.Collections;
using System.Linq;
using System.Text;
using DataLayer;
using System.Data;

namespace ApplicationLayer
{
    public class LatestPhones
    {
        public DataTable getLatestPhones()
        {
            SelectQueries sq = new SelectQueries();
            return sq.getLatestPhones();
        }
    }
}
