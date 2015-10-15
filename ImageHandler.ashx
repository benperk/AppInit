<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;

public class ImageHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        HttpRequest request = context.Request;
        HttpResponse response = context.Response;

        string image = request.QueryString["image"];
        string filename = null;

        switch (image)
        {
            case "Lighthouse":
                filename = "Lighthouse.jpg";
                break;
            case "Tulips":
                filename = "Tulips.jpg";
                break;
            default:
                filename = null;
                break;
        }
        
        if (filename == null)
        {
            response.ContentType = "text/plain";
            response.Write("Invalid image request");
            response.End();
        }

        string fullFilename = context.Server.MapPath("~/App_Data/" + filename);
        response.ContentType = "image/jpeg";
        response.TransmitFile(fullFilename);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}