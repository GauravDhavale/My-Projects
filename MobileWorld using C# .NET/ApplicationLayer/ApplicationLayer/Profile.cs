using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using DataLayer;
using System.Data;

namespace ApplicationLayer
{
   public class Profile
    {
       public DataTable editRegistered(String username)
       {
           SelectQueries sq = new SelectQueries();
           return sq.dl_Edit(username);
           
       }
       public int updateRegistered(String name,String address,String email, String contactno,String username)
       {
           UpdateQueries up = new UpdateQueries();
           return up.dl_Update(name,address,email,contactno,username);           
       }
    }
}
