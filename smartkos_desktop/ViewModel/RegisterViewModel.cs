using System;
using System.Windows;
using System.Windows.Input;
using System.ComponentModel;
using System.Linq;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using smartkos_desktop.Model;
using smartkos_desktop.View;

namespace smartkos_desktop.ViewModel
{
    class RegisterViewModel : INotifyPropertyChanged
	{
		public Action CloseAction { get; set; }
		public Action MouseDownAction { get; set; }
		public ICommand LoginCommand { get; set; }
		public ICommand RegisterCommand { get; set; }
		public ICommand CloseCommand { get; set; }
		public ICommand MouseDownCommand { get; set; }
		public AccountModel NewAccount { get; set; }
		public string EmailErrorVisibility { get; set; }
		public string PasswordErrorVisibility { get; set; }
		public string ConfirmPasswordErrorVisibility { get; set; }
		public string ConfirmPassword { get; set; }
		public string _EmailError { get; set; }
		public string _PasswordError { get; set; }
		public string _ConfirmPasswordError { get; set; }
		public string _FocusElement { get; set; }
		public string FocusElement {
			get { return _FocusElement; }
			set {
				_FocusElement = value;
				OnPropertyChanged(nameof(FocusElement));
			}
		}

		public string EmailError {
			get { return _EmailError; }
			set {
				_EmailError = value;
				if (_EmailError.Equals("")) EmailErrorVisibility = "Collapsed";
				else EmailErrorVisibility = "Visible";
				OnPropertyChanged(nameof(EmailError));
				OnPropertyChanged(nameof(EmailErrorVisibility));
			}
		}
		public string PasswordError {
			get { return _PasswordError; }
			set {
				_PasswordError = value;
				if (_PasswordError.Equals("")) PasswordErrorVisibility = "Collapsed";
				else PasswordErrorVisibility = "Visible";
				OnPropertyChanged(nameof(PasswordError));
				OnPropertyChanged(nameof(PasswordErrorVisibility));
			}
		}
		public string ConfirmPasswordError {
			get { return _ConfirmPasswordError; }
			set {
				_ConfirmPasswordError = value;
				if (_ConfirmPasswordError.Equals("")) ConfirmPasswordErrorVisibility = "Collapsed";
				else ConfirmPasswordErrorVisibility = "Visible";
				OnPropertyChanged(nameof(ConfirmPasswordError));
				OnPropertyChanged(nameof(ConfirmPasswordErrorVisibility));
			}
		}

		IFirebaseConfig config = new FirebaseConfig {
			AuthSecret = "CnkVSmMUn7nKPB8N7H8HAMMuBcC0kYwanACjWBfc",
			BasePath = "https://smartkos-c4b4b.firebaseio.com/"
		};
		private static IFirebaseClient client;

		public RegisterViewModel(){
			NewAccount = new AccountModel();
			client = new FireSharp.FirebaseClient(config);
			LoginCommand = new RelayCommand(o => OpenLogin());
			RegisterCommand = new RelayCommand(o => UserRegister(NewAccount));
			CloseCommand = new RelayCommand(o => CloseAction());
			MouseDownCommand = new RelayCommand(o => DragWindow());
			EmailError = PasswordError = ConfirmPasswordError = "";
		}

		public async void UserRegister(AccountModel data)
		{
			if (Validate(data)) {
				try {
					string username = data.Email.Substring(0, data.Email.IndexOf("@"));
					data.Email = data.Email.Trim().ToLower();
					FirebaseResponse check = await client.GetAsync("/Account/" + username);
					AccountModel checkResult = check.ResultAs<AccountModel>();
					if (checkResult == null) {
						SetResponse response = await client.SetAsync<AccountModel>("/Account/" + username, data);
						AccountModel result = response.ResultAs<AccountModel>();

						NewAccount.Email = NewAccount.Password = ConfirmPassword = "";
						ConfirmPasswordError = "Register Successfully";
						OnPropertyChanged(nameof(ConfirmPassword));
						OnPropertyChanged(nameof(NewAccount.Email));
						OnPropertyChanged(nameof(NewAccount.Password));
					} else {
						FocusElement = "tbxEmail";
						EmailError = "Account already exist";
						OnPropertyChanged(nameof(EmailError));
					}
				} catch (Exception ex) {
					MessageBox.Show(ex.Message);
				}
			}
		}
		public bool Validate(AccountModel data)
		{
			EmailError = PasswordError = ConfirmPasswordError = "";
			bool flag1 = false, flag2 = false, flag3 = false;
			if (!data.Email.Contains("@") || !data.Email.Contains(".") || data.Email.Trim().Length < 4) {
				EmailError = "Email Not Valid";
				FocusElement = "tbxEmail";
			} else flag1 = true;
			if (data.Password.Trim().Length < 5) {
				PasswordError = "Password must be at least 5 characters";
				FocusElement = "tbxPassword";
			} else if (data.Password.Trim().Length > 20) {
				PasswordError = "Password cannot be more than 20 characters";
				FocusElement = "tbxPassword";
			} else {
				flag2 = true;
			}
			if (!data.Password.Equals(ConfirmPassword)) {
				ConfirmPasswordError = "Password not Match";
				FocusElement = "tbxConfirmPassword";
			} else flag3 = true;
			return flag1 && flag2 && flag3;
		}
		public void DragWindow()
		{
			MouseDownAction();
		}

		public void OpenLogin()
		{
			LoginPage login = new LoginPage();
			login.Show();
			CloseAction();
		}
		public event PropertyChangedEventHandler PropertyChanged;

		protected virtual void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

	}
}
