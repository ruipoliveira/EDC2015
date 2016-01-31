using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC2015parte2
{
    public partial class ListaPropriedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.DataBind();
                DropDownList1.Items.Add("TUDO");
                DropDownList1.SelectedIndex = DropDownList1.Items.Count - 1;

                XmlDataSource1.XPath = "//property";

                TextBox1.Text = getValue(DropDownList1.SelectedValue);
            }
        }

        private string getValue(string p)
        {
            Double retorno = 0.0;
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            if (p.Equals("TUDO"))
            {
                foreach (XmlElement propriedade in xdoc.SelectNodes("properties/property"))
                {
                    retorno += Double.Parse(propriedade.Attributes[1].InnerText.Replace('.', ','));
                }
            }
            else
            {
                foreach (XmlElement propriedade in xdoc.SelectNodes("properties/property[@city=\"" + DropDownList1.SelectedValue + "\"]"))
                {
                    retorno += Double.Parse(propriedade.Attributes[1].InnerText.Replace('.', ','));
                }
            }

            return "" + retorno;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Equals("TUDO"))
            {
                XmlDataSource1.XPath = "//property";
            }
            else
                XmlDataSource1.XPath = "//property[@city=\"" + DropDownList1.SelectedValue + "\"]";

            TextBox1.Text = getValue(DropDownList1.SelectedValue).ToString();
        }

    }
}