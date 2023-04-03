using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SUIDSystem.Model;
namespace SUIDSystem.DAL
{
    public class EducationCertficatesOperations
    {
        SUIDSystemDataContext dc = new SUIDSystemDataContext();
        public bool insert(SUIDSystem.Model.EDCertificate certobj)
        {
            dc.EDCertificates.Add(certobj);
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
        public bool Update(SUIDSystem.Model.EDCertificate certobj)
        {
            EDCertificate oldcertificates = dc.EDCertificates.Where(c => c.EDCertificateID == certobj.EDCertificateID).First();
            if (oldcertificates == null)
            {
                throw new Exception("Record Not Found");
            }
            oldcertificates.EDCertificateID = certobj.EDCertificateID;
            oldcertificates.QualificationID = certobj.QualificationID;
            oldcertificates.BordorUniversityName = certobj.BordorUniversityName;
            oldcertificates.RollNumber = certobj.RollNumber;
            oldcertificates.StudentName = certobj.StudentName;
            oldcertificates.TotalMarks = certobj.TotalMarks;
            oldcertificates.Grade = certobj.Grade;
            oldcertificates.ScanedCertificate = certobj.ScanedCertificate;
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
        public bool Delete(SUIDSystem.Model.EDCertificate certobj)
        {
            EDCertificate oldcertificates = dc.EDCertificates.Where(c => c.EDCertificateID == certobj.EDCertificateID).First();
            if (oldcertificates == null)
            {
                throw new Exception("Record Not Found");
            }
            dc.EDCertificates.Remove(oldcertificates);
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
        public List<EDCertificate> fetchAllCertficates(string rollnumber)
        {
            var query = from cert in dc.EDCertificates
                        where cert.RollNumber == rollnumber
                        select cert;
            return query.ToList();
        }
    }
}
