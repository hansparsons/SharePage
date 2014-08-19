using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;
using System.IO;
using System.Text;


public partial class Banner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Capture(object sender, EventArgs e)
    {
        string url = txtUrl.Text.Trim();


        Thread thread = new Thread(delegate()
        {
            using (WebBrowser browser = new WebBrowser())
            {
                browser.ScrollBarsEnabled = false;
                browser.AllowNavigation = false;
                browser.AllowWebBrowserDrop = false;
                browser.ScriptErrorsSuppressed = true;
                browser.Navigate("www.cnn.com");
                //browser.Navigate((url, null, <data>, "Content-Type: application/x-www-form-urlencoded");)
                browser.Width = 1024;
                browser.Height = 768;
                browser.ClientSize = new Size(1024,768);
                browser.DocumentCompleted += new WebBrowserDocumentCompletedEventHandler(DownloadCompleted);
                while ((browser.IsBusy) |  (browser.ReadyState != WebBrowserReadyState.Complete))
                {
                    System.Windows.Forms.Application.DoEvents();
                }
                //Thread.Sleep(5000); 
                //browser.Dispose();
            }
        });
        thread.SetApartmentState(ApartmentState.STA);
        thread.Start();
        thread.Join();
    }

    private void DownloadCompleted( object sender, WebBrowserDocumentCompletedEventArgs e)
    {

        string url = e.Url.ToString();
        WebBrowser browser = sender as WebBrowser;
        //if (e.Url.AbsolutePath == (sender as WebBrowser).Url.AbsolutePath)
        if (browser.ReadyState != WebBrowserReadyState.Complete && e.Url.AbsolutePath == browser.Url.AbsolutePath)
        {
            try
            {
                using (Bitmap imgbitmap = new Bitmap(browser.Width, browser.Height))
                {
                    browser.DrawToBitmap(imgbitmap, new Rectangle(1, 1, browser.Width, browser.Height));
                    using (MemoryStream stream = new MemoryStream())
                    {
                        imgbitmap.Save(Server.MapPath("~") + "/Thumbnail.png", System.Drawing.Imaging.ImageFormat.Png);
                        imgScreenShot.ImageUrl = ("Thumbnail.png");
                        //Application.ExitThread(); 
                        
                    }
                }
            }

            catch (Exception exception)
            {
                txtUrl.Text = exception.ToString();
            }
        }
        else
        {
            return;
        }
/*
        if (!(url.StartsWith("http://") || url.StartsWith("https://")))
        {
            // in AJAX
        }
        if (e.Url != browser.Url)
        {
            txtUrl.Text = (e.Url.AbsolutePath.ToString() + browser.Url.AbsolutePath.ToString());
        }

        if (e.Url.AbsolutePath != browser.Url.AbsolutePath)
        {
            // IFRAME 
            txtUrl.Text = (e.Url.AbsolutePath.ToString() + browser.Url.AbsolutePath.ToString());
        }
        else
        {
            // REAL DOCUMENT COMPLETE
            
          
        } */



        
    }    


}
