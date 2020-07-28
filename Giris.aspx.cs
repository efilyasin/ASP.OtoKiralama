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
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string baglanti = "Data Source =.\\SQLEXPRESS; Initial Catalog = otokiralama; Integrated Security = true;";
            SqlConnection conn = new SqlConnection(baglanti);
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            SqlCommand sorgula = new SqlCommand("select * from admin where kullanici = '" + TextBox1.Text + "' and sifre='" + TextBox2.Text + "'", conn);
            SqlDataReader dr = sorgula.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = ("Kullanıcı Adı veya Şifre Yanlış");
            }
        }
    }
}