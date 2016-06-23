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
///AdminInfo 的摘要说明
/// </summary>
public class AdminInfo
{

    DBClass dbObj = new DBClass(); //创建（实例化）一个数据访问层类的对象dbObj
	public AdminInfo()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public int AdminExist(string v_AdminName, string v_AdminPwd)
    {
        SqlCommand cmd = dbObj.ChangeProcToCmd("Proc_AdminExist");

        cmd.Parameters.AddWithValue("@Admin_LogName", v_AdminName);
        cmd.Parameters.AddWithValue("@Admin_Password", v_AdminPwd);

        SqlParameter returnValue = cmd.Parameters.Add("returnValue", SqlDbType.Int, 4);
        returnValue.Direction = ParameterDirection.ReturnValue;
        cmd.ExecuteNonQuery();
        dbObj.Close();
        //return Convert.ToInt32(returnValue.Value.ToString());
        return Convert.ToInt32(returnValue.Value);
    }
}
