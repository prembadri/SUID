using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;
using SUIDSystem.DAL;
namespace SUIDSystem.DAL
{
    public class StudentCertificatesOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();

        public bool Insert(StudentCertificate SCobj)
        {
            dc.StudentCertificates.Add(SCobj);
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
        public bool Update(StudentCertificate SCobj)
        {
            StudentCertificate oldStudentCertificate = dc.StudentCertificates.Where(s => s.StudentID == SCobj.StudentID).First();
            if (oldStudentCertificate == null)
            {
                throw new Exception("Record Not Found");
            }
            oldStudentCertificate.BordorUniversityName = SCobj.BordorUniversityName;
            oldStudentCertificate.RollNumber = SCobj.RollNumber;
            oldStudentCertificate.StudentName = SCobj.StudentName;
            oldStudentCertificate.TotalMarks = SCobj.TotalMarks;
            oldStudentCertificate.Grade = SCobj.Grade;
            oldStudentCertificate.StudentID = SCobj.StudentID;
            oldStudentCertificate.ScanedCertificate = SCobj.ScanedCertificate;
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
        public bool Delete(StudentCertificate SCobj)
        {
            StudentCertificate oldStudentCertificate = dc.StudentCertificates.Where(s => s.StudentID == SCobj.StudentID).First();
            if (oldStudentCertificate == null)
            {
                throw new Exception("Record Not Found");
            }
            dc.StudentCertificates.Remove(oldStudentCertificate);
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
        public List<StudentCertificate> fetchcertificates(int certID)
        {
            var query = from cert in dc.StudentCertificates
                        where cert.StudentID == certID
                        select cert;
            return query.ToList();
        }
    }
}
