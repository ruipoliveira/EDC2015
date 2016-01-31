using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC2015parte2
{
    public partial class MostrarPropriedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDataSource1.XPath = "properties/owner[@taxID =\"" + Request.Params[0] + "\"]";

            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();
            List<int> propriedades = new List<int>();

            foreach (XmlElement owner in xdoc.SelectNodes("properties/owner[@taxID=\"" + Request.Params[0] + "\"]"))
            {
                propriedades.Add(Int32.Parse(owner.Attributes[3].InnerText));
            }

            List<int> propriedades2 = new List<int>();

            foreach (int id in propriedades)
            {
                int idowner = -1;
                DateTime maisrecente = new DateTime();
                foreach (XmlElement owner in xdoc.SelectNodes("properties/owner[@propertyID=\"" + id + "\"]"))
                {
                    if (maisrecente < Convert.ToDateTime(owner.Attributes[2].InnerText))
                    {
                        idowner = Convert.ToInt32(owner.Attributes[0].InnerText);
                    }
                }

                if (idowner == Convert.ToInt32(Request.Params[0]))
                {
                    propriedades2.Add(id);
                }
            }

            if (propriedades2.Count > 0)
            {
                XmlDataSource2.XPath = "properties/property[@landRegister =\"" + propriedades2.ElementAt(0) + "\"";

                for (int id = 1; id < propriedades2.Count; id++)
                {
                    XmlDataSource2.XPath += " or @landRegister =\"" + propriedades2.ElementAt(id) + "\"";
                }

                XmlDataSource2.XPath += "]";
            }
            else
            {
                GridView1.Visible = false;
                Label1.Visible = true;
            }


        }

      
    }
}