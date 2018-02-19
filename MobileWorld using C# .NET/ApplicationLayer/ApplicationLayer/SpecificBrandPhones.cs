using System;
using System.Collections;
using System.Linq;
using System.Text;
using System.Data;
using DataLayer;

namespace ApplicationLayer
{
    public class SpecificBrandPhones
    {
        public DataTable getSpecificBrand(String indexVal)
        {
            SelectQueries sq = new SelectQueries();
            return sq.getBrandSpecific(indexVal);
        }
    }
}
