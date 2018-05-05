using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV_PHUONG
{
    public partial class noidungdanhgia : System.Web.UI.Page
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
            txtmand.ReadOnly = false;
            txttennd.ReadOnly = false;
            txtmatc.ReadOnly = false;
            
        }



        protected void btncapnhat_Click(object sender, EventArgs e)
        {
            if (btnthem.Visible == false && btnxoa.Visible == false)
            {
                sqlDSND.Insert();
            }
            else
            {
                sqlDSND.Update();
            }
            XoaAnButton();
            ResetNoiDung();
        }



        protected void btnxoa_Click(object sender, EventArgs e)
        {
            sqlDSND.Delete();
            ResetNoiDung();
            XoaAnButton();
        }
        private void XoaAnButton()
        {
            btncapnhat.Visible = false;
            btnhuy.Visible = false;
            btnxoa.Visible = false;
            btnthem.Visible = true;
            txtmand.ReadOnly = true;
            txttennd.ReadOnly = true;
            txtmatc.ReadOnly = true;
          
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
            txtmand.ReadOnly = true;
            txttennd.ReadOnly = true;
            txtmatc.ReadOnly = true;
        }
        private void ResetNoiDung()
        {
            txtmand.Text = "";
            txttennd.Text = "";

            txtmatc.Text = "";
       

        }

        protected void gvDSND_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gvDSND.SelectedRow;
            txtmand.Text = row.Cells[1].Text;
            txttennd.Text = row.Cells[2].Text;
            txtmatc.Text = row.Cells[3].Text;
            
            ChonAnButton();
        }

        private void ChonAnButton()
        {
            btncapnhat.Visible = true;
            btnhuy.Visible = true;
            btnxoa.Visible = true;
            btnthem.Visible = false;
            txtmand.ReadOnly = false;
            txttennd.ReadOnly = false;
            txtmatc.ReadOnly = false;
        }
    }
}
