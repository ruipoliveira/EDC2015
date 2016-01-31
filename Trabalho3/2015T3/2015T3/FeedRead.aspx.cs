using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace _2015T3
{
    public partial class FeedRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string x = DetailsView1.Rows[0].Cells[0].Text.ToString();
            Console.WriteLine("\ndasda: " + x); 

            if (!Page.IsPostBack)
            {


                DropDownList1.DataBind();
                XmlDataSource1.DataFile = DropDownList1.SelectedValue; // info 
                XmlDataSource1.DataBind();
                XmlDataSource3.DataFile = DropDownList1.SelectedValue; // noticas 
                XmlDataSource3.DataBind();
                XmlDataSource2.DataFile = DropDownList1.SelectedValue; //imagem
                XmlDataSource2.DataBind();


            }
            /*
            int i = 0;
            Console.WriteLine("dasda" + DetailsView1.Rows.Count);

            for (i = 0; i < DetailsView1.Rows.Count; i++)
            {
                if (DetailsView1.Rows[i].ToString() != "")
                {
                    DetailsView1.Rows[i].Visible = true;
                }
                else
                    DetailsView1.Rows[i].Visible = false;
            }

            */
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            XmlDataSource1.DataFile = DropDownList1.SelectedValue;
            XmlDataSource1.DataBind();
            XmlDataSource3.DataFile = DropDownList1.SelectedValue;
            XmlDataSource3.DataBind();
            XmlDataSource2.DataFile = DropDownList1.SelectedValue;
            XmlDataSource2.DataBind();

            //Console.WriteLine("dasda"+ DetailsView2.Rows[0].Cells[1]); 
            


        }


        protected void ListView1_DataBound(object sender, EventArgs e) {
            var nodeCount = 0;
            using (var reader = XmlReader.Create(XmlDataSource3.DataFile)) {
                while (reader.Read()) {
                    if (reader.NodeType == XmlNodeType.Element && reader.Name == "item") {
                        nodeCount++;
                    }
                }
            }

            Literal1.Text = String.Format("[{0:N0}]", nodeCount);
        }
    }
}