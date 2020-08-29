using System;
using System.Windows;
using System.Windows.Input;
using System.Collections.Generic;
using System.ComponentModel;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using smartkos_desktop.Model;
using smartkos_desktop.View;

namespace smartkos_desktop.ViewModel
{
	class HomeViewModel : INotifyPropertyChanged
	{
		public ICommand AddDevicesCommand { get; set; }
		public ICommand SettingsCommand { get; set; }
		public ICommand CloseCommand { get; set; }
		public ICommand MouseDownCommand { get; set; }
		public ICommand TilesClickCommand { get; set; }
		public ICommand TilesOnClickCommand { get; set; }
		public ICommand TilesOffClickCommand { get; set; }
		public Action CloseAction { get; set; }
		public Action MouseDownAction { get; set; }
		public AccountModel Account { get; set; }
		public TilesModel SelectedTiles { get; set; }
		public List<TilesModel> _Tiles { get; set; }
		public List<TilesModel> Tiles {
			get {
				_Tiles = _Tiles ?? new List<TilesModel>();
				return _Tiles;
			}
			set {
				_Tiles = value;
				OnPropertyChanged(nameof(Tiles));
			}
		}
		public string SelectedTilesIndex { get; set; }
		IFirebaseConfig config = new FirebaseConfig {
			AuthSecret = "CnkVSmMUn7nKPB8N7H8HAMMuBcC0kYwanACjWBfc",
			BasePath = "https://smartkos-c4b4b.firebaseio.com/"
		};
		private static IFirebaseClient client;

		public HomeViewModel()
		{
			Account = new AccountModel() { Email = App.SessionAccount };
			client = new FireSharp.FirebaseClient(this.config);
			SettingsCommand = new RelayCommand(o => OpenSettings());
			AddDevicesCommand = new RelayCommand(o => OpenAddNewDevices());
			CloseCommand = new RelayCommand(o => CloseAction());
			MouseDownCommand = new RelayCommand(o => DragWindow());
			TilesClickCommand = new RelayCommand(o => ChangeTilesStatus(this.Account, this.SelectedTiles, SelectedTiles.Status));
			TilesOnClickCommand = new RelayCommand(o => ChangeTilesStatus(this.Account, this.SelectedTiles, "OFF"));
			TilesOffClickCommand = new RelayCommand(o => ChangeTilesStatus(this.Account, this.SelectedTiles, "ON"));
			ReadTiles(this.Account);
		}

		public async void ChangeTilesStatus(AccountModel account, TilesModel data, string FromState)
		{
			try {
				if (Convert.ToInt32(SelectedTilesIndex) > 0) {
					string username = account.Email.Substring(0, account.Email.IndexOf("@"));
					data = data ?? new TilesModel();
					data.Status = FromState.Equals("ON") ? "OFF" : "ON";
					int index = Convert.ToInt32(SelectedTilesIndex);
					Tiles[index].Status = data.Status;
					FirebaseResponse response = await client.UpdateAsync<TilesModel>("/Account/" + username + "/Tiles/" + SelectedTilesIndex + "/", data);
					TilesModel result = response.ResultAs<TilesModel>() ?? new TilesModel();
					OnPropertyChanged(nameof(Tiles));
				}
			} catch(Exception ex) {
				MessageBox.Show(ex.Message);
			}
}
		public async void ReadTiles(AccountModel account)
		{
			try {
				string username = account.Email.Substring(0, account.Email.IndexOf("@"));
				FirebaseResponse check = await client.GetAsync("/Account/" + username + "/Tiles/");
				List<TilesModel> tiles = check.ResultAs<List<TilesModel>>() ?? new List<TilesModel>();
				this.Tiles = tiles;
			} catch(Exception ex) {
				MessageBox.Show(ex.Message);
			}
		}
		public void DragWindow()
		{
			MouseDownAction();
		}

		public void OpenSettings()
		{
			//Settings settings = new Settings();
			//settings.Show();
			//CloseAction();
		}

		public void OpenAddNewDevices()
		{
			AddDevices newDevices = new AddDevices();
			newDevices.Show();
			CloseAction();
		}
		public event PropertyChangedEventHandler PropertyChanged;

		protected virtual void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
