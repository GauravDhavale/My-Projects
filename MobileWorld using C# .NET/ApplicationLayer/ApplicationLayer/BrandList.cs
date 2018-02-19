using System;
using System.Collections;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class BrandList
    {
        public ArrayList getBrand()
        {
            SelectQueries sq = new SelectQueries();
            return sq.getBrand();
        }
    }
}