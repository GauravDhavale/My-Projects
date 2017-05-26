using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class PendingDelivery
    {
        public int Al_InsertPendingDetail(String name, int price, String seller, String buyer, int quant, String address, String contact, String mail)
        {
            InsertQueries iq = new InsertQueries();
            return iq.Dl_InsertPendingDetail(name, price, seller, buyer, quant, address, contact, mail);
        }
        
    }
}
