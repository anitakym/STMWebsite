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

public partial class Search : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imgbtnSearch_Click(object sender, ImageClickEventArgs e)
    {
        string v_SearchType, v_SearchKey;
        v_SearchType = ddlSearchType.SelectedItem.ToString();
        v_SearchKey = txtSearchKey.Text.Trim().ToString();
        Response.Redirect("SearchVideo.aspx?Type=" + v_SearchType + "&Key=" + v_SearchKey);
    }
}
