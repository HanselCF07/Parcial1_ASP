using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_ASP
{
    public partial class CreateBilling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                double p1 = double.Parse(tb_3c.Text); int c1 = int.Parse(tb_3b.Text);
                double p2 = double.Parse(tb_4c.Text); int c2 = int.Parse(tb_4b.Text);
                double p3 = double.Parse(tb_5c.Text); int c3 = int.Parse(tb_5b.Text);
                double iva = 0.19;
                double subtotal = (p1 * c1) + (p2 * c2) + (p3 * c3);
                double v_iva = subtotal * iva;
                double total = subtotal + v_iva;


                StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/billings.txt", true);
                arch.WriteLine("<h3>Factura</h3>");
                arch.WriteLine("<br>");
                arch.WriteLine("<h4>Información Compañia</h4>");
                arch.WriteLine("<hr style='border: 1px;'/>");
                arch.WriteLine("Nombre: " + tb_1a.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Correo: " + tb_1b.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Dirección: " + tb_1c.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Ciudad: " + tb_1d.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Codigo Postal Compañia: " + tb_1e.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Pais: " + DropDownList1.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Provincia/Estado: " + DropDownList2.Text);
                arch.WriteLine("<br><br>");
                arch.WriteLine("<h4>Información del Cliente y Factura</h4>");
                arch.WriteLine("<hr style='border: 1px;'/>");             
                arch.WriteLine("Nombre: " + tb_2a.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Correo: " + tb_2b.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Dirección: " + tb_2c.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Ciudad: " + tb_2d.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Codigo Postal Compañia: " + tb_2e.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Pais: " + DropDownList3.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Provincia/Estado: " + DropDownList4.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Fecha de Factura: " + tb_2f.Text);
                arch.WriteLine("<br><br>");
                arch.WriteLine("<h4>Articculos</h4>");
                arch.WriteLine("<hr style='border: 1px;'/>");
                arch.WriteLine("Item #1");
                arch.WriteLine("Descripcion: " + tb_3a.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Cantidad: " + tb_3b.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Precio: $" + tb_3c.Text);
                arch.WriteLine("<br><br>");
                arch.WriteLine("Item #2");
                arch.WriteLine("Descripcion: " + tb_4a.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Cantidad: " + tb_4b.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Precio: $" + tb_4c.Text);
                arch.WriteLine("<br><br>");
                arch.WriteLine("Item #3");
                arch.WriteLine("Descripcion: " + tb_5a.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Cantidad: " + tb_5b.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Precio: $" + tb_5c.Text);
                arch.WriteLine("<br><br>");
                arch.WriteLine("Subtotal: $" + subtotal);
                arch.WriteLine("<br>");
                arch.WriteLine("IVA: $" + v_iva);
                arch.WriteLine("<br>");
                arch.WriteLine("Total a Pagar: $" + total);
                arch.WriteLine("<br>");
                arch.WriteLine("<br>");
                arch.WriteLine("<hr style='border: 2px;' />");
                arch.Close();

                Response.Redirect("Default.aspx");
            }

        }
    }
}