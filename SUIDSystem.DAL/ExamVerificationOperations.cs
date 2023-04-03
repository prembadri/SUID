using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.DAL;
using SUIDSystem.Model;

namespace SUIDSystem.DAL
{
    public class ExamVerificationOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();

        public ExamControllerVerifcation Insert(ExamControllerVerifcation exobj)
        {
            dc.ExamControllerVerifcations.Add(exobj);
            int result = dc.SaveChanges();
            if (result > 0)
            {
                var qury = (from s in dc.ExamControllerVerifcations
                           select s).SingleOrDefault();
                return qury;
            }
            else
            {
                throw new Exception("Insert Failed");
            }
        }
        

        public List<Tempertificate> fetchstudent()
        {
            var qry = from examcontroller in dc.ExamControllerVerifcations
                      join
                      s in dc.Students on examcontroller.StudentID equals s.StudentID
                      join
                      sc in dc.StudentCertificates on s.StudentID equals sc.StudentID
                      select new Tempertificate { suidno = examcontroller.SUIDNo, studentName = s.StudentName, boardName = sc.BordorUniversityName, rollNo = sc.RollNumber, certificate = sc.ScanedCertificate, grade = sc.Grade };
            return qry.ToList();
        }
    }

    public class Tempertificate
    {
        public String  suidno{ get; set; }
        public string studentName { get; set; }
        public string boardName { get; set; }
        public string  rollNo{ get; set; }
        public string certificate { get; set; }
        public string grade { get; set; }
    }
}
