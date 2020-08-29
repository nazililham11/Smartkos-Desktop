using System;
using System.Windows;
using smartkos_desktop.Model;
using smartkos_desktop.ViewModel;
namespace smartkos_desktop.View
{
	public partial class Home : Window
	{
		private readonly HomeViewModel _viewModel = new HomeViewModel();
		public Home()
		{
			InitializeComponent();
			DataContext = _viewModel;
			_viewModel.CloseAction = _viewModel.CloseAction ?? new Action(this.Close);
			_viewModel.MouseDownAction = _viewModel.MouseDownAction ?? new Action(this.DragMove);
		}
	}
}
