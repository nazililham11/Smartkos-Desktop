   M S B A M L   `   `   `  ����K  Gsmartkos_desktop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:smartkos_desktop.Viewsmartkos_desktop.View  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5   	   D @FluentWPF, Version=0.6.1.0, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF 5   	   &     smartkos_desktop.View.AddDevices   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:smartkos_desktop.View     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   Efw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF     5   	   )  #SourceChord.FluentWPF.AcrylicWindow    Enabled  .    TintOpacity$	 0.1Q�5
   	   *  $SourceChord.FluentWPF.PointerTracker   Enabled . $	��500��5   	   $	��350��6    � Title$ Smartkos - Home��5   	    � Icon$ /Assets/logo.png��6"    � 
ResizeMode$ NoResize=�6:    � WindowStartupLocation$ CenterScreen=�6P   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ 	MouseDown��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *MouseDownCommand+5      .��5      � $��15q�6    � RowDefinitions 5   
   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��40 �6    � ColumnDefinitions 5    
   �� 5!      $	��115 �6   �� 5"      $��* �6   .+�5%   
   �� -   5        $��tbxIcon��5%   1      TextBoxRevealStyle#��[  6@   $��0��6l   $��1��6y   $��Center=�6�   ��6   �� *newTiles.Icon+.��6�    J� InputBindings 5&      �� 5'      
 �� Key$ Enter��6<    �� Command 6   �� *
AddCommand+6<   .��5(   %   5)      �� 5*   
   -   5        $��tbxName��5*   1   #��[  6@   $��1��6l   $��1��6y   $��Center=�6�   ��6   �� *newTiles.Name+.��6�    5+      �� 5,      $ Enter��6<    6   �� *
AddCommand+6<   .��5-   %   5.      �� 5/   
   -   5        $��tbxModel��5/   5   #��[  6E   $��2��6q   $��1��6~   $��Center=�6�   ��6   �� *newTiles.DeviceId+.��6�    50      �� 51      $ Enter��6<    6   �� *
AddCommand+6<   .��52   %   53      �� 54   
   -   5        $��tbxPort��54   1   #��[  6@   $��3��6l   $��1��6y   $��Center=�6�   ��6   �� *newTiles.Port+.��6�    55      �� 56      $ Enter��6<    6   �� *
AddCommand+6<   .��57   %   58      �� 59   
   -   5        $��tbxCode��59   1   #��[  6@   $��4��6l   $��1��6y   $��Center=�6�   ��6   �� *newTiles.Code+.��6�    5:      �� 5;      $ Enter��6<    6   �� *
AddCommand+6<   .��5<   %   5=      �� 5?   
   $	��Add��6   
�������$��15(�62     TilesRevealStyle#��[ 6_   $��5��6�   $��1��6�   $��Center=�6�   $��Right=�6�   $	��130��6   $��30��6  ��6@   �� *
AddCommand+{�6�   �� *ButtonEnable+6  �� 5@   
   $��Cancel��6   
�������$��15(�65   #��[ 6d   $��5��6�   $��1��6�   $��Center=�6�   $
��Left=�6�   $	��130��6�   $��30��6�   ��6C   �� *CloseCommand+6�   �� 5B   
   $��Device Icon ��6   
�������$��15(�6:   $��0��6H   $��0��6U   $��Center=�6e   $��Right=�6�   �� 5C   
   $��Device Name ��6   
�������$��15(�6:   $��1��6H   $��0��6U   $��Center=�6e   $��Right=�6�   �� 5D   
   $��Device Model ��6   
�������$��15(�6;   $��2��6I   $��0��6V   $��Center=�6f   $��Right=�6�   �� 5E   
   $��Device Port ��6   
�������$��15(�6:   $��3��6H   $��0��6U   $��Center=�6e   $��Right=�6�   �� 5F   
   $��Device Code ��6   
�������$��15(�6:   $��4��6H   $��0��6U   $��Center=�6e   $��Right=�6�   5H      5I      