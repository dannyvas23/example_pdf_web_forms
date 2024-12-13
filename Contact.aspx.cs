using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using Newtonsoft.Json;

namespace pdfExport
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

           
        }


        protected void btnCallText2_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/plantillas/index.html");
            string content = File.ReadAllText(filePath);
            Console.WriteLine(content);

            // Convertir el HTML en un array de bytes usando Encoding.UTF8
            byte[] htmlBytes = Encoding.UTF8.GetBytes(content);

            // Convertir el array de bytes a una cadena en Base64
            string base64Encoded = Convert.ToBase64String(htmlBytes);

            //int parametro = 42;
            string script = $"text3({JsonConvert.SerializeObject(base64Encoded)});";
            ClientScript.RegisterStartupScript(this.GetType(), "callText3", script, true);
        }
    }
}