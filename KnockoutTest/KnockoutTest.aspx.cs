using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnockoutTest
{
    public partial class KnockoutTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string SendData(KnockoutTestClass data)
        {
            var localData = data;

            return "it worked!";
        }
    }

    /// <summary>
    /// Testing knockout with server side class.
    /// </summary>
    public class KnockoutTestClass
    {
        public List<string> listbox { get; set; }
        public string dropdown { get; set; }
        public string textbox { get; set; }
        public bool checkbox { get; set; }
        public string radioButton { get; set; }
    }
}