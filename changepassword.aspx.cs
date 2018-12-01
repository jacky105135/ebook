using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    String conString = "SERVER = localhost; DATABASE = website; User ID = root; PASSWORD = ebook107;";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlConnection Con = new MySqlConnection(conString);
        Con.Open();
        MySqlCommand cmd = Con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        if (TextBox1.Text == TextBox2.Text)
        {
            cmd.CommandText = "update member set password = '" + TextBox1.Text + "' where username = '" + TextBox3.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>if(confirm('密碼修改成功'))location.href='SignUp.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('密碼與確認密碼不符!!!')</script>");
        }
    }
}