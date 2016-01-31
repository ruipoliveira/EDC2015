using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC2015parte2
{
    public partial class AdicionarPropriedadeAoDono : System.Web.UI.Page
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
                XmlElement owner = xdoc.CreateElement("owner");
                XmlAttribute name = xdoc.CreateAttribute("name");
                XmlAttribute taxID = xdoc.CreateAttribute("taxID");
                XmlAttribute datePurchase = xdoc.CreateAttribute("datePurchase");
                XmlAttribute propertyID = xdoc.CreateAttribute("propertyID");

                name.Value = TextBox1.Text;
                taxID.Value = TextBox2.Text;
                propertyID.Value = TextBox3.Text;
                datePurchase.Value = TextBox4.Text;


                owner.Attributes.Append(taxID);
                owner.Attributes.Append(name);
                owner.Attributes.Append(datePurchase);
                owner.Attributes.Append(propertyID);

                xdoc.DocumentElement.AppendChild(owner);
                XmlDataSource1.Save();

                Response.Redirect("~/ListaDonos.aspx");
            }
        }

    }
}