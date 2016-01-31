using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC2015parte2
{
    public partial class AdicionarPropriedade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox4.Text.Equals(""))
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            else
            {

                XmlDocument xdoc = XmlDataSource1.GetXmlDocument();
                XmlElement property = xdoc.CreateElement("property");
                XmlAttribute valor = xdoc.CreateAttribute("value");
                XmlAttribute landRegister = xdoc.CreateAttribute("landRegister");

                XmlElement address = xdoc.CreateElement("address");
                XmlAttribute city = xdoc.CreateAttribute("city");
                XmlAttribute street = xdoc.CreateAttribute("street");
                XmlAttribute portNumber = xdoc.CreateAttribute("portNumber");

                int ID = -1;

                foreach (XmlElement propriedade in xdoc.SelectNodes("properties/property"))
                {
                    if (Convert.ToInt32(propriedade.Attributes[0].InnerText) > ID)
                    {
                        ID = Convert.ToInt32(propriedade.Attributes[0].InnerText);
                    }
                }

                valor.Value = TextBox1.Text;
                landRegister.Value = "" + (ID + 1);

                city.Value = TextBox2.Text;
                street.Value = TextBox3.Text;
                portNumber.Value = TextBox4.Text;

                address.Attributes.Append(city);
                address.Attributes.Append(street);
                address.Attributes.Append(portNumber);

                property.Attributes.Append(landRegister);
                property.Attributes.Append(valor);

                property.AppendChild(address);

                xdoc.DocumentElement.InsertBefore(property, xdoc.DocumentElement.FirstChild);
                XmlDataSource1.Save();

                Response.Redirect("~/ListaPropriedades.aspx");
            }
        }

    }
}