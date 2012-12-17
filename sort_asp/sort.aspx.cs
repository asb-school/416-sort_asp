using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sort_asp
{
    public partial class sort : System.Web.UI.Page
    {
        //protected int num_views = 0;

        // testing
        public string SelectedProductName 
        {
            get { return (string)Session["SelectedProductName"]; }
            set { Session["SelectedProductName"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // testing
        protected void temp1()
        {
            char[] array = { 'z', 'a', 'b' }; // Input array.
            Array.Sort<char>(array); // Sort array.
            foreach (var c in array)
                Console.WriteLine(c);
        }
    }
}