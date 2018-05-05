using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV_PHUONG
{
    public partial class hocvi : System.Web.UI.Page
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
            txtmadv.ReadOnly = false;
            txttendv.ReadOnly = false;
            txttructhuoc.ReadOnly = false;
            txtmacb.ReadOnly = false;
        }

       

        protected void btncapnhat_Click(object sender, EventArgs e)
        {
            if (btnthem.Visible == false && btnxoa.Visible == false)
            {
                sqlDSDONVI.Insert();
            }
            else
            {
                sqlDSDONVI.Update();
            }
            XoaAnButton();
            ResetNoiDung();
        }

       

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            sqlDSDONVI.Delete();
            ResetNoiDung();
            XoaAnButton();
        }
        private void XoaAnButton()
        {
            btncapnhat.Visible = false;
            btnhuy.Visible = false;
            btnxoa.Visible = false;
            btnthem.Visible = true;
            txtmadv.ReadOnly = true;
            txttendv.ReadOnly = true;
            txttructhuoc.ReadOnly = true;
            txtmacb.ReadOnly = true;
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
            txtmadv.ReadOnly = true;
            txttendv.ReadOnly = true;
            txttructhuoc.ReadOnly = true;
            txtmacb.ReadOnly = true;
        }
        private void ResetNoiDung()
        {
            txtmadv.Text = "";
            txttendv.Text = "";

            txttructhuoc.Text = "";
            txtmacb.Text = "";
       
    }

        protected void gvDSDONVI_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gvDSDONVI.SelectedRow;
            txtmadv.Text = row.Cells[1].Text;
            txttendv.Text = row.Cells[2].Text;
            txttructhuoc.Text = row.Cells[3].Text;
            txtmacb.Text = row.Cells[4].Text;
            ChonAnButton();
        }

        private void ChonAnButton()
        {
 	        btncapnhat.Visible = true;
            btnhuy.Visible = true;
            btnxoa.Visible = true;
            btnthem.Visible = false;
            txtmadv.ReadOnly = false;
            txttendv.ReadOnly = false;
            txttructhuoc.ReadOnly = false;
            txtmacb.ReadOnly = false;
        }
    }
}
