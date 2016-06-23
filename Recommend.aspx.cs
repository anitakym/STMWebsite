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

public partial class Recommend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //将日期转换为星期
        string week;
        week = DateTime.Today.DayOfWeek.ToString(); // 在日期提示标签控件中显示星期
        switch (week)    //将英文星期值转换成中文
        {
            case "Sunday":
                week = " 星期日"; break;
            case "Monday":
                week = " 星期一"; break;
            case "Tuesday":
                week = " 星期二"; break;
            case "Wednesday":
                week = " 星期三"; break;
            case "Thursday":
                week = " 星期四"; break;
            case "Friday":
                week = " 星期五"; break;
            case "Saturday":
                week = " 星期六"; break;
            default:
                week = DateTime.Today.DayOfWeek.ToString(); break;
        }

        lblDate.Text = lblDate.Text + DateTime.Now.ToLongDateString() + week;
        lblAdmin.Text = lblAdmin.Text + Session["UserLogName"].ToString();
    }
}
