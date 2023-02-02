using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnProgress_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(5000);
        LabelDemo.Text = "Demonstration on UpdateProgress Control taken place last time at "+ System.DateTime.Now.ToLongTimeString();

    }
}