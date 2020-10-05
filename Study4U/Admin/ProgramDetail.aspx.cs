using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Study4U.Admin
{
    public partial class ProgramDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("../Admin/LoginAdmin");
            }
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
                // ([ChuDe], [MoTa], [NoiDung], [Video], [HinhAnh], [FileDinhKem], [ID_CT])

                parameters["ChuDe"].DefaultValue = txtChuDe.Text;
                parameters["MoTa"].DefaultValue = txtMoTa.Text;
                parameters["NoiDung"].DefaultValue = txtNoiDung.Text;
                parameters["Video"].DefaultValue = txtVideo.Text;
                parameters["HinhAnh"].DefaultValue = txtHinhAnh.Text;
                parameters["FileDinhKem"].DefaultValue = txtFileDinhKem.Text;
                parameters["ID_CT"].DefaultValue = ddlID_CT.SelectedValue;

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
                    else if (txtNoiDung.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }
                    else if (txtHinhAnh.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Các trường (*) không được bỏ trống.');", true);
                    }



                    else
                    {
                        SqlDataSource1.Insert();
                        txtChuDe.Text = "";
                        txtMoTa.Text = "";
                        txtNoiDung.Text = "";
                        txtVideo.Text = "";
                        txtHinhAnh.Text = "";
                        txtFileDinhKem.Text = "";

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
                txtID_CTCT1.Text = HttpUtility.HtmlDecode(gvrow.Cells[2].Text).ToString();
                txtChuDe1.Text = HttpUtility.HtmlDecode(gvrow.Cells[3].Text).ToString().Trim();
                txtMoTa1.Text = HttpUtility.HtmlDecode(gvrow.Cells[4].Text).ToString().Trim();
                txtNoiDung1.Text = HttpUtility.HtmlDecode(gvrow.Cells[5].Text).ToString().Trim();
                txtVideo1.Text = HttpUtility.HtmlDecode(gvrow.Cells[6].Text).ToString().Trim();
                txtHinhAnh1.Text = HttpUtility.HtmlDecode(gvrow.Cells[7].Text).ToString().Trim();
                txtFileDinhKem1.Text = HttpUtility.HtmlDecode(gvrow.Cells[8].Text).ToString().Trim();
                ddlID_CT1.SelectedValue = HttpUtility.HtmlDecode(gvrow.Cells[9].Text).ToString();

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

                // ([ChuDe], [MoTa], [NoiDung], [Video], [HinhAnh], [FileDinhKem], [ID_CT])
                parameters["ID_CTCT"].DefaultValue = txtID_CTCT1.Text;
                parameters["ChuDe"].DefaultValue = txtChuDe1.Text;
                parameters["MoTa"].DefaultValue = txtMoTa1.Text;
                parameters["NoiDung"].DefaultValue = txtNoiDung1.Text;
                parameters["Video"].DefaultValue = txtVideo1.Text;
                parameters["HinhAnh"].DefaultValue = txtHinhAnh1.Text;
                parameters["FileDinhKem"].DefaultValue = txtFileDinhKem1.Text;
                parameters["ID_CT"].DefaultValue = ddlID_CT1.SelectedValue;

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
                    else if (txtHinhAnh1.Text == "")
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
                parameters["ID_CTCT"].DefaultValue = code;

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
            FileBrowser1.SetupCKEditor(txtMoTa);
        }

        protected void FileBrowser2_Load(object sender, EventArgs e)
        {
            FileBrowser1 = new CKFinder.FileBrowser();
            FileBrowser1.BasePath = "/ckfinder/";
            FileBrowser1.SetupCKEditor(txtMoTa1);

        }
        protected void FileBrowser3_Load(object sender, EventArgs e)
        {
            FileBrowser1 = new CKFinder.FileBrowser();
            FileBrowser1.BasePath = "/ckfinder/";
            FileBrowser1.SetupCKEditor(txtNoiDung);
        }

        protected void FileBrowser4_Load(object sender, EventArgs e)
        {
            FileBrowser1 = new CKFinder.FileBrowser();
            FileBrowser1.BasePath = "/ckfinder/";
            FileBrowser1.SetupCKEditor(txtNoiDung1);

        }
    }
}