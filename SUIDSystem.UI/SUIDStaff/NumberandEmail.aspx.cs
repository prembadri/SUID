using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace SUIDSystem.UI.SUIDStaff
{
    public partial class NumberandEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        SUIDSystem.DAL.SUIDSystemDataContext dc = new DAL.SUIDSystemDataContext();
        SUIDSystem.DAL.UidNumberGenerater dal = new DAL.UidNumberGenerater();
        protected void Button2_Click(object sender, EventArgs e)
        {
            int i=Convert.ToInt32(txtstudentID.Text);
            var mail = (from email in dc.Students
                        where email.StudentID == i
                        select email.Email).SingleOrDefault();

            bool flag = true;
            while (flag)
            {
                Random rand = new Random();
                string rand1 = Convert.ToString(rand.Next(1000, 9000));
                string rand2 = Convert.ToString(rand.Next(2000, 9999));
                string year = Convert.ToString(DateTime.Today.Year);
                string number = year + rand1 + rand2;

                //Checking
                var qury = (from numb in dc.SUIDNumbers
                            where numb.SUIDNo == number
                            select numb);

                if (qury.Count() == 0)
                {
                    //inssert
                    int result = dal.Insert(new SUIDSystem.Model.SUIDNumber
                    {
                        SUIDNo = number,
                        StudentID = Convert.ToInt32(txtstudentID.Text)
                    });
                    if (result == 0)
                    {
                        Response.Write("SUIDNumber IS Generated and Inserted Successfully");

                        MailMessage msg = new MailMessage();
                        //sender e-mail address
                        msg.From = new MailAddress("suidindia@gmail.com");
                        //recipent email address
                        msg.To.Add(mail.ToString());
                        msg.Subject = "SUID India --Education Department Mail";
                        msg.Body = " Hi Student, TO Download Your SUID Card Go to www.suid.com  and login with your user credentials and download your card ";
                        //remote SMTP Server IP.
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        smtp.Port = 587;
                        smtp.Credentials = new System.Net.NetworkCredential("suidindia@gmail.com", "9700617117");
                        smtp.EnableSsl = true;
                        smtp.Send(msg);
                        msg = null;

                    }

                }
                else
                {
                    Response.Write("SUIDNumber IS Generated and Inserted un Successfully");
                }
                break;
            }
        }
    }
}

