using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC2015parte2
{
    public partial class MostrarDono : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDataSource1.XPath = "/properties/property[@landRegister=\"" + Request.Params[0] + "\"]";

            TextBox1.Text = getOwner(Request.Params[0]);
        }

        private string getOwner(string p)
        {
            String retorno = "";

            XmlDocument xdoc = XmlDataSource2.GetXmlDocument();
            List<String> nomes = new List<String>();
            List<DateTime> datas = new List<DateTime>();

            foreach (XmlElement owner in xdoc.SelectNodes("properties/owner[@propertyID=\"" + p + "\"]"))
            {
                nomes.Add(owner.Attributes[1].InnerText);
                datas.Add(Convert.ToDateTime(owner.Attributes[2].InnerText));
            }

            if (datas.Count > 0)
            {
                DateTime maisrecente = new DateTime();
                foreach (DateTime data in datas)
                {
                    if (maisrecente < data)
                    {
                        retorno = nomes.ElementAt(datas.IndexOf(data));
                    }
                }
            }
            else
            {
                Label1.Visible = false;
                TextBox1.Visible = false;
                Label2.Visible = true;
            }


            return retorno;
        }
    }
}