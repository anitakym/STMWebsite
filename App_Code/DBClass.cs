using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
///DBClass 的摘要说明
/// </summary>
public class DBClass
{
    private SqlConnection conn;
    public DBClass()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    public void Open()
    {
        if (conn == null)            
          //conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConnectionString"].ToString());
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["STMvideoConnectionString"].ToString());
       
        if (conn.State == ConnectionState.Closed)
            conn.Open();
    }


    public void Close()
    {
        if (conn != null && (conn.State == ConnectionState.Open))
            conn.Close();
    }


    public void Dispose()
    {
        if (conn != null)
        {
            conn.Dispose();
            conn = null;
        }
    }


    public SqlDataReader RunSQLtoDataReader(string sqlText)
    {
        Open();
        SqlCommand cmd = new SqlCommand(sqlText, conn);
        SqlDataReader dr = null;
        dr = cmd.ExecuteReader();
        return dr;
    }


    public DataTable RunSQLtoDataTable(string sqlText)
    {
        Open();

        SqlDataAdapter adap = new SqlDataAdapter(sqlText, conn);
        DataSet ds = new DataSet();

        adap.Fill(ds, "STMvideo");
        DataTable dt = ds.Tables["STMvideo"];
        Close();
        return dt;
    }


    public string RunSQLtoString(string sqlText)
    {
        Open();
        SqlCommand cmd = new SqlCommand(sqlText, conn);
        string str = cmd.ExecuteScalar().ToString();
        Close();
        return str;
    }

    public int RunSQLtoInt(string sqlText)
    {
        Open();
        SqlCommand cmd = new SqlCommand(sqlText, conn);
        int n = Convert.ToInt16(cmd.ExecuteScalar());
        Close();
        return n;
    }


    public float RunSQLtoFloat(string sqlText)
    {
        Open();
        SqlCommand cmd = new SqlCommand(sqlText, conn);
        float val = float.Parse(cmd.ExecuteScalar().ToString());
        Close();
        return val;
    }


    public void RunCmd(string cmdText)
    {
        Open();
        SqlCommand cmd = new SqlCommand(cmdText, conn);
        cmd.ExecuteNonQuery();
        Close();
    }


    public SqlCommand ChangeProcToCmd(string procName)
    {
        Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = conn;
        cmd.CommandText = procName;
        return cmd;
    }



}