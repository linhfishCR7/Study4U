using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Study4U
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //get ID Truong
        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "Select"))
            {
                ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                string ID_Truong = ListView1.DataKeys[dataItem.DisplayIndex].Value.ToString();
                Session["ID_Truong"] = ID_Truong;
                Response.Redirect("/ChiTietTruong.aspx");



            }
        }
        //get ID Event
        protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "Select"))
            {
                ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                string ID_Event = ListView2.DataKeys[dataItem.DisplayIndex].Value.ToString();
                Session["ID_Event"] = ID_Event;
                Response.Redirect("/EventDetails.aspx");



            }
        }
        //get ID Quoc Gia
        protected void ListView3_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "Select"))
            {
                ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                string ID_QG = ListView3.DataKeys[dataItem.DisplayIndex].Value.ToString();
                Session["ID_QG"] = ID_QG;
                Response.Redirect("/Program.aspx");



            }
        }
    }
}