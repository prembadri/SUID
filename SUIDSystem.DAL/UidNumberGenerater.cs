using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.DAL;
using SUIDSystem.Model;

namespace SUIDSystem.DAL
{
    public class UidNumberGenerater
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();

        public int Insert(SUIDNumber suidobj)
        {
            dc.SUIDNumbers.Add(suidobj);
            int result = dc.SaveChanges();
            if (result > 0)
            {
                return 0;
            }
            else
            {
                return 1;
            }
        }
        public List<SUIDNumber> fetchSUIDno(int suid)
        {
            var quey = from st in dc.SUIDNumbers
                       where st.StudentID == suid
                       select st;
            return quey.ToList();
        }
    }
}
