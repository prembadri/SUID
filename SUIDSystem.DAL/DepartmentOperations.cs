using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;
using SUIDSystem.DAL;

namespace SUIDSystem.DAL
{
    public class DepartmentOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public bool Insert(Department dept)
        {
            dc.Departments.Add(dept);
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
        public List<Department> Fetchdepartmernt()
        {
            var query = from dept in dc.Departments
                        select dept;
            return query.ToList();
        }
    }
}
