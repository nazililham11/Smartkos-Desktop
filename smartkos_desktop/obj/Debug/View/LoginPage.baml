   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5   	   D @FluentWPF, Version=0.6.1.0, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF 5   	    smartkos_desktop%   smartkos_desktop.View.LoginPage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   Efw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF     5   	   )  #SourceChord.FluentWPF.AcrylicWindow    TintOpacity$	  0.1Q�5	   	      Enabled .  � Title$ Login - SmartKos��5   	    � Icon$ /Assets/logo.png��6"   $	��250��6:   $	��400��6G    � 
ResizeMode$ NoResize=�6S    � WindowStartupLocation$ CenterScreen=�6i   .   (System.Windows.Interactivity.Interaction   Triggers 5      /   )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ 	MouseDown��6   .   (System.Windows.Interactivity.TriggerBase   Actions. 5      6   0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6$   �� *MouseDownCommand+5      .��5      � *  $SourceChord.FluentWPF.PointerTracker
   Enabled
 . $��15q�6,    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $��35 �6   �� 5      $��30 �6    � ColumnDefinitions 5   
   �� 5      $��90 �6   �� 5      $��* �6   ��5    
   �� 5!       �� Triggers 5"      �� 5#       �� Binding 6"   �� *FocusElement+ �� Value tbxEmail6C   .a�5$      ��  �� Property �@+�FocusedElement �� Value 6H   ��  �� ElementName$ tbxEmail��5%      �� 5&       6"   �� *FocusElement+ tbxPassword6C   .a�5'      ��  �@+�FocusedElement 6H   �� $ tbxPassword��5(      �� 5)       6"   �� *FocusElement+ btnLogin6C   .a�5*      ��  �@+�FocusedElement 6H   �� $ btnLogin��5+      5-      .+�50   
   �� -   5        $��tbxEmail��50   F      TextBoxRevealStyle#��[  6V   $��0��6�   $��1��6�   $��Center=�6�   ��6   ��  �� Path$ NewAccount.Email� �� Mode$ TwoWay=�.��6�    J� InputBindings 51      �� 52      
 �� Key$ Enter��6>    �� Command 6   �� *LoginCommand+6>   .��53   %   54      �� 56   
   -   5        $��tbxPassword��56   I   #��[  6\   $��2��6�   $��1��6�   $��Center=�6�   ��6   �� $ NewAccount.Password�$ TwoWay=�.��6�    57      �� 58      $ Enter��6>    6   �� *LoginCommand+6>   .��59   %   5:      �� 5=   
   -   5        $��btnLogin��5=   !   $��Login��6   
�������$��15(�6D     TilesRevealStyle#��[ 6s   $��5��6�   $��1��6�   $��Center=�6�   $��Right=�6�   $	��130��6  $��30��6%  ��6R   �� *LoginCommand+{�6�   �� *ButtonLoginEnable+6%  �� 5>   
   $��Register��6   
�������$��15(�67   #��[ 6i   $��5��6�   $��1��6�   $��Center=�6�   $
��Left=�6�   $	��130��6  $��30��6  ��6E   �� *RegisterCommand+{�6�   �� *ButtonLoginEnable+6  �� 5@   
   $��Email ��6   
�������$��15(�64   $��0��6B   $��0��6O   $��Center=�6_   $��Right=�6z   �� 5A   
   ���	#FFFF2626$��13(�6r   $��1��6�   $��1��6�   $	��Top=�6�   $��-5q�6�   $
��Left=�6�   ��6   �� *
EmailError+y�6/   �� *EmailErrorVisibility+6�   �� 5B   
   $��	Password ��6   
�������$��15(�67   $��2��6E   $��0��6R   $��Center=�6b   $��Right=�6}   �� 5C   
   ���	#FFFF2626$��13(�6x   $��3��6�   $��1��6�   $	��Top=�6�   $��-5q�6�   $
��Left=�6�   ��6   �� *PasswordError+y�62   �� *PasswordErrorVisibility+6�   5D      5E      