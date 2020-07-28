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
    public partial class Musteri : System.Web.UI.Page
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
            string sorgu = "insert into musteri (kimlik,adi,soyadi,telefon,adres) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            cmd.ExecuteNonQuery();
            Response.Write("Kayıt Başarılı Şekilde Yapılmıştır…");
            GridView1.DataBind();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();

            string sorgu = "update musteri set adi = '" + TextBox2.Text + "', soyadi='" + TextBox3.Text + "',telefon= '" + TextBox4.Text + "',adres= '" + TextBox5.Text +"' where kimlik= '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            cmd.ExecuteNonQuery();
            Response.Write("İşlem Başarılı…");
            conn.Close();
            GridView1.DataBind();
        }

        bool Sorgula(string plaka)
        {

            return true;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            string sorgu = "delete from musteri where kimlik='" + TextBox1.Text + "'";

            if (Sorgula(TextBox1.Text))
            {
                SqlCommand cmd = new SqlCommand(sorgu, conn);
                cmd.ExecuteNonQuery();
                Response.Write("Sil İşlemi Başarılı");
                GridView1.DataBind();
            }
            else
            {
                Response.Write("Bu Kimlik Numarasıyla Eşleşen Müşteri Yok!!!");
                conn.Close();
            }
        }
    }
}