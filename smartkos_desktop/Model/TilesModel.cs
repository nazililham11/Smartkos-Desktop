using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace smartkos_desktop.Model
{
    class TilesModel
    {
		public string Name { get; set; }
		public string IconOn { get; set; }
		public string IconOff { get; set; }
		public string Status { get; set; } = "OFF";
		public string Size { get; set; }
		public string DeviceId { get; set; }
		public string Port { get; set; }
		public string Code { get; set; }
		public string Color {
			get {if (Status.Equals("ON")) return "{DynamicResource SystemAltMediumHighColorBrush}";
				else return "{DynamicResource SystemAltMediumLowColorBrush}";
			}
		}
		public string Icon {
			get {
				if (Status.Equals("ON")) return IconOn;
				else return IconOff;
			}
			set {
				IconOn = "/Assets/DevicesIcon/" + value + "On.png";
				IconOff = "/Assets/DevicesIcon/" + value + "Off.png";
			}
		}
		
	}
}
