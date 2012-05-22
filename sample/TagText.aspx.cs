using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace sample
{
    public partial class TagText : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hdnDBTags.Value = ".jpg,.jpeg,.tif";
            this.GenearteTag();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string str = hdnSelectedTags.Value.ToString();
            IList<string> arr = str.Split(',').ToList();
            arr.Remove("");
            for (int i = 0; i < arr.Count; i++)
            {
                //save here
            }
        }
        /// <summary>
        /// Load from here
        /// </summary>
        public void GenearteTag()
        {
            string[] arr1 = new string[] { "one", "two", "three" };
            for (int i = 0; i < arr1.Count(); i++)
            {
                Placeholder.Controls.Add(new LiteralControl("<li>"));
                Placeholder.Controls.Add(new LiteralControl(arr1[i] + "</li>"));
            }
        }

    }
}