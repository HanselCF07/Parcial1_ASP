using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_ASP
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                String pass1 = tb_1d.Text;
                String pass2 = tb_1e.Text;

                if (pass1.Equals(pass2))
                {
                    Label6.Text = "Registro Exitoso";
                }
                else
                {
                    Label6.Text = "Contraseñas no Coinciden";
                }
                
            }
        }
    }
}