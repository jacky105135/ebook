using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class verification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (String.Compare(Session["randomCode"].ToString(), this.TextBox1.Text, true) == 0)
        {
            Response.Write("<script language=javascript>alert('驗證碼輸入正確')</script>");
            Response.Write("<script language=javascript>window.location.href='ChangePassword.aspx'</script>");
        }
    }
}