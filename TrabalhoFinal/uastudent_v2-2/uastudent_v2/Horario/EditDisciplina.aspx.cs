using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace uastudent_v2.Horario
{
    public partial class EditDisciplina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

                foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/name"))
                {
                    TextBox1.Text = propriedade.InnerText;
                    Label1.Text = propriedade.InnerText; 
                }
                foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/tp"))
                {
                    string[] sp = propriedade.InnerText.Split('-');
                    TextBox2.Text = sp[1];
                    DropDownList1.SelectedValue = sp[0]; 

                }
                foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/numday"))
                {
                    System.Diagnostics.Debug.WriteLine(Int32.Parse(propriedade.InnerText)); 
                    DropDownList2.SelectedIndex = Int32.Parse(propriedade.InnerText)-1;
                }
                foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/time-sta"))
                {
                    DropDownList3.SelectedIndex = Int32.Parse(propriedade.InnerText)-8;
                }
                foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/time-end"))
                {
                    DropDownList4.SelectedIndex = Int32.Parse(propriedade.InnerText)-8;
                }
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            //guardar

            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();


            foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/name"))
            {
                propriedade.InnerText = TextBox1.Text;

            }

            foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/tp"))
            {
                propriedade.InnerText = DropDownList1.SelectedItem.Value + "-" + TextBox2.Text;

            }

            foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/numday"))
            {
                propriedade.InnerText = DropDownList2.SelectedItem.Value;

            }

            foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/time-sta"))
            {
                propriedade.InnerText = DropDownList3.SelectedItem.Value;
            }

            foreach (XmlElement propriedade in xdoc.SelectNodes("/timetable/day[@ID='" + Request.Params[0] + "']/task/time-end"))
            {
                propriedade.InnerText = DropDownList4.SelectedItem.Value;
            }

            XmlDataSource1.Save();

            Response.Redirect("~/Horario/EditHorario.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // sair
            Response.Redirect("~/Horario/EditHorario.aspx");
        }
    }
}