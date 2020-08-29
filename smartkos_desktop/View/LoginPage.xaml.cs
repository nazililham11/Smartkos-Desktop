using System;
using System.Windows;
using System.Net.NetworkInformation;
using smartkos_desktop.ViewModel;
namespace smartkos_desktop.View{
	public partial class LoginPage : Window{

		private readonly LoginViewModel _viewModel = new LoginViewModel();

		public LoginPage()
		{
			InitializeComponent();
			DataContext = _viewModel;
			_viewModel.CloseAction = _viewModel.CloseAction ?? new Action(this.Close);
			_viewModel.MouseDownAction = _viewModel.MouseDownAction ?? new Action(this.DragMove);
		}

	}
}
