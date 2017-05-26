using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class SelectImage
    {
        public String getImgPath(int did)
        {
            SelectQueries sq = new SelectQueries();
            return sq.prod_image(did); 
        }
    }
}
