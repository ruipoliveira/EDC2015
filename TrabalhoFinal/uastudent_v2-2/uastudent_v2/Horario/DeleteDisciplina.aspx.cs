using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace uastudent_v2.Horario
{
    public partial class DeleteDisciplina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/name"))
            {
                TextBox1.Text = propriedade.InnerXml;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            foreach (XmlElement day in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']"))
            {
                xdoc.DocumentElement.RemoveChild(day);
            }

            XmlDataSource1.Save();

            Response.Redirect("~/Horario/EditHorario.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Horario/EditHorario.aspx");
        }
    }
}