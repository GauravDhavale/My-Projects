using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class logincheck
    {
        public string _username;
        public string _password;
        
        public string username
        {
            get { return _username; }
            set { _username = value; }
        }
        public string password
        {
            get { return _password; }
            set{ _password=value;}
        }


        public string bl_login()
        {

            SelectQueries sq = new SelectQueries();
             return sq.dl_login(_username, _password);
        }
                

    }
}
