using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace PROJ2_PTE.Class
{
    public static class DAT
    {
        static string ConnStr = "Server=localhost;Database=ISPROJ2;Trusted_Connection=True;";
        static SqlConnection SCN;

        static void Open()
        {
            SCN = new SqlConnection(ConnStr);
            SCN.Open();
        }

        static void Close()
        {
            SCN.Close();
        }

        public static DataTable getEmployees()
        {
            Open();
            string strGet = "SELECT Em_ID, F_Name, L_Name FROM Employee";
            SqlCommand SCM = new SqlCommand(strGet, SCN);
            SqlDataAdapter SDA = new SqlDataAdapter(SCM);
            DataTable DTB = new DataTable();
            SDA.Fill(DTB);
            Close();

            return DTB;
        }

        public static void createProject(string Pr_ID, string Pr_Title, int SAP_Ref, string Details, int Client, int Supervisor, int Pr_Lead, string PS_Date, string PE_Date)
        {
            Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Project(proj_code, proj_title, proj_ref, proj_descr, client_id, proj_manager, proj_leader, proj_startDate, proj_endDate, status)"
                 + "VALUES( @PrID, @PrTitle, @SAPRef, @Details, @Client, @Super, @PrLead, @SDate, @EDate, 1)", SCN);

            cmd.Parameters.AddWithValue("@PrID", Pr_ID);
            cmd.Parameters.AddWithValue("@PrTitle", Pr_Title);
            cmd.Parameters.AddWithValue("@SAPRef", SAP_Ref);
            cmd.Parameters.AddWithValue("@Details", Details);
            cmd.Parameters.AddWithValue("@Client", Client);
            cmd.Parameters.AddWithValue("@Super", Supervisor);
            cmd.Parameters.AddWithValue("@PrLead", Pr_Lead);
            cmd.Parameters.AddWithValue("@SDate", PS_Date);
            cmd.Parameters.AddWithValue("@EDate", PE_Date);

            cmd.ExecuteNonQuery();
            Close();
        }

        public static void insertTask(int Task_ID, string Pr_ID, string Details, string TS_Date, string TE_Date, int Preq_ID)
        {
            Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO ProjectTask(projTask_id, proj_code, projTask_descr, projTask_startDate, projTask_endDate, projTask_preq, status) "
                + "VALUES (@TaskID, @PrID, @Details, @TSDate, @ETDate, @PreqID, 1)", SCN);

            cmd.Parameters.AddWithValue("@TaskID", Task_ID);
            cmd.Parameters.AddWithValue("@PrID", Pr_ID);
            cmd.Parameters.AddWithValue("@Details", Details);
            cmd.Parameters.AddWithValue("@TSDate", TS_Date);
            cmd.Parameters.AddWithValue("@ETDate", TE_Date);
            cmd.Parameters.AddWithValue("@PreqID", Preq_ID);

            cmd.ExecuteNonQuery();
            Close();
        }

        public static void insertTaskEm(int Em_ID, int Ref_ID)
        {
            Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO ProjectPersonnel(projTask_id, emp_id) VALUES (@RefID, @EmID)", SCN);
            cmd.Parameters.AddWithValue("@RefID", Ref_ID);
            cmd.Parameters.AddWithValue("@EmID", Em_ID);

            cmd.ExecuteNonQuery();
            Close();
        }

        public static string forMailSend(int ID)
        {
            Open();
            SqlCommand cmd = new SqlCommand("SELECT Email FROM Employee WHERE Em_ID = @ID", SCN);
            cmd.Parameters.AddWithValue("@ID", ID);
            string ret = cmd.ExecuteScalar().ToString();   
            Close();
            return ret;
            
        }

        public static DataTable getMyTasks(int ID)
        {
            Open();
            string strGet = "SELECT ProjectTask.projTask_descr, ProjectTask.proj_code, ProjectPersonnel.projTask_id, ProjectTask.projTask_id, CONVERT(CHAR(10), CONVERT(DATE, ProjectTask.projTask_startDate), 120)" +
                " AS 'Start Date' FROM ProjectTask INNER JOIN ProjectPersonnel ON ProjectTask.projTask_id = ProjectPersonnel.projTask_id WHERE ProjectPersonnel.emp_id = @ID AND ProjectTask.status = 1" +
                " AND ProjectTask.projTask_startDate BETWEEN CONVERT(VARCHAR(10), GETDATE(), 120) and CONVERT(VARCHAR(10), GETDATE() + 6, 120) ORDER BY ProjectTask.projTask_startDate ASC";
            SqlCommand SCM = new SqlCommand(strGet, SCN);
            SCM.Parameters.AddWithValue("@ID", ID);
            SqlDataAdapter SDA = new SqlDataAdapter(SCM);
            DataTable DTB = new DataTable();
            SDA.Fill(DTB);
            Close();

            return DTB;
        }

        public static DataTable kliyente(int ID)
        {
            Open();
            string strGet = "SELECT Client.Comp_Name FROM Client INNER JOIN Project ON Client.Cl_ID=Project.Client WHERE Project.Pr_ID = @ID";
            SqlCommand SCM = new SqlCommand(strGet, SCN);
            SCM.Parameters.AddWithValue("@ID", ID);
            SqlDataAdapter SDA = new SqlDataAdapter(SCM);
            DataTable DTB = new DataTable();
            SDA.Fill(DTB);
            Close();

            return DTB;
        }
        public static void updateTask(int ID)
        {
            Open();
            string strGet = "UPDATE Task SET Status = 'COMPLETE' WHERE Ref_ID = @ID";
            SqlCommand SCM = new SqlCommand(strGet, SCN);
            SCM.Parameters.AddWithValue("@ID", ID);
            SCM.ExecuteNonQuery();
            Close();
        }

        public static DataTable logIn(int usern, string passw)
        {
            Open();
            SqlCommand cmd = new SqlCommand("SELECT emp_user_id, emp_fname + ' ' + emp_lname AS Name, Position.descr FROM Personnel" +
            " INNER JOIN Position ON Personnel.emp_position = Position.position_id INNER JOIN UserAcct ON Personnel.emp_user_id = UserAcct.user_id" +
            " WHERE UserAcct.user_id = @usern AND UserAcct.password = @passw", SCN);
            cmd.Parameters.AddWithValue("@usern", usern);
            cmd.Parameters.AddWithValue("@passw", passw);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Close();

            return dt;
        }

        public static string getItemDetail(int itemID)
        {
            Open();
            SqlCommand cmd = new SqlCommand("SELECT stock_desc FROM Stock WHERE stock_id = @ID", SCN);
            cmd.Parameters.AddWithValue("@ID", itemID);
            string ret = cmd.ExecuteScalar().ToString();
            Close();
            return ret;
        }
        public static string insertBOM(string pono, int prepBy, string projCode)
        {

            Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO BillofMaterial(bom_poNo, bom_preparedBy, proj_code) OUTPUT inserted.bom_no VALUES (@pono, @preparedby, @projcode)", SCN);

            cmd.Parameters.AddWithValue("@pono", pono);
            cmd.Parameters.AddWithValue("@preparedby", prepBy);
            cmd.Parameters.AddWithValue("@projcode", projCode);
            string ret = cmd.ExecuteScalar().ToString();
            Close();
            return ret;
        }

        public static void insertBOMDet(string stockcode, int BOMid)
        {
            Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO BillofMaterialDetail(bom_no, stock_code) VALUES (@BOMid, @stockcode)", SCN);

            cmd.Parameters.AddWithValue("@BOMid", BOMid);
            cmd.Parameters.AddWithValue("@stockcode", stockcode);
            cmd.ExecuteNonQuery();
            Close();
        }

        public static DataTable projectBill(string projcode)
        {
            Open();
            SqlCommand cmd = new SqlCommand("SELECT BillofMaterialDetail.bom_no, BillofMaterial.bom_poNo, BillofMaterialDetail.stock_code, Stock.stock_price, Stock.stock_unit + ': ' + Stock.stock_desc AS stockdescr "
                    + "FROM BillofMaterialDetail "
                        + "INNER JOIN Stock ON Stock.stock_code = BillofMaterialDetail.stock_code "
                        + "INNER JOIN BillofMaterial ON BillofMaterial.bom_no = BillofMaterialDetail.bom_no "
                        + "INNER JOIN Project ON Project.proj_code = BillofMaterial.proj_code "
                            + "WHERE Project.proj_code = @projcode", SCN);
            cmd.Parameters.AddWithValue("@projcode", projcode);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Close();

            return dt;
        }

        public static DataTable projectBillTsk(string projcode)
        {
            Open();
            SqlCommand cmd = new SqlCommand("SELECT projTask_id, projTask_descr, projTask_endDate, projTask_actualend, projTask_cost FROM ProjectTask WHERE proj_code = @projcode", SCN);
            cmd.Parameters.AddWithValue("@projcode", projcode);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Close();

            return dt;
        }

    } //static class END-------------------------------><<
}