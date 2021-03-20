using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_ASP
{
    public partial class SatisfactionSurvey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Label26.Text = "Encuesta Registrada";
                tb_1a.Text = null;
            }
        }
    }
}