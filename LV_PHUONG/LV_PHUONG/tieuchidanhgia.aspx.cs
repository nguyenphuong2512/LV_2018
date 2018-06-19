using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV_PHUONG
{
    public partial class tieuchidanhgia1 : System.Web.UI.Page
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
            txtmatc.ReadOnly = false;
            txttentc.ReadOnly = false;
            
        }



        protected void btncapnhat_Click(object sender, EventArgs e)
        {
            if (btnthem.Visible == false && btnxoa.Visible == false)
            {
                sqlDSTC.Insert();
            }
            else
            {
                sqlDSTC.Update();
            }
            XoaAnButton();
            ResetNoiDung();
        }



        protected void btnxoa_Click(object sender, EventArgs e)
        {
            sqlDSTC.Delete();
            ResetNoiDung();
            XoaAnButton();
        }
        private void XoaAnButton()
        {
            btncapnhat.Visible = false;
            btnhuy.Visible = false;
            btnxoa.Visible = false;
            btnthem.Visible = true;
            txtmatc.ReadOnly = true;
            txttentc.ReadOnly = true;
          
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
            txtmatc.ReadOnly = true;
            txttentc.ReadOnly = true;
        }
        private void ResetNoiDung()
        {
            txtmatc.Text = "";
            txttentc.Text = "";

            

        }

        protected void gvDSTCDG_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gvDSTCDG.SelectedRow;
            txtmatc.Text = row.Cells[1].Text;
            txttentc.Text = HttpUtility.HtmlDecode(row.Cells[2].Text).ToString();
            
            ChonAnButton();
        }

        private void ChonAnButton()
        {
            btncapnhat.Visible = true;
            btnhuy.Visible = true;
            btnxoa.Visible = true;
            btnthem.Visible = false;
            txtmatc.ReadOnly = false;
            txttentc.ReadOnly = false;
        }
    }
}
