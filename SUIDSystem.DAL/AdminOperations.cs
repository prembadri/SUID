using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;

namespace SUIDSystem.DAL
{
    public class AdminOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public List<Admin> FetchAdmin(int AdminID)
        {
            var query1 = from admin in dc.Admins
                         where admin.AdminID == AdminID
                         select admin;
            return query1.ToList();
        }
        public bool Insert(Admin adminobj)
        {
            dc.Admins.Add(adminobj);
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
        public bool Update(Admin Adminobj)
        {
            Admin oldAdmin = dc.Admins.Where(d => d.AdminID == Adminobj.AdminID).First();
            if (oldAdmin == null)
            {
                throw new Exception("Record Not Found");
            }
            oldAdmin.DepartmentID = Adminobj.DepartmentID;
            oldAdmin.AdminName = Adminobj.AdminName;
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
        public bool Delete(Admin AdminObj)
        {
            Admin oldAdmin = dc.Admins.Where(d => d.AdminID == AdminObj.AdminID).First();
            if (oldAdmin == null)
            {
                throw new Exception("Record not Found");
            }
            dc.Admins.Remove(oldAdmin);
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
        
    }
}
