using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
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
        cmd.CommandText = "select * from member where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            Response.Write("<script>if(confirm('登入成功'))window.location.href='https://ebooooooooooooook.blogspot.com/'</script>");
        }
        Con.Close();
            Response.Write("<script>alert('帳號密碼有誤!!!')</script>");
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("sign.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forget Password.aspx");
    }
}
