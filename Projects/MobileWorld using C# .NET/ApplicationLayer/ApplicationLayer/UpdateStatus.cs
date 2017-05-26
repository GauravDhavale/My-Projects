using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class UpdateStatus
    {
        public int Al_UpdateProdStatus(int trackid)
        {
            UpdateQueries uq = new UpdateQueries();
            return uq.DL_UpdateProductStatus(trackid);
        }
    }
}
