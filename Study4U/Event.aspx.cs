using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Study4U
{
    public partial class Event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
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