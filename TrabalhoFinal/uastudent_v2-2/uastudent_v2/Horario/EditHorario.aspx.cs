using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace uastudent_v2.Horario
{
    public partial class EditHorario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            newEntry.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            XmlDocument xdoc = XmlDataSource2.GetXmlDocument();

            XmlElement day = xdoc.CreateElement("day");

            XmlAttribute ID = xdoc.CreateAttribute("ID");

            XmlElement numday = xdoc.CreateElement("numday");
            XmlElement task = xdoc.CreateElement("task");
            XmlElement timesta = xdoc.CreateElement("time-sta");
            XmlElement timeend = xdoc.CreateElement("time-end");
            XmlElement name = xdoc.CreateElement("name");
            XmlElement tp = xdoc.CreateElement("tp");

            name.InnerText = TextBox1.Text;
            tp.InnerText = DropDownList1.SelectedItem.Value + "-"+TextBox2.Text;
            numday.InnerText = DropDownList2.SelectedItem.Value;
            timesta.InnerText = DropDownList3.SelectedItem.Value;
            timeend.InnerText = DropDownList4.SelectedItem.Value;
            ID.InnerText = Guid.NewGuid().ToString("N");
            day.Attributes.Append(ID);
            day.AppendChild(numday);
            day.AppendChild(task);
            task.AppendChild(timesta);
            task.AppendChild(timeend);
            task.AppendChild(name);
            task.AppendChild(tp);

            xdoc.DocumentElement.InsertBefore(day, xdoc.DocumentElement.FirstChild);

            XmlDataSource2.Save();

            GridView1.DataBind();

            Response.Redirect("~/Horario/EditHorario.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            Button1.Visible = false;
            newEntry.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true; 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Horario/EditHorario.aspx");
        }
    }
}