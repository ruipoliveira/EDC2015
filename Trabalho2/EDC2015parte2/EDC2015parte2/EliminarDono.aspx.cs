using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC2015parte2
{
    public partial class EliminarDono : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                XmlDocument xdoc = XmlDataSource1.GetXmlDocument();


                foreach (XmlElement propriedade in xdoc.SelectNodes("properties/owner[@taxID=" + Request.Params[0] + "]"))
                {
                    TextBox1.Text = propriedade.Attributes[1].InnerText.ToString() ;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            foreach (XmlElement propriedade in xdoc.SelectNodes("properties/owner[@taxID=" + Request.Params[0] + "]"))
            {
                xdoc.DocumentElement.RemoveChild(propriedade);
            }

            XmlDataSource1.Save();

            Response.Redirect("~/ListaDonos.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListaDonos.aspx");
        }
    }
}