using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using DataLayer;
using System.Data;

namespace ApplicationLayer
{
    public class PriceRange
    {
        int lowPrice = 0, highPrice = 0;
        public DataTable getPriceRange(int index)
        {
            SelectQueries sq = new SelectQueries();

            // int lowPrice = 0, highPrice = 0;

            if (index == 0)
            {
                lowPrice = 500;
                highPrice = 5000;
            }

            else if (index == 1)
            {
                lowPrice = 5001;
                highPrice = 15000;
            }

            else if (index == 2)
            {
                lowPrice = 15001;
                highPrice = 30000;
            }

            else if (index == 3)
            {
                lowPrice = 30001;
                highPrice = 150000;
            }

            return sq.getPriceRange(lowPrice, highPrice);
        }
    }
}
