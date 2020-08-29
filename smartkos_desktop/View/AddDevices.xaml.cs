using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using smartkos_desktop.ViewModel;

namespace smartkos_desktop.View
{

	public partial class AddDevices : Window
	{

		private readonly AddDevicesViewModel _viewModel = new AddDevicesViewModel();

		public AddDevices()
		{
			InitializeComponent();
			DataContext = _viewModel;
			_viewModel.CloseAction = _viewModel.CloseAction ?? new Action(this.Close);
			_viewModel.MouseDownAction = _viewModel.MouseDownAction ?? new Action(this.DragMove);

		}
	}
}
