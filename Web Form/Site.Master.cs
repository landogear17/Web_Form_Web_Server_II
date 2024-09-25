using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Form
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string productList(string[] products)
        {
            
            string list = "<select name = 'products'>";

            foreach(string prod in products)
            {
                list += "<option>" + prod + "</option>";
            }

            list += "</select>";

            return list;
        }
    }
}