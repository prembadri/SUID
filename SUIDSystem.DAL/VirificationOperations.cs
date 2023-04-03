using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;
using SUIDSystem.DAL;
namespace SUIDSystem.DAL
{
    public class VirificationOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public List<Student> fetchStudents(int CustomerID)
        {
            var query = from stud in dc.Students
                        where stud.StudentID != CustomerID && stud.StudentID > CustomerID
                        select stud;
            return query.ToList();
        }
        public List<EDCertificate> fetchcertificates(string rollnumber)
        {
            var query = from cert in dc.EDCertificates
                        where cert.RollNumber == rollnumber
                        select cert;
            return query.ToList();
        }
    }
}
