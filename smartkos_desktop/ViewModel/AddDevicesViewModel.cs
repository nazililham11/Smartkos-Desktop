using System;
using System.Windows;
using System.Windows.Input;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using smartkos_desktop.Model;
using smartkos_desktop.View;

namespace smartkos_desktop.ViewModel
{
	class AddDevicesViewModel : INotifyPropertyChanged
	{
		public Action CloseAction { get; set; }
		public Action MouseDownAction { get; set; }
		public ICommand AddCommand { get; set; }
		public ICommand CloseCommand { get; set; }
		public ICommand MouseDownCommand { get; set; }
		public AccountModel Account { get; set; }
		public TilesModel newTiles { get; set; }
		public string ButtonEnable { get; set; }
		IFirebaseConfig config = new FirebaseConfig {
			AuthSecret = "CnkVSmMUn7nKPB8N7H8HAMMuBcC0kYwanACjWBfc",
			BasePath   = "https://smartkos-c4b4b.firebaseio.com/"
		};
		private static IFirebaseClient client;

		public AddDevicesViewModel()
		{
			this.Account = new AccountModel() { Email = App.SessionAccount };
			newTiles = new TilesModel();
			client = new FireSharp.FirebaseClient(config);
			AddCommand = new RelayCommand(o => AddNewDevices(this.Account));
			CloseCommand = new RelayCommand(o => BackAction());
			MouseDownCommand = new RelayCommand(o => DragWindow());
			ButtonEnable = "True";
		}

		public async void AddNewDevices(AccountModel data)
		{
			try {
				ButtonEnable = "False";
				string username = data.Email.Substring(0, data.Email.IndexOf("@"));
				data.Email = data.Email.Trim().ToLower();
				FirebaseResponse check = await client.GetAsync("/Account/" + username + "/Tiles/");
				List<TilesModel> tiles = check.ResultAs<List<TilesModel>>() ?? new List<TilesModel>();
				if (tiles.Count > 0) {
					tiles.Add(this.newTiles);
					FirebaseResponse clearResponse = await client.DeleteAsync("/Account/" + username + "/Tiles");
					FirebaseResponse response = await client.SetAsync<List<TilesModel>>("/Account/" + username + "/Tiles/", tiles);
					List<TilesModel> result = response.ResultAs<List<TilesModel>>();
				} else {
					List<TilesModel> Newtiles = new List<TilesModel>();
					Newtiles.Add(this.newTiles);
					SetResponse response = await client.SetAsync<List<TilesModel>>("/Account/" + username + "/Tiles/", Newtiles);
				}
			} catch (Exception ex) {
				MessageBox.Show(ex.Message);
			}
			ButtonEnable = "True";
		}
		public void DragWindow()
		{
			MouseDownAction();
		}

		public void BackAction()
		{
			Home home = new Home();
			home.Show();
			CloseAction();
		}
		public event PropertyChangedEventHandler PropertyChanged;

		protected virtual void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

	}
}
