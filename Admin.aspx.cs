using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Otokiralama
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {

            }
        }

        SqlConnection conn = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog=otokiralama; " +
      "Integrated Security = true; Connect Timeout = 100");

        protected void Button7_Click(object sender, EventArgs e)
        {         
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            string sorgu = "insert into admin (isim,mail,kullanici,sifre) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            cmd.ExecuteNonQuery();
            Response.Write("Kayıt Başarılı Şekilde Yapılmıştır…");
            GridView1.DataBind();
        }

        bool Sorgula(string plaka)
        {

            return true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            string sorgu = "delete from admin where kullanici='" + TextBox3.Text + "'";

            if (Sorgula(TextBox3.Text))
            {
                SqlCommand cmd = new SqlCommand(sorgu, conn);
                cmd.ExecuteNonQuery();
                Response.Write("Sil İşlemi Başarılı");
                GridView1.DataBind();
            }
            else
            {
                Response.Write("Bu Kullanıcı Adında bir Admin Yok !!!");
                conn.Close();
            }
        }
    }
}