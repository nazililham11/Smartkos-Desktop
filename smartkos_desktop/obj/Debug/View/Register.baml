   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5   	   D @FluentWPF, Version=0.6.1.0, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF 5   	    smartkos_desktop$   smartkos_desktop.View.Register   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   Efw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF     5   	   )  #SourceChord.FluentWPF.AcrylicWindow    Enabled  .    TintOpacity$	 0.1Q�5	   	    � Title$ Smartkos - Register��5   	    � Icon$ /Assets/logo.png��6%   $	��350��6=   $	��500��6J    � 
ResizeMode$ NoResize=�6V    � WindowStartupLocation$ CenterScreen=�6l   .   (System.Windows.Interactivity.Interaction   Triggers 5      /   )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ 	MouseDown��6   .   (System.Windows.Interactivity.TriggerBase   Actions. 5      6   0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6$   �� *MouseDownCommand+5      .��5      � $��15q�6   
 � RowDefinitions
 5   
   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $��40 �6   �� 5      $��40 �6    � ColumnDefinitions 5    
   �� 5!      $	��130 �6   �� 5"      $��* �6   ��5%   
   �� 5&       �� Triggers 5'      �� 5(       �� Binding 6"   �� *FocusElement+ �� Value tbxEmail6C   .a�5)      ��  �� Property �@+�FocusedElement �� Value 6H   ��  �� ElementName$ tbxEmail��5*      �� 5+       6"   �� *FocusElement+ tbxPassword6C   .a�5,      ��  �@+�FocusedElement 6H   �� $ tbxPassword��5-      �� 5.       6"   �� *FocusElement+ tbxConfirmPassword6C   .a�5/      ��  �@+�FocusedElement 6H   �� $ tbxConfirmPassword��50      �� 51       6"   �� *FocusElement+ btnRegister6C   .a�52      ��  �@+�FocusedElement 6H   �� $ btnRegister��53      55      .+�58   
   �� -   5        $��tbxEmail��58   4      TextBoxRevealStyle#��[  6D   $��0��6p   $��1��6}   $��Center=�6�   ��6   �� *NewAccount.Email+.��6�    J� InputBindings 59      �� 5:      
 �� Key$ Enter��6A    �� Command 6   �� *RegisterCommand+6A   .��5;   %   5<      �� 5=   
   
���  ��$��-5q�6l   $��Right=�6x   $	��Top=�6�   $��1��6�   $��1��6�   ��6   �� *
EmailError+y�6/   �� *EmailErrorVisibility+6�   �� 5?   
   -   5        $��tbxPassword��5?   7   #��[  6J   $��2��6v   $��1��6�   $��Center=�6�   ��6   �� *NewAccount.Password+.��6�    5@      �� 5A      $ Enter��6A    6   �� *RegisterCommand+6A   .��5B   %   5C      �� 5D   
   
���  ��$��-5q�6r   $��Right=�6~   $	��Top=�6�   $��3��6�   $��1��6�   ��6   �� *PasswordError+y�62   �� *PasswordErrorVisibility+6�   �� 5F   
   -   5        $��tbxConfirmPassword��5F   3   #��[  6M   $��4��6y   $��1��6�   $��Center=�6�   ��6   �� *ConfirmPassword+.��6�    5G      �� 5H      $ Enter��6A    6   �� *RegisterCommand+6A   .��5I   %   5J      �� 5K   
   
���  ��$��-5q�6�   $��Right=�6�   $	��Top=�6�   $��5��6�   $��1��6�   ��6   �� *ConfirmPasswordError+y�69   �� * ConfirmPasswordErrorVisibility+6�   �� 5N   
   $��Email ��6   
�������$��15(�64   $��0��6B   $��0��6O   $	��Top=�6_   $��Right=�6w   �� 5O   
   $��	Password ��6   
�������$��15(�67   $��2��6E   $��0��6R   $	��Top=�6b   $��Right=�6z   �� 5P   
   $��Confirm Password ��6   
�������$��15(�6?   $��4��6M   $��0��6Z   $	��Top=�6j   $��Right=�6�   �� 5R   
    �� Orientation$ 
Horizontal=�6   $��7��6.   $��1��6;   $��Center=�6K   $��Right=�6f   .+�5S      �� $��Close��6   
�������$��15(�68     TilesRevealStyle#��[ 6h   $��Center=�6�   $��0,0,20,0q�6�   $	��130��6�   $��30��6�   ��6F   �� *CloseCommand+6�   �� 5T      -   5        $��btnRegister��5T   (   $��Register��6   
�������$��15(�6N   #��[ 6�   $��Center=�6�   $	��130��6�   $��30��6�   ��6\   �� *RegisterCommand+6�   5U      �� 5V   
   $ 
Horizontal=�6   $��8��6.   $��1��6;   $��Center=�6K   $��Right=�6f   .+�5W      �� $!��Already have an Account ?  ��6   
�������$��15(�6M   $��Center=�6[   $
��Left=�6v   �� 5X      $��Login��6   
�������$��15(�68   #��[ 6g   $��Center=�6�   $��Right=�6�   $	��130��6�   $��30��6�   ��6F   �� *LoginCommand+6�   5Y      5[      5\      