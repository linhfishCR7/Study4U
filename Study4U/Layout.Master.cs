using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Study4U
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void ListView3_ItemCommand(object sender, ListViewCommandEventArgs e)
        //{
        //    if (String.Equals(e.CommandName, "Select"))
        //    {
        //        ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        //        string ID_QG = ListView3.DataKeys[dataItem.DisplayIndex].Value.ToString();
        //        Session["ID_QG"] = ID_QG;
        //        Response.Redirect("/Program.aspx");



        //    }
        //}
    }
}