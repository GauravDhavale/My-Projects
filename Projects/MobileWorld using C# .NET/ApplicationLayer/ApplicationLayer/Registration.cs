using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
   public class Registration
    {
       public string _name;
        public int setRegistration(String UserName, String Password, String Address, String Email,String Name, String ContactNo, String Type)
        {
            InsertQueries iq = new InsertQueries();
            return iq.setRegistration(UserName,Password,Address,Email,Name,ContactNo,Type);
        }

        public string namec
        {
            get { return _name; }
            set { _name = value; }


        }

        public string funchkname()
        {
            SelectQueries sq = new SelectQueries();
            return sq.checkUsername(_name);
        }

    }
}
