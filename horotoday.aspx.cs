using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Amit"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label1.Text = " HOROSCOPE TODAY";
       // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Amit"].ConnectionString);
        conn.Open();
        string check = "select * from [dbo].[Table] where sign ='" + DropDownList1.Text + "'";
        SqlCommand comm = new SqlCommand(check, conn);
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {

            TextBox1.Text = (dr["today"].ToString());
            TextBox2.Text = (dr["sign_lord"].ToString());
        }
       
        conn.Close();
        
        // Image1.ImageUrl = "~/images/Aquarius.jpg";
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Label1.Text = " HOROSCOPE MONTHLY";
        conn.Open();
        string check = "select * from [dbo].[Table] where sign ='" + DropDownList1.Text + "'";
        SqlCommand comm = new SqlCommand(check, conn);
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {

            TextBox1.Text = (dr["month"].ToString());
            TextBox2.Text = (dr["sign_lord"].ToString());
        }
        conn.Close();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Label1.Text = " HOROSCOPE WEEKLY";
        conn.Open();
        string check = "select * from [dbo].[Table] where sign ='" + DropDownList1.Text + "'";
        SqlCommand comm = new SqlCommand(check, conn);
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {

            TextBox1.Text = (dr["week"].ToString());
            TextBox2.Text = (dr["sign_lord"].ToString());
        }
        conn.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = " HOROSCOPE TODAY";
        conn.Open();
        string check = "select * from [dbo].[Table] where sign ='" + DropDownList1.Text + "'";
        SqlCommand comm = new SqlCommand(check, conn);
        SqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {

            TextBox1.Text = (dr["today"].ToString());
            TextBox2.Text = (dr["sign_lord"].ToString());
        }
        conn.Close(); 
    }
}