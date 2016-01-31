using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace uastudent_v2
{
    public partial class Configuracoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool Residencias = bool.Parse(CheckBox1.Checked.ToString()); 
            bool Biblioteca = bool.Parse(CheckBox2.Checked.ToString());
            bool ZTC = bool.Parse(CheckBox3.Checked.ToString());
            bool Subterraneo = bool.Parse(CheckBox4.Checked.ToString());
            bool Ceramica = bool.Parse(CheckBox5.Checked.ToString());
            bool Linguas = bool.Parse(CheckBox6.Checked.ToString());
            bool Incubadora = bool.Parse(CheckBox7.Checked.ToString());
            bool ISCAA_Publico = bool.Parse(CheckBox8.Checked.ToString());
            bool ISCAA_Funcionarios = bool.Parse(CheckBox9.Checked.ToString());
            bool ESTGA=bool.Parse(CheckBox10.Checked.ToString());

            string parques = "";   // variavel que é guardada no xml 
            
            if (Residencias) parques += "id=P1|4!";
            if (Biblioteca) parques += "id=P5!"; 
            if (ZTC) parques += "id=P6!";
            if (Subterraneo) parques += "id=P8!";
            if (Ceramica) parques += "id=P9!";
            if (Linguas) parques += "id=P10!";
            if (Incubadora) parques += "id=P11!";
            if (ISCAA_Publico) parques += "id=P12!";
            if (ISCAA_Funcionarios) parques += "id=P13!";
            if (ESTGA) parques += "id=P14!";

            bool crasto = bool.Parse(CheckBox12.Checked.ToString());
            bool santiago = bool.Parse(CheckBox11.Checked.ToString());
            bool bar = bool.Parse(CheckBox13.Checked.ToString());

            string cantinas = "";

            if (crasto) cantinas += "crasto!";
            if (santiago) cantinas += "santigo!";
            if (bar) cantinas += "bar!";

         //   Label1.Text = parques+ cantinas;


            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();
            XmlElement property = xdoc.CreateElement("user");
            XmlAttribute valor = xdoc.CreateAttribute("email");

            XmlElement address = xdoc.CreateElement("settings");
            XmlAttribute city = xdoc.CreateAttribute("cantinas");
            XmlAttribute street = xdoc.CreateAttribute("parques");

            foreach (XmlElement propriedade in xdoc.SelectNodes("users/user[@email='" + Context.User.Identity.Name + "']"))
            {
                propriedade.FirstChild.Attributes[0].InnerText = cantinas;
                propriedade.FirstChild.Attributes[1].InnerText = parques;
            }

            XmlDataSource1.Save();

        }
       
    }
}