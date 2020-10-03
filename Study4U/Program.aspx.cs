using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Study4U
{
    public partial class Program : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ListView_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "Select"))
            {
                ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                string ID_CT = ListView2.DataKeys[dataItem.DisplayIndex].Value.ToString();
                Session["ID_CT"] = ID_CT;
                Response.Redirect("/ProgramDetails.aspx");



            }
        }
    }
}