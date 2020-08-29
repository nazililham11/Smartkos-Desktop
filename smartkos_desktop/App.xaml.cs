using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using smartkos_desktop.View;
using smartkos_desktop.Model;
namespace smartkos_desktop
{
	public partial class App : Application
	{
		public static string SessionAccount { get; set; }
		
		private void Application_Startup(object sender, StartupEventArgs e)
		{
			LoginPage login = new LoginPage();
			login.Show();

		}
	}
}
