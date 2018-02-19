using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class GetDID
    {
        public int returnDid(String brand, String model)
        {
            SelectQueries sq=new SelectQueries();
            return sq.GetDID(brand, model);
        }
    }
}
