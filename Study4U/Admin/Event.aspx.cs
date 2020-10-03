using CKFinder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Study4U.Admin
{
    public partial class Event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Add Modal
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(@"<script type='text/javascript'>");
            sb.Append("$('#addModal').modal('show');");
            sb.Append(@"</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AddShowModalScript", sb.ToString(), false);

        }



        protected void btnAddRecord_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var parameters = SqlDataSource1.InsertParameters;
                //  <%--([ChuDe], [MoTa], [NoiDung], [NgayDang], [NgayBatDau], [NgayKetThuc], [HinhAnh], [ID_User])--%>

                parameters["ChuDe"].DefaultValue = txtChuDe.Text;
                parameters["MoTa"].DefaultValue = txtMoTa.Text;
                parameters["NoiDung"].DefaultValue = txtNoiDung.Text;
                parameters["NgayDang"].DefaultValue = txtNgayDang.Text;
                parameters["NgayBatDau"].DefaultValue = txtNgayBatDau.Text;
                parameters["NgayKetThuc"].DefaultValue = txtNgayKetThuc.Text;
                parameters["HinhAnh"].DefaultValue = txtHinhAnh.Text;
                parameters["ID_User"].DefaultValue = ddlID_User.SelectedValue;
                try
                {
                    if (txtChuDe.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtMoTa.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }

                    else if (txtNgayDang.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtNgayBatDau.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtNgayKetThuc.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }

                    else
                    {
                        SqlDataSource1.Insert();
                        txtChuDe.Text = "";
                        txtMoTa.Text = "";
                        txtNoiDung.Text = "";
                        txtNgayDang.Text = "";
                        txtNgayBatDau.Text = "";
                        txtNgayKetThuc.Text = "";
                        txtHinhAnh.Text = "";
                        StringBuilder sb = new StringBuilder();
                        sb.Append(@"<script type='text/javascript'>");
                        sb.Append("alert('Record Added Successfully');");
                        sb.Append("$('#addModal').modal('hide');");
                        sb.Append(@"</script>");
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AddHideModalScript", sb.ToString(), false);

                    }
                }
                catch (Exception)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Vui lòng kiểm tra lại.');", true);
                }
            }
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName.Equals("editRecord"))
            {
                GridViewRow gvrow = GridView1.Rows[index];
                txtID_Event1.Text = HttpUtility.HtmlDecode(gvrow.Cells[2].Text).ToString();
                txtChuDe1.Text = HttpUtility.HtmlDecode(gvrow.Cells[3].Text).ToString().Trim();
                txtMoTa1.Text = HttpUtility.HtmlDecode(gvrow.Cells[4].Text).ToString().Trim();
                txtNoiDung1.Text = HttpUtility.HtmlDecode(gvrow.Cells[5].Text).ToString().Trim();
                txtNgayDang1.Text = HttpUtility.HtmlDecode(gvrow.Cells[6].Text).ToString().Trim();
                txtNgayBatDau1.Text = HttpUtility.HtmlDecode(gvrow.Cells[7].Text).ToString().Trim();
                txtNgayKetThuc1.Text = HttpUtility.HtmlDecode(gvrow.Cells[8].Text).ToString().Trim();
                txtHinhAnh1.Text = HttpUtility.HtmlDecode(gvrow.Cells[9].Text).ToString().Trim();
                ddlID_User1.SelectedValue = HttpUtility.HtmlDecode(gvrow.Cells[10].Text).ToString().Trim();

                lblResult.Visible = false;
                StringBuilder sb = new StringBuilder();
                sb.Append(@"<script type='text/javascript'>");
                sb.Append("$('#editModal').modal('show');");
                sb.Append(@"</script>");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "EditModalScript", sb.ToString(), false);

            }
            else if (e.CommandName.Equals("deleteRecord"))
            {
                string code = GridView1.DataKeys[index].Value.ToString();
                hfCode.Value = code;
                StringBuilder sb = new StringBuilder();
                sb.Append(@"<script type='text/javascript'>");
                sb.Append("$('#deleteModal').modal('show');");
                sb.Append(@"</script>");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "DeleteModalScript", sb.ToString(), false);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var parameters = SqlDataSource1.UpdateParameters;

                //  <%--([ChuDe], [MoTa], [NoiDung], [NgayDang], [NgayBatDau], [NgayKetThuc], [HinhAnh], [ID_User])--%>
                parameters["ID_Event"].DefaultValue = txtID_Event1.Text;
                parameters["ChuDe"].DefaultValue = txtChuDe1.Text;
                parameters["MoTa"].DefaultValue = txtMoTa1.Text;
                parameters["NoiDung"].DefaultValue = txtNoiDung1.Text;
                parameters["NgayDang"].DefaultValue = txtNgayDang1.Text;
                parameters["NgayBatDau"].DefaultValue = txtNgayBatDau1.Text;
                parameters["NgayKetThuc"].DefaultValue = txtNgayKetThuc1.Text;
                parameters["HinhAnh"].DefaultValue = txtHinhAnh1.Text;
                parameters["ID_User"].DefaultValue = ddlID_User1.SelectedValue;
                try
                {
                    if (txtChuDe1.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtMoTa1.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtNoiDung1.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtNgayDang1.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtNgayBatDau1.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtNgayKetThuc1.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }

                    else
                    {
                        SqlDataSource1.Update();
                        StringBuilder sb = new StringBuilder();
                        sb.Append(@"<script type='text/javascript'>");
                        sb.Append("alert('Records Updated Successfully');");
                        sb.Append("$('#editModal').modal('hide');");
                        sb.Append(@"</script>");
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "EditHideModalScript", sb.ToString(), false);
                    }
                }
                catch (Exception)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Vui lòng kiểm tra lại.');", true);
                }
            }

        }

        private void executeDelete(string code)
        {
            if (IsValid)
            {
                var parameters = SqlDataSource1.DeleteParameters;
                parameters["ID_Event"].DefaultValue = code;

                try
                {
                    SqlDataSource1.Delete();
                }
                catch (Exception)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Vui lòng kiểm tra lại.');", true);
                }
            }

        }

        //Handles Delete button click in delete modal popup
        protected void btnDelete_Click(object sender, EventArgs e)
        {

            string code = hfCode.Value;
            executeDelete(code);

            StringBuilder sb = new StringBuilder();
            sb.Append(@"<script type='text/javascript'>");
            sb.Append("alert('Record deleted Successfully');");
            sb.Append("$('#deleteModal').modal('hide');");
            sb.Append(@"</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "delHideModalScript", sb.ToString(), false);
        }
        protected void FileBrowser1_Load(object sender, EventArgs e)
        {
            FileBrowser1 = new CKFinder.FileBrowser();
            FileBrowser1.BasePath = "/ckfinder/";
            FileBrowser1.SetupCKEditor(txtNoiDung);
        }

        protected void FileBrowser2_Load(object sender, EventArgs e)
        {
            FileBrowser1 = new CKFinder.FileBrowser();
            FileBrowser1.BasePath = "/ckfinder/";
            FileBrowser1.SetupCKEditor(txtNoiDung1);
        }
    }
}