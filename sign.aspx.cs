using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sign : System.Web.UI.Page
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
        cmd.CommandText = "select * from member where username='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        MySqlDataReader ha = cmd.ExecuteReader();

        if (ha.Read())
            {
                Response.Write("<script>alert('帳號已存在!!!')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
        }
            else
            {
                Thread t1 = new Thread(MyBackgroundTask);
                t1.Start();
                Response.Write("<script>if(confirm('註冊成功'))window.location.href='SignUp.aspx'</script>");
        }

        Con.Close();
    }

    private void MyBackgroundTask()
    {
        MySqlConnection Con = new MySqlConnection(conString);
        Con.Open();
        MySqlCommand cmd2 = Con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "insert into member values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        cmd2.ExecuteNonQuery();      
        Con.Close();
//        throw new NotImplementedException();
    }
}