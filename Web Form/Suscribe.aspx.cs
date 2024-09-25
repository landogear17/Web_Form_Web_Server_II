using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Form
{
    public partial class Suscribe : System.Web.UI.Page
    {

        protected const byte minTickets = 1;
        protected const byte maxTickets = 5;
        protected string [] list;


        protected byte numTickets;
        string city = "Montreal";
        protected void Page_Load(object sender, EventArgs e)
        {
            list = new string[] { "CPU", "GPU", "RAM", "SSD" };
            numTickets = 2;
        }

        protected string productList(string[]list)
        {
            return (this.Master as SiteMaster).productList(list); //casting and validation
        }
        //write a function to add-up 2
        // and that results the result
        // then call this function from the .aspx file

        protected int addNumbers(int num1, int num2)
        {
            return num1 + num2;
        }

        protected string showBoughtTickets()
        {
            if (numTickets >= minTickets && numTickets <= maxTickets)
            { 
                return $"{numTickets} tickets purchased \n <br>";
            }
            else
            {
                return $"You can only buy between {minTickets} and {maxTickets}";
            }
        }
    }
}