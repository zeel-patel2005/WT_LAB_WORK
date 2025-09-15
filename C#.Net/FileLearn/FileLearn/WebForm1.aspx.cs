using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileLearn
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (FileUpload1.HasFile)
                {
                    string fileName = FileUpload1.FileName.ToString();
                    Response.Write(fileName + "<br />");
                    string fileExtension = System.IO.Path.GetExtension(fileName).ToLower();
                    Response.Write(fileExtension + "<br />");
                    if(fileExtension == ".txt" || fileExtension == ".docx" || fileExtension == ".pdf")
                    {
                        string filePath = Server.MapPath("~/UploadedFiles/") + fileName;
                        FileUpload1.SaveAs(filePath);
                        Response.Write("File uploaded successfully to: " + filePath + "<br />");
                    }
                    else
                    {
                        Response.Write("Invalid file type. Only .txt, .docx, and .pdf files are allowed.<br />");
                    }
                }
            }
        }
    }
}