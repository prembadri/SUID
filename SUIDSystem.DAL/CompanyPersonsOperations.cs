using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;

namespace SUIDSystem.DAL
{
    public class CompanyPersonsOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public bool Insert(CompanyPerson companyobj)
        {
            dc.CompanyPersons.Add(companyobj);
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
        public bool Update(CompanyPerson companyobj)
        {
            CompanyPerson oldcompanyperson = dc.CompanyPersons.Where(c => c.CompanyPersonID == companyobj.CompanyPersonID).First();
            if (oldcompanyperson == null)
            {
                throw new Exception("Record Not Found");
            }
            oldcompanyperson.DepartmentID = companyobj.DepartmentID;
            oldcompanyperson.CompanyPersonID = companyobj.CompanyPersonID;
            oldcompanyperson.CEmployeeName = companyobj.CEmployeeName;
            oldcompanyperson.NameofCompany = companyobj.NameofCompany;
            oldcompanyperson.Location = companyobj.Location;

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
        public bool Delete(CompanyPerson companyobj)
        {
            CompanyPerson oldcompanyperson = dc.CompanyPersons.Where(c => c.CompanyPersonID == companyobj.CompanyPersonID).First();
            if (oldcompanyperson == null)
            {
                throw new Exception("Record Not Found");
            }
            dc.CompanyPersons.Remove(oldcompanyperson);
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
        public List<CompanyPerson> fetchCompany(int compID)
        {
            var query = from comp in dc.CompanyPersons
                        where comp.CompanyPersonID == compID
                        select comp;
            return query.ToList();
        }
    }
}
