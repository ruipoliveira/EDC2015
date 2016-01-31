using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace uastudent_v2.ServicosUA
{
    public partial class EmentasUA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String projectPath = AppDomain.CurrentDomain.BaseDirectory;
            if (!Page.IsPostBack)
            {
                XmlDocument xdoc = new XmlDocument();

                //xdoc.Load(" http://services.web.ua.pt/sas/ementas?date=day&place=rest" + restaurante);

                xdoc.Load("http://services.web.ua.pt/sas/ementas?date=day&place=santiago");

                xdoc.Save(projectPath + "/ServicosUA/ementas.xml");

                XmlDataSource1.DataFile = projectPath + "/ServicosUA/ementas.xml";
                DetailsView1.DataBind();

                XDocument doc = XDocument.Load(projectPath + @"\ServicosUA\ementas.xml");
                //string cantinas = ""; string sopas = ""; string carnes = ""; string peixes = ""; string dietas = "";

                String letters = "";
                var letter = doc.Descendants("item");
                var lettar = doc.Descendants("item").Attributes("name");


                foreach (var letter1 in letter)
                    letters += letter1 + "!";


                System.Diagnostics.Debug.WriteLine(letters); 

                /*var desc = doc.Descendants("desc");
                var latest = doc.Descendants("latest");
                var wc = doc.Descendants("wc");
                var date = doc.Descendants("date");

                foreach (var letter1 in letter)
                    letters += letter1 + "!";
                foreach (var lettar1 in lettar)
                    lettars += lettar1 + "!";
                
                String[] lettera, lettara;
                lettera = letters.Split('!');
                lettara = lettars.Split('!');

                menu(lettera, lettara);
                */
                /*foreach (var desc1 in desc)
                    descs += desc1 + "!";
                foreach (var latest1 in latest)
                    latests += latest1 + "!";
                foreach (var wc1 in wc)
                    wcs += wc1 + "!";
                foreach (var date1 in date)
                    dates += date1 + "!";
                    */

                /*String valor;
                int i;
                for (i = 1; i < 11; i++)
                {
                    valor = DetailsView1.Rows[i].Cells[1].Text.ToString();
                    if (valor.Equals("&nbsp;"))
                    {
                        DetailsView1.Rows[i].Visible = false;
                    }
                }*/
            }
        }
        protected String get(String [] lettera, String []lettara, String nome)
        {
            int i;
            String u="";
            for (i = 0; i < lettera.Length; i++)
            {
                if (lettera[i] != null)
                {
                    String texto = lettara[i].Replace("\"", "");
                    if (texto.Equals("name=" + nome))
                    {
                        u = lettera[i];
                        i = lettara.Length;
                    }
                    else
                    {
                        u = "";
                    }
                }

            }
            return u;
        }
        protected void menu(String[] lettera, String[] lettara)
        {
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;
            Label16.Visible = true;
            Label17.Visible = true;
            Label18.Visible = true;
            Label19.Visible = true;
            Label20.Visible = true;
            Label21.Visible = true;
            Label22.Visible = true;
            Label23.Visible = true;
            Label24.Visible = true;
            Label25.Visible = true;
            Label26.Visible = true;
            

            Label7.Text = "Sopa:";
            Label8.Text = get(lettera, lettara, "Sopa");
            Label9.Text = "Prato normal carne:";
            Label10.Text = get(lettera, lettara, "Prato normal carne");
            Label11.Text = "Prato normal peixe:";
            Label12.Text = get(lettera, lettara, "Prato normal peixe");
            Label13.Text = "Prato dieta:";
            Label14.Text = get(lettera, lettara, "Prato Dieta");
            Label15.Text = "Prato vegetariano:";
            Label16.Text = get(lettera, lettara, "Prato vegetariano");
            Label17.Text = "Prato opção:";
            Label18.Text = get(lettera, lettara, "Prato opção");
            Label19.Text = "Salada:";
            Label20.Text = get(lettera, lettara, "Salada");
            Label21.Text = "Diversos:";
            Label22.Text = get(lettera, lettara, "Diversos");
            Label23.Text = "Sobremesa:";
            Label24.Text = get(lettera, lettara, "Sobremesa");
            Label25.Text = "Bebida:";
            Label26.Text = get(lettera, lettara, "Bebida");


            if (Label8.Text == "")
            {
                Label7.Visible = false;
                Label8.Visible = false;
            }
            if (Label10.Text == "")
            {
                Label9.Visible = false;
                Label10.Visible = false;
            }
            if (Label12.Text == "")
            {
                Label11.Visible = false;
                Label12.Visible = false;
            }
            if (Label14.Text == "")
            {
                Label13.Visible = false;
                Label14.Visible = false;
            }
            if (Label16.Text == "")
            {
                Label15.Visible = false;
                Label16.Visible = false;
            }
            if (Label18.Text == "")
            {
                Label17.Visible = false;
                Label18.Visible = false;
            }
            if (Label20.Text == "")
            {
                Label19.Visible = false;
                Label20.Visible = false;
            }
            if (Label22.Text == "")
            {
                Label21.Visible = false;
                Label22.Visible = false;
            }
            if (Label24.Text == "")
            {
                Label23.Visible = false;
                Label24.Visible = false;
            }
            if (Label26.Text == "")
            {
                Label25.Visible = false;
                Label26.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String projectPath = AppDomain.CurrentDomain.BaseDirectory;
            XDocument doc = XDocument.Load(projectPath + @"\ServicosUA\ementas.xml");
            //string cantinas = ""; string sopas = ""; string carnes = ""; string peixes = ""; string dietas = "";

            String letters = "", lettars = "";
            var letter = doc.Descendants("item");
            var lettar = doc.Descendants("item").Attributes("name");

            foreach (var letter1 in letter)
                letters += letter1 + "!";
            foreach (var lettar1 in lettar)
                lettars += lettar1 + "!";

            String[] lettera, lettara;
            lettera = letters.Split('!');
            lettara = lettars.Split('!');

            menu(lettera, lettara);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String projectPath = AppDomain.CurrentDomain.BaseDirectory;
            XDocument doc = XDocument.Load(projectPath + @"\ServicosUA\ementas.xml");
            //string cantinas = ""; string sopas = ""; string carnes = ""; string peixes = ""; string dietas = "";

            String letters = "", lettars = "";
            var letter = doc.Descendants("item");
            var lettar = doc.Descendants("item").Attributes("name");

            foreach (var letter1 in letter)
                letters += letter1 + "!";
            foreach (var lettar2 in lettar)
                lettars += lettar2 + "!";

            String[] lettera, lettara;
            lettera = letters.Split('!');
            lettara = lettars.Split('!');
            int i, j;
            Label1.Text = letters; 
            String[] novo1 = new String[lettera.Length];
            String[] novo2 = new String[lettara.Length];
            
            for (i = 0; i < lettera.Length; i++)
            {
                
                if (lettera[i] == "Água mineral")
                {
                    for (j = 0; j < lettera.Length; j++)
                    {
                        if (lettera[i + 1] == "")
                        {
                            i++;
                        }
                        novo1[j] = lettera[i+1];
                        novo2[j] = lettara[i+1];
                        i++;
                    }
                }
            }
           

            menu(novo1, novo2);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String projectPath = AppDomain.CurrentDomain.BaseDirectory;
            XDocument doc = XDocument.Load(projectPath + @"\ServicosUA\ementas.xml");
            //string cantinas = ""; string sopas = ""; string carnes = ""; string peixes = ""; string dietas = "";

            String letters = "", lettars = "";
            var letter = doc.Descendants("item");
            var lettar = doc.Descendants("item").Attributes("name");

            foreach (var letter1 in letter)
                letters += letter1 + "!";
            foreach (var lettar2 in lettar)
                lettars += lettar2 + "!";

            String[] lettera, lettara;
            lettera = letters.Split('!');
            lettara = lettars.Split('!');
            int i, j;
            String[] novo1 = new String[lettera.Length];
            String[] novo2 = new String[lettara.Length];
            for (i = 0; i < lettera.Length; i++)
            {
                if (lettera[i] == "Água mineral")
                {
                    for (j = 0; j < lettera.Length-i; j++)
                    {
                        novo1[j] = lettera[i];
                        novo2[j] = lettara[i];
                        i++;
                    }
                }
            }
            String[] novo3 = new String[lettera.Length];
            String[] novo4 = new String[lettara.Length];
            for (i = 0; i < novo1.Length; i++)
            {
                if (novo1[i] == "Água mineral")
                {
                    for (j = 0; j < novo1.Length-i; j++)
                    {
                        novo3[j] = novo1[i];
                        novo4[j] = novo2[i];
                        i++;
                    }
                }
            }

            menu(novo3, novo4);
        }
    }
}