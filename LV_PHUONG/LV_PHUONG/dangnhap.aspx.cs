using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LV_PHUONG
{
    public partial class dangnhap : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connstring"].ToString());

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            DataTable dtResult = new DataTable();

            SqlParameter user = new SqlParameter("@CB_MA", txttk.Text.Trim());
            SqlParameter pass = new SqlParameter("@DN_PASSWORD", txtmk.Text.Trim());
            SqlCommand cmd = new SqlCommand("LOGIN_SELECT_ROW", conn);
            cmd.Parameters.Add(user);
            cmd.Parameters.Add(pass);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            //SqlDataReader dr = cmd.ExecuteReader();

            SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
            sqlda.Fill(dtResult);
            Session["user"] = txttk.Text;
            Session["hoten"] = dtResult.Rows[0]["CB_TEN"].ToString();
            Response.Redirect("~/index.aspx");


            //if (dr.Read())
            //{
            //    Session["user"] = txttk.Text;
            //    Response.Redirect("~/index.aspx");
            //    Session["hoten"] = dtResult.Rows[0]["CB_HOTEN"].ToString();
            //}
            //else
            //    Response.Write("Login Faild");

            conn.Close();
        }
    }
}