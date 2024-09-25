using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Form
{
    public partial class Products : System.Web.UI.Page
    {

        protected string[] list;

        protected string PREFIX_WEB_FORM = "ctl00$MainContent$";
        protected void Page_Load(object sender, EventArgs e)
        {
            list = new string[] { "Mazda", "Toyota", "Nissan", "Tesla" };
        }

        protected string productList(string[] list)
        {
            /* Another way to do the same. (this.Master as SiteMaster).productList();*/
            SiteMaster master = this.Master as SiteMaster;

            if (master != null)
            {
                return master.productList(list);
            }
            else
            {
                return " ";
            }
        }
    }
}