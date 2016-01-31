using Subgurim.Controles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace uastudent_v2
{
    public partial class _Default : Page
    {

        string Temperature;
        string Condition;
        string Humidity;
        string WindSpeed;
        string Town;

        protected void Page_Load(object sender, EventArgs e)
        {

            GLatLng latlon = new GLatLng(40.6310452, -8.658024399999931);
            GMap1.setCenter(latlon, 4);
            GMap1.GZoom = 13;

            GMarker icono = new GMarker(latlon);
            GInfoWindow window = new GInfoWindow(icono, "Universidade de Aveiro, Portugal", false, GListener.Event.mouseover);
            GMap1.addInfoWindow(window);


            getWeather();
            Label3.Text = Humidity+" %";
            Label5.Text = WindSpeed+" km/h";
            Label1.Text = Temperature;
            double cel = ((Convert.ToDouble(Temperature) - 32.0) / 1.8000);
            Label4.Text = Condition; 
            Label2.Text = Convert.ToInt32(cel).ToString();

            if (Condition == "Mostly Cloudy")
                Label6.CssClass = "pe-7w-cloud-sun pe-3x pe-va";
            else if (Condition == "Mist")
                Label6.CssClass = "pe-7w-drizzle-alt pe-3x pe-va";
            else if (Condition == "Fog")
                Label6.CssClass = "pe-7w-fog pe pe-3x pe-va";
            else if (Condition == "Cloudy")
                Label6.CssClass = "pe-7w-cloud pe pe-3x pe-va";
            else
                Label6.CssClass = "pe-7w-sun pe-3x pe-va";


            



        }

        private void getWeather()
        {
            string query = String.Format("http://weather.yahooapis.com/forecastrss?w=736634");
            XmlDocument wData = new XmlDocument();
            wData.Load(query);

            XmlNamespaceManager manager = new XmlNamespaceManager(wData.NameTable);
            manager.AddNamespace("yweather", "http://xml.weather.yahoo.com/ns/rss/1.0");
            XmlNode channel = wData.SelectSingleNode("rss").SelectSingleNode("channel");
            XmlNodeList nodes = wData.SelectNodes("/rss/channel/item/yweather:forecast",manager);

            Temperature = channel.SelectSingleNode("item").SelectSingleNode("yweather:condition", manager).Attributes["temp"].Value;

            Condition = channel.SelectSingleNode("item").SelectSingleNode("yweather:condition", manager).Attributes["text"].Value;
            Humidity = channel.SelectSingleNode("yweather:atmosphere", manager).Attributes["humidity"].Value;
            WindSpeed = channel.SelectSingleNode("yweather:wind", manager).Attributes["speed"].Value;
            Town = channel.SelectSingleNode("yweather:location", manager).Attributes["city"].Value;


        }
    }
}