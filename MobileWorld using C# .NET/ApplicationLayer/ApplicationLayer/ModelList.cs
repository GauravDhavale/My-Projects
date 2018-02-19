using System;
using System.Collections;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class ModelList
    {
        public ArrayList getModel(String brand)
        {
            SelectQueries sq = new SelectQueries();
            return sq.getModel(brand);
        }
    }
}