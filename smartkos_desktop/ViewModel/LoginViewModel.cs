using System;
using System.Windows;
using System.Windows.Input;
using System.ComponentModel;
using System.Net.NetworkInformation;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using smartkos_desktop.Model;
using smartkos_desktop.View;
namespace smartkos_desktop.ViewModel
{
	class LoginViewModel : INotifyPropertyChanged
	{

		public Action CloseAction { get; set; }
		public Action MouseDownAction { get; set; }
		public AccountModel NewAccount { get; set; }
		public ICommand LoginCommand { get; set; }
		public ICommand RegisterCommand { get; set; }
		public ICommand CloseCommand { get; set; }
		public ICommand MouseDownCommand { get; set; }
		public string EmailErrorVisibility { get; set; }
		public string PasswordErrorVisibility { get; set; }

		public string _ButtonEnable { get; set; }
		public string ButtonEnable {
			get { return _ButtonEnable; }
			set {
				_ButtonEnable = value;
				OnPropertyChanged(nameof(ButtonEnable));
			}
		}
		public string _FocusElement { get; set; }
		public string FocusElement {
			get { return _FocusElement; }
			set {
				_FocusElement = value;
				OnPropertyChanged(nameof(FocusElement));
			}
		}

		public string _EmailError;
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
		public string _PasswordError;
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
		IFirebaseConfig config = new FirebaseConfig {
			AuthSecret = "CnkVSmMUn7nKPB8N7H8HAMMuBcC0kYwanACjWBfc",
			BasePath = "https://smartkos-c4b4b.firebaseio.com/"
		};
		private static IFirebaseClient client;

		public LoginViewModel()
		{
			client = new FireSharp.FirebaseClient(this.config);
			NewAccount = new AccountModel();
			LoginCommand = new RelayCommand(o => UserLogin(NewAccount));
			RegisterCommand = new RelayCommand(o => OpenRegister());
			CloseCommand = new RelayCommand(o => CloseAction());
			MouseDownCommand = new RelayCommand(o => DragWindow());
			EmailError = PasswordError = "";
			FocusElement = "tbxEmail";
			ButtonEnable = "True";
		}

		public async void UserLogin(AccountModel account)
		{
			ButtonEnable = "False";
			EmailError = PasswordError = "";
			FocusElement = "btnLogin";
			try { 
				if (account.Email.Contains("@")) {
					if (NetworkInterface.GetIsNetworkAvailable()) {
						account.Email = account.Email.Trim().ToLower();
						string username = account.Email.Trim().Substring(0, account.Email.IndexOf("@"));
						FirebaseResponse response = await client.GetAsync("/Account/" + username);
						AccountModel result = response.ResultAs<AccountModel>() ?? new AccountModel();
						if (account.Email.Equals(result.Email)) {
							if (account.Password.Equals(result.Password)) {
								App.SessionAccount = account.Email;
								Home home = new Home();
								home.Show();
								CloseAction();
							} else {
								PasswordError = "Wrong Password";
								FocusElement = "tbxPassword";
							}
						} else {
							EmailError = "Wrong Email or Email Not Found";
							FocusElement = "tbxEmail";
						}
					} else {
						PasswordError = "Internet Connection Problem";
					}
				} else {
					EmailError = "Email Not Valid";
					FocusElement = "tbxEmail";
				}
			} catch(Exception ex) {
				MessageBox.Show(ex.Message);
			}
			ButtonEnable = "True";
		}
		public void DragWindow()
		{
			MouseDownAction();
		}

		public void OpenRegister()
		{
			Register register = new Register();
			register.Show();
			CloseAction();
		}

		public event PropertyChangedEventHandler PropertyChanged;

		protected virtual void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
