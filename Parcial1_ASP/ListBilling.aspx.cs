using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_ASP
{
    public partial class ListBilling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader arch = new StreamReader(Server.MapPath(".") + "/billings.txt");
            Label1.Text = arch.ReadToEnd();
            arch.Close();
        }
    }
}