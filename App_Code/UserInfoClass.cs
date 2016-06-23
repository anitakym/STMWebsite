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

/// <summary>
///UserInfoClass 的摘要说明
/// </summary>
public class UserInfoClass
{
    DBClass dbObj = new DBClass();

	public UserInfoClass()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public bool UserNameExist(string v_UserName)
    {
        string cmdText = "SELECT COUNT(*) FROM User WHERE User_LogName='" + v_UserName + "'";
        int count = dbObj.RunSQLtoInt(cmdText);
        if (count == 1)
            return true;
        else
            return false;
    }


    public void AddUserInfo(string v_Name, string v_Password, string v_Sex, string v_School, string v_Email)
    {

        string cmdText = "INSERT INTO User(User_LogName ,User_Password , User_Sex , User_School , User_Email) VALUES('" + v_Name + "','" + v_Password + "','" + v_Sex + "','" + v_School + "','" + v_Email + "')";
        dbObj.RunCmd(cmdText);
    }
}
