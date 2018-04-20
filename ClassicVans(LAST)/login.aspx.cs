using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Microsoft.Owin.Security;

namespace ClassicVans_LAST_
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogIn_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnection");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);


            var user = userManager.Find(TxtEmailLogin.Text, TxtPassLogin.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                LitLogin.Text = "Log-in Successful !";

            }
            else
            {
                LitLogin.Text = "Invalid username or password";
                ;
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["~/login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/login.aspx"]);
            }

            else
            {
                String userRoles = userManager.GetRoles(user.Id).FirstOrDefault();

                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/index.aspx");
                }
            }
        }
    

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnection");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = TxtRegEmail.Text };


            IdentityRole adminRole = new IdentityRole("Registereduser");
            roleManager.Create(adminRole);


            IdentityResult result = manager.Create(user, TxtRegPassword.Text);
            if (result.Succeeded)

            {
                manager.AddToRole(user.Id, "Registereduser");
                manager.Update(user);

                LitRegMsg.Text = "User Registration Successful !";

            }
            else
            {
                LitRegMsg.Text = "An Error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
 }
