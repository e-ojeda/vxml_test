using System;
using System.Data;

public partial class _Dayprompt : System.Web.UI.Page
{
    public int myVxmlCode(ref string prompt, ref string date,string Button)
    {
        DateTime dt = DateTime.Now;
        if (Button == "1")
        {
            date = DateTime.Now.ToString("MMMM dd");
            prompt = "Hello sir! today's date is";
            return 1;
        }
        else if(Button=="2")
           {
               date = DateTime.Now.ToString("T");
               prompt = "Hello sir! Current time is";
               return 2;
           }
        else
           {
               date = DateTime.Now.ToString("dddd");
               prompt = "Hello sir! Current day is";
               return 3;
           }
    }
}