using System.ComponentModel;
using System.Linq;

namespace smartkos_desktop.Model{
	class AccountModel{
		private string _Email { get; set; }
		private string _Password { get; set; }

		public string Email {
			get {
				_Email = _Email ?? "";
				return _Email;
			}
			set {
				_Email = value;
			}
		}

		public string Password {
			get {
				_Password = _Password ?? "";
				return _Password;
			}
			set {
				_Password = value;
			}
		}

	}
}
