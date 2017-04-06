using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FontChanger
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (arialCheckBox.Checked) resultLabel.Font.Name = "Arial";
            else if (georgiaCheckBox.Checked) resultLabel.Font.Name = "Georgia";
            else if (cooperCheckBox.Checked) resultLabel.Font.Name = "Cooper";
        }
        
    }
}