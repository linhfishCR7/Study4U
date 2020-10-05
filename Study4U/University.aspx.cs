using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Study4U
{
    public partial class University : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ListView_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "Select1"))
            {
                ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                string ID_Truong = ListView.DataKeys[dataItem.DisplayIndex].Value.ToString();
                Session["ID_Truong"] = ID_Truong;
                Response.Redirect("/ChiTietTruong.aspx");

            }
        }
        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "Select"))
            {
                ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                string ID_Event = ListView1.DataKeys[dataItem.DisplayIndex].Value.ToString();
                Session["ID_Event"] = ID_Event;
                Response.Redirect("/EventDetails.aspx");



            }
        }

    }
}