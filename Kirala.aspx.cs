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
    public partial class Kirala : System.Web.UI.Page
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
            string sorgu = "insert into kirala (vtarih,ttarih,plaka,kimlik) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
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

            string sorgu = "delete from kirala where kiralaId='" + TextBox3.Text + "'";

            if (Sorgula(TextBox3.Text))
            {
                SqlCommand cmd = new SqlCommand(sorgu, conn);
                cmd.ExecuteNonQuery();
                Response.Write("İşlem Başarılı");
                GridView1.DataBind();
            }
            else
            {
                Response.Write("Bu plakada araç yok");
                conn.Close();
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView2.SelectedIndex;
            GridViewRow row = GridView2.Rows[secili];
            TextBox5.Text = row.Cells[1].Text;
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView3.SelectedIndex;
            GridViewRow row = GridView3.Rows[secili];
            TextBox4.Text = row.Cells[1].Text;
        }
    }
}