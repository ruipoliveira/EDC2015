using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using Newtonsoft.Json;
using System.IO;
using System.Web.Script.Serialization;
using System.Xml;

namespace uastudent_v2.ServicosUA
{
    public partial class ParquesUA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //theDiv.Visible = true;
            string ids = "";
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();


            foreach (XmlElement propriedade in xdoc.SelectNodes("users/user[@email='" + Context.User.Identity.Name + "']"))
            {
                ids = propriedade.FirstChild.Attributes[1].InnerText;
            }

            string[] parques = { "id=P1|4", "id=P5", "id=P6", "id=P8", "id=P9", "id=P10", "id=P11", "id=P13", "id=P14", "id=P15" };


            string[] idarray = ids.Split('!');

            theDiv1.Visible = Div1.Visible = Div2.Visible = Div3.Visible = Div4.Visible = Div5.Visible = Div6.Visible = Div7.Visible = Div8.Visible = false;

            foreach (string id in idarray)
            {
                if (id == parques[0])
                {
                    theDiv1.Visible = true;
                    newparq(parques[0], Label1, Label2, Label3, Label4, Label5);
                }

                
                if (id == parques[1])
                {
                    Div1.Visible = true;
                    newparq(parques[1], Label6, Label7, Label8, Label9, Label10);
                }

                if (id == parques[2])
                {
                    Div2.Visible = true;
                    newparq(parques[2], Label11, Label12, Label13, Label14, Label15);
                }
                if (id == parques[3])
                {
                    Div3.Visible = true;
                    newparq(parques[3], Label16, Label17, Label18, Label19, Label20);
                }
                if (id == parques[4])
                {
                    Div4.Visible = true;
                    newparq(parques[4], Label21, Label22, Label23, Label24, Label25);
                }
                if (id == parques[5])
                {
                    Div5.Visible = true;
                    newparq(parques[5], Label26, Label27, Label28, Label29, Label30);
                }
                if (id == parques[6])
                {
                    Div6.Visible = true;
                    newparq(parques[6], Label31, Label32, Label33, Label34, Label35);
                }

                if (id == parques[7])
                {
                    Div7.Visible = true;
                    newparq(parques[7], Label36, Label37, Label38, Label39, Label40);
                }
                if (id == parques[8])
                {
                    Div8.Visible = true;
                    newparq(parques[8], Label41, Label42, Label43, Label44, Label45);
                }
                
            }



        }

        protected void newparq(string id, Label l1, Label l2, Label l3, Label l4, Label l5)
        {
            var url = "http://services.web.ua.pt/parques/parques?" + id;
            string s;
            using (WebClient client = new WebClient())
            {
                s = client.DownloadString(url);
            }

            int index1 = s.IndexOf('[');
            int index2 = s.IndexOf(',', index1 + 1) + 1;
            string result2 = s.Remove(index1, index2 - index1);
            result2 = result2.Replace("]", "");

            Parque parq = JsonConvert.DeserializeObject<Parque>(result2);
            l1.Text = parq.ID;
            l2.Text = parq.Nome;
            l3.Text = parq.Livre.ToString();
            l4.Text = "{" + parq.Ocupado + "/" + parq.Capacidade + "}";

            if (parq.Capacidade == parq.Ocupado)
            {
                l5.Text = "OCUPADO";
            }
            else
            {
                l5.Text = "DISPONÍVEL";
            }
        }

        public class Parque
        {
            public string ID { get; set; }
            public string Nome { get; set; }
            public double Latitude { get; set; }
            public double Longitude { get; set; }
            public int Capacidade { get; set; }
            public int Ocupado { get; set; }
            public int Livre { get; set; }
        }

    }
}