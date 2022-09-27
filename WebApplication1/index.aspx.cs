using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using Microsoft.Ajax.Utilities;
using System.Collections;
using System.Runtime.Remoting.Messaging;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        ArrayList x = new ArrayList();
        SqlConnection con = new SqlConnection(@"Data Source=BATUHAN;Initial Catalog=test;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            grid();
           
        }

        protected void grid()
        {
           if(DropDownList1.SelectedValue != "0")
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from  " + DropDownList1.SelectedItem.Text + "", con);
                DataSet ds = new DataSet();

                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
           
        }
      
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            area.Controls.Add(new LiteralControl(""));

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           if(DropDownList1.SelectedValue != "0")
            {
                msg.Text = "";
                con.Open();
                string sql = "select DISTINCT * from " + DropDownList1.SelectedItem.Text.ToString() + " ";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    string table = "<tr><th>" + dr["sno"].ToString() + "</th><th>" + dr["ad"].ToString() + "</th></tr>";
                    area.Controls.Add(new LiteralControl(table));



                }

                con.Close();
            }
            else
            {
                msg.Text = "Tablo Seçiniz";
            }
        }
    }
}