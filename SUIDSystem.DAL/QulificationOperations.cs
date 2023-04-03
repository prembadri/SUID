using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;
namespace SUIDSystem.DAL
{
    public class QulificationOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public bool Insert(SUIDSystem.Model.Qulification qulobj)
        {
            dc.Qulifications.Add(qulobj);
            int result = dc.SaveChanges();
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public List<SUIDSystem.Model.Qulification> fetchQulification()
        {
            var query = from quli in dc.Qulifications
                        select quli;
            return query.ToList();
        }
    }
}
