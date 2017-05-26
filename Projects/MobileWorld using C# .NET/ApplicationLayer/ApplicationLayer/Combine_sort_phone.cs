using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;
using System.Data;

namespace ApplicationLayer
{
    public class Combine_sort_phone
    {
         string _brand;
         int _price;
         public string brand
         {
             get { return _brand; }
             set { _brand = value; }
         }

         public int price
         {
             get { return _price; }
             set { _price = value; }
         }


         public DataTable bl_Combinesort()
         {
             int lowPrice = 0, highPrice = 0;
             if (_price == 0)
             {
                 lowPrice = 500;
                 highPrice = 5000;
             }

             else if (_price == 1)
             {
                 lowPrice = 5001;
                 highPrice = 15000;
             }

             else if (_price == 2)
             {
                 lowPrice = 15001;
                 highPrice = 30000;
             }

             else if (_price == 3)
             {
                 lowPrice = 30001;
                 highPrice = 150000;
             }
             PriceRange pr = new PriceRange();
             pr.getPriceRange(_price);
            
             SelectQueries sq = new SelectQueries();
             return sq.dl_combinesort(_brand, lowPrice,highPrice);
         }

    }
}
