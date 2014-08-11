using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { /*
        double punctX = 10;
        double punctY = 10;

        double spacing = 5;

        Panel1.Style["position"] = "relative";

        for (int y = 1; y < 4; y++)
        {
            System.Web.UI.WebControls.Image image = new System.Web.UI.WebControls.Image();
            image.ID = "tree" + y.ToString();
            image.Style["position"] = "absolute";
            image.Style["left"] = punctX.ToString() + "px";
            image.Style["top"] = punctY.ToString() + "px";
            image.Width = 60;
            image.Height = 100;
            image.ImageUrl = "Images/" + image.ID.ToString() + ".jpg";

            Panel1.Controls.Add(image);

            punctX += image.Width.Value + spacing;
        }
       * 
       * */
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        // this is the folder where the uploaded files are saved
        string DefaultFileName = "";


        if (FileUploader.HasFile)
            try
            {
                //FileUploader.SaveAs(Server.MapPath(DefaultFileName) + FileUploader.FileName);
                
                FileUploader.SaveAs(Server.MapPath("~/Images/" + FileUploader.FileName));
                //string where = (Server.MapPath(DefaultFileName) + FileUploader.FileName);
                    
                double punctX = 10;
                double punctY = 10;

                double spacing = 5;

                Panel2.Style["position"] = "relative";

                for (int y = 1; y < 3; y++)
                {
                    System.Web.UI.WebControls.Image image = new System.Web.UI.WebControls.Image();
                    //image.ID = "testjpg"; // +y.ToString();
                    image.Style["position"] = "absolute";
                    image.Style["left"] = punctX.ToString() + "px";
                    image.Style["top"] = punctY.ToString() + "px";
                    image.Width = 60;
                    //image.Height = 100;
                    //image.ImageUrl = (Server.MapPath(DefaultFileName) + FileUploader.FileName);
                    //image.ImageUrl = "Images/" + image.ID.ToString() + ".jpg";
                    image.ImageUrl = "Images/" + FileUploader.FileName.ToString();
                    //image.ImageUrl = Server.MapPath("~/Images/" + FileUploader.FileName);
                    Panel2.Controls.Add(image);
                    punctX += image.Width.Value + spacing; 
                    
                                                 
                }


             DebugText.Text = "File name: " +
             FileUploader.PostedFile.FileName + "<br>" +
             FileUploader.PostedFile.ContentLength + " kb<br>" +
             "Content type: " +
             FileUploader.PostedFile.ContentType + "<br><b>Uploaded Successfully";


            }
            catch (Exception ex)
            {
                DebugText.Text = "ERROR: " + ex.Message.ToString();
            }
        else
        {
            DebugText.Text = "You have not specified a file.";
        }
    }
}