using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;

namespace SUIDSystem.DAL
{
    public class SUIDStaffOperatios
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public bool Insert(SUIDStaff staffobj)
        {
            dc.SUIDStaffS.Add(staffobj);
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
        public bool Update(SUIDStaff StaffObj)
        {
            SUIDStaff oldstaff = dc.SUIDStaffS.Where(s => s.SUIDStaffID == StaffObj.SUIDStaffID).First();
            if (oldstaff == null)
            {
                throw new Exception("Record Not Found");
            }
            oldstaff.DepartmentID = StaffObj.DepartmentID;
            oldstaff.SUIDStaffID = StaffObj.SUIDStaffID;
            oldstaff.StaffName = StaffObj.StaffName;
            oldstaff.Location = StaffObj.Location;
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
        public bool Delete(SUIDStaff SuidObj)
        {
            SUIDStaff oldstaff = dc.SUIDStaffS.Where(s => s.SUIDStaffID == SuidObj.SUIDStaffID).First();
            if (oldstaff == null)
            {
                throw new Exception("Record Not Found");
            }
            dc.SUIDStaffS.Remove(oldstaff);
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

        public List<SUIDStaff> fetchStaff(int sid)
        {
            var query = from staff in dc.SUIDStaffS
                        where staff.SUIDStaffID == sid
                        select staff;
            return query.ToList();
        }
    }
}