   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5   	   K Gsmartkos_desktop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:smartkos_desktop.Viewsmartkos_desktop.View 5   	   D @FluentWPF, Version=0.6.1.0, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF 5   	       smartkos_desktop.View.Home   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   5local#clr-namespace:smartkos_desktop.View     5   	   Efw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF     5   	   )  #SourceChord.FluentWPF.AcrylicWindow    Enabled  .    TintOpacity$	 0.1Q�5
   	   *  $SourceChord.FluentWPF.PointerTracker   Enabled . $	��350��5   	   $	��200��6   $	��600��6%    � Title$ Smartkos - Home��5   	    � Icon$ /Assets/logo.png��6!    � 
ResizeMode$ NoResize=�69    � WindowStartupLocation$ CenterScreen=�6O   .   (System.Windows.Interactivity.Interaction   Triggers 5      /   )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ 	MouseDown��6   .   (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6   0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *MouseDownCommand+5      .��5      � $��0q�6    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   .+�5    
   � $��0��6   $��0��6    5!      �� 5"      $��40 �6#   �� 5#      $��* �6#   �� 5$      $��40 �6#   �� 5%      $��40 �6#   �� 5&      $��40 �6#   .+�5(      � $��0��6   .+�5)      ��    ButtonRevealStyle#��[  6   
������ $��40��6�   $��40��6�   $��Center=�6�   $��Center=�6�   ��6]   �� *AddDevicesCommand+.��5*      �� $��+��6   $��30(�6(   $��	0,-10,0,0q�66   
�������$��Center=�6\   $��Center=�6w   5+      5,      �� 5-      
�������$��1��6I   $��Center=�6Y   $
��Left=�6t   $��20,0,0,0q�6�   ��6   �� *Account.Email+6�   � 5/      $��4��6   .+�50      �� #��[  6   
������ $��40��6�   $��40��6�   $��Center=�6�   $��Center=�6�   ��6E   �� *SettingsCommand+.��51      �� $��/Assets/settings.png��6   $��25��6:   $��25��6F   $��Center=�6Q   52      53      54      �� 57   
   -   5         ��Name$ 	ListTiles��57      
������ 
������ $��Stretch=�6'  $��Stretch=�6E  $��5q�6a  $��1��6l  $��0��6y  ��6Y   �� *Tiles+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=� �� SelectedItem 6�   �� *SelectedTiles+$ OneWayToSource=� �� SelectedIndex 6�   �� *SelectedTilesIndex+$ OneWayToSource=���58      �� 59      .R�5:      �  5;      �� 5<      $��60 �6/   �� 5=      $	��130 �6/   �� 5>      $	��110 �6/   .+�5A      � $��0,0,10,0q�6   $��0��61   .+�5B      ��   TilesRevealStyle#��[ 6%   $��50��6�   $��50��6�   $��Center=�6�   $��Center=�6  ��6O   �� *TilesClickCommand+ � DataContext 6u   �� *DataContext+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ ListViewL�5C      �� 5D      $��30��6<   $��30��6H   $��Center=�6S   $��Center=�6n   ��6$   �� *Icon+6n   5E      �� 5F       �� Orientation$ Vertical=�6%   $��1��6<   .+�5G      �� $ 
Horizontal=�6)   .+�5H   "   �� $��Name: ��6,   
�������6:   �� 5I   "   
���������6,   �� *Name+6B   5J      �� 5K      $ 
Horizontal=�6)   .+�5L   "   �� $��
DeviceID: ��6,   
�������6>   �� 5M   "   
���������6,   �� *
DeviceId+6F   5N      �� 5O      $ 
Horizontal=�6)   .+�5P   "   �� $��Port: ��6,   
�������6:   �� 5Q   "   
���������6,   �� *Port+6B   5R      �� 5S      $ 
Horizontal=�6)   .+�5T   "   �� $��Status: ��6,   
�������6<   �� 5U   "   
���������6,   �� *Status+6D   5V      5W      �� 5X      $ Vertical=�6%   $��Right=�6<   $��Center=�6X   $��2��6s   .+�5Y      �� $��Turn ON��6%   
�������#��[  6J   $	��100��6  $��30��6  $��0,5,0,5q�6  ��6u   �� *TilesOnClickCommand+ 6�   �� *DataContext+ �� *FindAncestor+$ ListViewL�6  �� 5Z      $��Turn OFF��6%   
�������#��[  6K   $	��100��6  $��30��6  $��0,5,0,5q�6   ��6v   �� *TilesOffClickCommand+ 6�   �� *DataContext+ �� *FindAncestor+$ ListViewL�6   5[      5\      5]      5_      5`      5d      