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
    public partial class Arac : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack)
            {
               
            }
        }

        SqlConnection conn = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog=otokiralama; " +
       "Integrated Security = true; Connect Timeout = 100");

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            string sorgu = "insert into arac (plaka,marka,model,kasatipi,km,durum) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + DropDownList2.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            cmd.ExecuteNonQuery();
            Response.Write("Kayıt Başarılı Şekilde Yapılmıştır…");
            GridView1.DataBind();
            
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();

            string sorgu = "update arac set marka = '" + TextBox2.Text + "', model='" + TextBox3.Text + "',kasatipi= '" + DropDownList1.SelectedValue + "',km= '" + TextBox4.Text + "', durum='" + DropDownList2.SelectedValue + "' where plaka= '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            cmd.ExecuteNonQuery();
            Response.Write("Güncelleme Başarılı…");
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

            string sorgu = "delete from arac where plaka='" + TextBox1.Text + "'";

            if (Sorgula(TextBox1.Text))
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
    }
}