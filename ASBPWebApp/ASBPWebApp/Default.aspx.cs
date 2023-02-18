using System;
using System.Collections.Generic;
using System.DirectoryServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASBPWebApp
{
    public partial class _Default : Page
    {

        // load stranice - vidljivost
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
            listBox.Visible = false;
            Label3.Visible = false;
            btnPrint.Visible = false;
        }

        // button za logiranje
        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            if (ADAutentifikacija()) // provjera
            {
                btnPrint.Visible = true;
                Label1.Visible = false;
                Label2.Visible = false;
                btnLogin.Visible = false;
                txtUserName.Visible = false;
                txtPassword.Visible = false;
            }
            else // error
            {
                lblError.Visible = true;
                listBox.Items.Clear();
                listBox.Visible = false;
                Label3.Visible = false;
            }
        }

        // button za ispis usera 
        protected void btnPrint_Click1(object sender, EventArgs e)
        {
            Label3.Visible = true;
            listBox.Visible = true;
        }

        // autentifikacija sa servera
        public bool ADAutentifikacija()
        {
            DirectoryEntry entry = new DirectoryEntry("LDAP://192.168.1.121", txtUserName.Text, txtPassword.Text);

            DirectorySearcher searcher = new DirectorySearcher(entry);

            searcher.Filter = "(&(objectCategory=User)(objectClass=person))";

            try
            {
                SearchResult result = searcher.FindOne();
                IspisiKorisnike(searcher);
                return true;
            }
            catch
            {
                return false;
            }
        }

        // ispis korisnika 
        private void IspisiKorisnike(DirectorySearcher searcher)
        {
            SearchResultCollection resultCollection = searcher.FindAll();

            foreach (SearchResult user in resultCollection)
            {
                listBox.Items.Add(user.Properties["name"][0].ToString());
            }
        }
    }
}