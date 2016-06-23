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

public partial class Register : System.Web.UI.Page
{
    UserInfoClass ucObj = new UserInfoClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            txtUserName.Focus();
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtPwd.Text = "";
        txtSchool.Text = "";
        txtEmail.Text = "";
        rbSex.ClearSelection();
        Label11.Text = "";

        txtUserName.Focus();

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string strSex;
        if (Page.IsValid)
        {
            if (ucObj.UserNameExist(txtUserName.Text.Trim()) == false)
            {
                string strName = txtUserName.Text.Trim();
                string strPwd = txtPassword.Text.Trim();
               
                if (rbSex.Items[0].Selected)
                    strSex = rbSex.Items[0].Text;
                else
                    strSex = rbSex.Items[1].Text;

               
                string strSchool = txtSchool.Text.Trim();
                string strEmail = txtEmail.Text.Trim();

                ucObj.AddUserInfo(strName, strPwd, strSex, strSchool, strEmail);
                Label11.Text = "恭喜您，注册成功!";
            }
            else
                Label11.Text = "用户名已存在，请重新输入!";
        }
    }

}
