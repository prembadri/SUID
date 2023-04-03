using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;
using SUIDSystem.DAL;

namespace SUIDSystem.DAL
{
    public class CompanyVerificationOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public class statusView
        {
            public string StdNo { get; set; }
            public string Status { get; set; }
            public string RemarksOnStatus { get; set; }
            public string UplodedData { get; set; }
            public string StudentName { get; set; }
        }
        public List<statusView> fetchStatusReport(string suidno)
        {
            var query = from suid in dc.SUIDNumbers
                        join
                        status in dc.StatusReports
                        on suid.StudentID equals status.StudentID
                        join
                        stud in dc.Students
                        on status.StudentID equals stud.StudentID
                        where suid.SUIDNo == suidno
                        select new statusView { StdNo = suid.SUIDNo, Status = status.Status, RemarksOnStatus = status.RemarksonStatus, UplodedData = status.UplodedData, StudentName = stud.StudentName };
            return query.ToList();
        }
        public class certificatesview
        {
            public string StdNo { get; set; }
            public string StudentName { get; set; }
            public string  Photo { get; set; }
            public string qulificationname { get; set; }
            public int TotalMarks { get; set; }
            public string Scandcert { get; set; }
        }
        public List<certificatesview> fetchcertficates(string suidno)
        {
            var query = from suid in dc.SUIDNumbers
                        join
                        scert in dc.StudentCertificates
                        on suid.StudentID equals scert.StudentID
                        join
                        stud in dc.Students
                        on scert.StudentID equals stud.StudentID
                        where suid.SUIDNo == suidno
                        select new certificatesview
                        { 
                            StdNo = suid.SUIDNo,
                            StudentName = stud.StudentName,
                            Photo=stud.Photo,Scandcert= scert.ScanedCertificate,qulificationname=scert.BordorUniversityName,TotalMarks=scert.TotalMarks
                        };
            return query.ToList();
        }
    }
}
