using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;


namespace PROJ2_PTE.Class
{
    public class Business
    {
        public DataTable getEmp()
        {
            return DAT.getEmployees();
        }

        public static void createProj(string Pr_ID, string pr_Title, string SAP_Ref, string Details, string Client, string Supervisor, string Pr_Lead, string S_Date, string E_Date, DataTable TaskMem, DataTable Task)
        {
            //Pr_ID, Pr_Title, SAP_Ref, Details, Client, Supervisor, Pr_Lead, S_Date, E_Date
            DAT.createProject(Pr_ID, pr_Title, int.Parse(SAP_Ref), Details, int.Parse(Client), int.Parse(Supervisor), int.Parse(Pr_Lead), S_Date, E_Date);

            foreach (DataRow row in Task.Rows)
            {
                DAT.insertTask(int.Parse(row[0].ToString()), Pr_ID, row[1].ToString(),
                    row[2].ToString(), row[3].ToString(), int.Parse(row[4].ToString()));
            }

            foreach (DataRow row in TaskMem.Rows)
            {
                DAT.insertTaskEm(int.Parse(row[2].ToString()), int.Parse(row[0].ToString()));
            }

            //DataView DV = new DataView(TaskMem);
            //DataTable Test = DV.ToTable(true, "Task Assigned ID");

            //foreach (DataRow row in Test.Rows)
            //{
            //    sendMails(int.Parse(row[0].ToString()));
            //}
        }

        static void sendMails(int ID)
        {

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("noreply@gmail.com");
            mail.To.Add(DAT.forMailSend(ID).ToString());
            mail.Subject = "Test Mail SMTP";
            mail.Body = "This is a system message. You have been notified for a work order, please log-in and check your PRIMS Account.";


            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("smtptestjolo1@gmail.com", "passwierd123");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
        }

        public DataTable getMyTask(string ID)
        {
            return DAT.getMyTasks(int.Parse(ID));
        }

        public DataTable kliyent(string ID)
        {
            return DAT.kliyente(int.Parse(ID));
        }

        public static void updateThisTask(string ID)
        {
            DAT.updateTask(int.Parse(ID));
        }

        public static Tuple<bool, string[]> chkLogIn(string usern, string passw)
        {
            DataTable dt = DAT.logIn(int.Parse(usern), passw);
            bool result = true;
            string[] arr = new string[3];

            if (dt.Rows.Count.Equals(0))
            {
                result = false;
            }
            else
            {
                arr[0] = usern;
                arr[1] = dt.Rows[0][1].ToString();
                arr[2] = dt.Rows[0][2].ToString();
            }
            return Tuple.Create(result, arr);


        }

        public string getItemDesc(string ItemID)
        {
            return DAT.getItemDetail(int.Parse(ItemID));
        }

        public static string insrtBOM(string pono, string prepBy, string projCode)
        {
            return DAT.insertBOM(pono, int.Parse(prepBy), projCode);
        }

        public static void insrtBD(string BOMid, string stockcode)
        {
            DAT.insertBOMDet(stockcode, int.Parse(BOMid));
        }
    }  // CLASS END HERE -----------------------------------------><<
}