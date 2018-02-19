using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;
using System.Data;

namespace ApplicationLayer
{
    public class Search
    {
        string _search;
        public string search
        {
            get { return _search; }
            set { _search = value; }
        }

        public DataTable bl_search()
        {
            SelectQueries sq = new SelectQueries();
            return sq.dl_Search(_search);
        }

    }
}
