using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV_PHUONG
{
    public partial class canbo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            TaoMoiAnButton();
            ResetNoiDung();
        }

        private void TaoMoiAnButton()
        {
            btncapnhat.Visible = true;
            btnhuy.Visible = true;
            btnxoa.Visible = false;
            btnthem.Visible = false;
            txtmacb.ReadOnly = false;
            txttencb.ReadOnly = false;
            
            txtgt.ReadOnly = false;
            txtdiachi.ReadOnly = false;
            txtemail.ReadOnly = false;
            txtcv.ReadOnly = false;
           
        }



        protected void btncapnhat_Click(object sender, EventArgs e)
        {
            if (btnthem.Visible == false && btnxoa.Visible == false)
            {
                sqlDSCANBO.Insert();
            }
            else
            {        
                sqlDSCANBO.Update();
            }
            XoaAnButton();
            ResetNoiDung();
        }



        protected void btnxoa_Click(object sender, EventArgs e)
        {
            sqlDSCANBO.Delete();
            ResetNoiDung();
            XoaAnButton();
        }
        private void XoaAnButton()
        {
            btncapnhat.Visible = false;
            btnhuy.Visible = false;
            btnxoa.Visible = false;
            btnthem.Visible = true;
            txtmacb.ReadOnly = true;
            txttencb.ReadOnly = true;
            
            txtgt.ReadOnly = true;
            txtdiachi.ReadOnly = true;
            txtemail.ReadOnly = true;
            txtcv.ReadOnly = true;
            
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            ResetNoiDung();
            HuyAnButton();
        }

        private void HuyAnButton()
        {
            btncapnhat.Visible = false;
            btnhuy.Visible = false;
            btnxoa.Visible = false;
            btnthem.Visible = true;
            txtmacb.ReadOnly = true;
            txttencb.ReadOnly = true;
           
            txtgt.ReadOnly = true;
            txtdiachi.ReadOnly = true;
            txtemail.ReadOnly = true;
            txtcv.ReadOnly = true;
           
        }
        private void ResetNoiDung()
        {
            txtmacb.Text = "";
            txttencb.Text = "";
           
            txtgt.Text = "";
            txtdiachi.Text = "";
            txtemail.Text = "";
            txtcv.Text = "";
           

        }

        protected void gvDSCANBO_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gvDSCANBO.SelectedRow;
            txtmacb.Text = row.Cells[1].Text;
            txttencb.Text = HttpUtility.HtmlDecode(row.Cells[2].Text).ToString();
            
            txtgt.Text = HttpUtility.HtmlDecode(row.Cells[4].Text).ToString();
            txtdiachi.Text = HttpUtility.HtmlDecode(row.Cells[5].Text).ToString();
            txtemail.Text = row.Cells[6].Text;
            txtcv.Text = HttpUtility.HtmlDecode(row.Cells[7].Text).ToString();
            
        
            ChonAnButton();
        }

        private void ChonAnButton()
        {
            btncapnhat.Visible = true;
            btnhuy.Visible = true;
            btnxoa.Visible = true;
            btnthem.Visible = false;
            txtmacb.ReadOnly = false;
            txttencb.ReadOnly = false;
           
            txtgt.ReadOnly = false;
            txtdiachi.ReadOnly = false;
            txtemail.ReadOnly = false;
            txtcv.ReadOnly = false;
            
        }
    }
}