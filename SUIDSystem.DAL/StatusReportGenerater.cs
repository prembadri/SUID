using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;
using SUIDSystem.DAL;
namespace SUIDSystem.DAL
{
    public class StatusReportGenerater
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();

        public bool insert(StatusReport stobj)
        {
            dc.StatusReports.Add(stobj);
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
        public bool update(StatusReport stobj)
        {
            StatusReport oldstatusreport = dc.StatusReports.Where(st => st.StatusReportID == stobj.StatusReportID).First();
            if (oldstatusreport == null)
            {
                throw new Exception("RecordNot Found");
            }
            oldstatusreport.StatusReportID = stobj.StatusReportID;
            oldstatusreport.StudentID = stobj.StudentID;
            oldstatusreport.SUIDStaffID = stobj.SUIDStaffID;
            oldstatusreport.Status = stobj.Status;
            oldstatusreport.RemarksonStatus = stobj.RemarksonStatus;
            oldstatusreport.UplodedData = stobj.UplodedData;
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
        public bool delete(StatusReport stobj)
        {
            StatusReport oldstatusreport = dc.StatusReports.Where(st => st.StatusReportID == stobj.StatusReportID).First();
            if (oldstatusreport == null)
            {
                throw new Exception("RecordNot Found");
            }
            dc.StatusReports.Remove(oldstatusreport);
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
        public List<StatusReport> fetchLastStatusREport()
        {
            var query = (from cust in dc.StatusReports
                         orderby cust.StudentID descending
                         select cust);
            return query.ToList();
        }

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
                        select new statusView { StdNo= suid.SUIDNo,Status =status.Status,RemarksOnStatus = status.RemarksonStatus, UplodedData =status.UplodedData, StudentName = stud.StudentName };
            return query.ToList();
        }
    }
}
