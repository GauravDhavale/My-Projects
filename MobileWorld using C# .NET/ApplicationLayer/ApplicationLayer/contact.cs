using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;
namespace ApplicationLayer
{
    public class contact
    {
        public int setcontact(string name, string mail, int mobile, string address, string feedback)
        {
            InsertQueries dq = new InsertQueries();
            return dq.contact(name,mail,mobile,address,feedback);
        }
    }
}
