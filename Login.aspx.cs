using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextLogName.Focus();
    }
    protected void GridViewUser_DataBound(object sender, EventArgs e)
    {
        if (GridViewUser.Rows.Count > 0) //账户名密码正确
        {
            //记录下账户名，以便传入调用的页面
            Session["UserLogName"] = TextLogName.Text.Trim().ToString();
            //验证通过，调用主页
            Response.Redirect("Recommend.aspx");
           
        }
        else
        {
            LabelErrMsg.Text = "账户名或密码名错，请重新输入！";
            TextLogName.Text = "";
            TextPassword.Text = "";
            TextLogName.Focus();
        }

    }
    protected void ButtonClear_Click(object sender, EventArgs e)
    {
        TextLogName.Text = "";
        TextPassword.Text = "";
        LabelErrMsg.Text = "";
        TextLogName.Focus();
    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        if (TextLogName.Text.Trim() == "" || TextPassword.Text.Trim() == "")
            LabelErrMsg.Text = "账户名或密码不能为空！";
        else
            GridViewUser.DataSourceID = "SqlDataSourceUser";
    }
}
