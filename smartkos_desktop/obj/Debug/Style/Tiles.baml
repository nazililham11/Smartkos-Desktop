   M S B A M L   `   `   `  ����D  @FluentWPF, Version=0.6.1.0, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF  5      P6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF  5      fAclr-namespace:SourceChord.FluentWPF.Animations;assembly=FluentWPF SourceChord.FluentWPF.Animations  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0895    /SourceChord.FluentWPF.RelativePositionConverter   relativePositionConverter  TilesRevealStyle  �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� CornerRadius'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard	 �� TargetProperty
 �� 
TargetName	 W� To g� Duration W� EasingFunction.  (System.Windows.Media.Animation.CubicEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode W� From g� 	BeginTime-  'System.Windows.Media.Animation.SineEase5   /SourceChord.FluentWPF.Animations.BrushAnimation g� AutoReverse	   To �� Color   EasingFunction J� Opacity0   *SourceChord.FluentWPF.RevealBrushExtension   Color   Size   Opacity ��Name � MappingMode 
� RadiusY 
� RadiusX 
� Center `� 	Converter �� Path  �� RelativeSource! �� AncestorType" 
� GradientOrigin# � Color$ � Offset% ��Name& J� SnapsToDevicePixels' �� Triggers( P� Property) P� Value* �� 
TargetName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      =fw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF  5      @local6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF  5      O	animationAclr-namespace:SourceChord.FluentWPF.Animations;assembly=FluentWPF  5      %�  &	        &	      7   7      5      6#   �� 5      "  ��6%   .�5	   
   ��  �@�OverridesDefaultStyle . 62   �� 5
   
    � ��
 �   �6'   �� 5   
    � �� �	#808080806'   �� 5   
    � ��$ 2q�6,   �� 5   
    � ��$ Center=�67   �� 5   
    � ��$ Center=�65   �� 5   
    �@J�SnapsToDevicePixels . 60   �� 5   
    �@�UseLayoutRounding . 6.   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� $
 root��6   $ 10��6+   #��z��6=   ._�5      �  5        5   "   CommonStates��. 5   &     
Normal��. 5   *   �� .��5   .   W� $	 (UIElement.Opacity)�6>   $
 backgroundBorder��6n   $ 0X�5   >   $ 	0:0:0.600D�6E    5   2     5   6   $ EaseOut=�6@   5    /   5!   +   5"   '     5$   &   	MouseOver��. 5%   *   �� .��5&   .   W� $	 (UIElement.Opacity)�6>   $
 backgroundBorder��6n   $	 0.5X�5'   >   $ 	0:0:0.600D�6G    5(   2     5)   6   $ EaseOut=�6@   5+   /   5,   +   5-   '     5/   &   Pressed��. 50   *   �� .��51   .   W� $	 (UIElement.Opacity)�6>   $
 backgroundBorder��6n   $	 0.5X�52   >   $ 	0:0:0.600D�6G    53   2     54   6   $ EaseOut=�6@   56   /   W� 58   .   $	 (UIElement.Opacity)�6>   $
 
hoverLight��6n   $ 0X�59   >   $ 	0:0:0.100D�6E    5:   2     5;   6   $ EaseOut=�6@   5=   /   W� 5?   .   $	 (UIElement.Opacity)�6>   $
 
pressLight��6n   $ 1X�5@   >   $ 	0:0:0.100D�6E    5A   2     5B   6   $ EaseOut=�6@   5D   /   W� 5F   .   $#	 (RadialGradientBrush.RadiusX)�6>   $
 brush��6x   $	 100X�5G   >   $ 50X�6I   $ 	0:0:0.300D�6Q    5H   2     5I   6   $ EaseOut=�6@   5K   /   W� 5L   .   $#	 (RadialGradientBrush.RadiusX)�6>   $
 brush��6x   $	 500X�5M   >   $ 	0:0:0.500X�6G   $ 	0:0:4.000D�6]    5N   2     5O   6   $ 	EaseInOut=�6?   5Q   /   W� 5R   .   $#	 (RadialGradientBrush.RadiusY)�6>   $
 brush��6x   $	 100X�5S   >   $ 50X�6I   $ 	0:0:0.300D�6Q    5T   2     5U   6   $ EaseOut=�6@   5W   /   W� 5X   .   $#	 (RadialGradientBrush.RadiusY)�6>   $
 brush��6x   $	 500X�5Y   >   $ 	0:0:0.500X�6G   $ 	0:0:4.000D�6]    5Z   2     5[   6   $ 	EaseInOut=�6?   5]   /   W� 5_   .   $	 Opacity�6>   $
 brush��6b   $ 0X�5`   >   $ 	0:0:0.500X�6E   $ 	0:0:4.000D�6[    5a   2     5b   6   $ 	EaseInOut=�6?   5d   /   5e   +   5f   '     5h   &   Disabled��. 5i   *   �� .��5j   .     $	 (TextElement.Foreground)�6G   $
 contentPresenter��6|   $ 	0:0:0.100D�5k   G    .   5l   2   �� 5m   6   $ 	#FF838383��6F    5o   2     5p   6   $ 	EaseInOut=�6?   5r   /   W� 5s   .   $	 Opacity�6>   $
 border��6b   $ 0X�5t   >   $ 	0:0:0.100D�6E    .   5u   2     5v   6   $ 	EaseInOut=�6?   5x   /   5y   +   5z   '   5{   #   .+�5}      �� $ backgroundBorder��6%   $ 0Q�5~   %   $ 10��5   %   ._�5�   "   � }�. .+�5�   &   �� $ 
hoverLight��6-   ��6A     $ White��$	 200Q�$	 0.6Q��� 5�   &   $ 
pressLight��60   $ 0Q�6D   ��5�   *   
� 5�   .   	brush��$ Absolute=�6Q   $ 5Q�6h   $ 5Q�6t    5�   2   `� 5�   6   8   .1�5�   :   �� $' !(local:PointerTracker.RootObject)�6�     6B   �� *FindAncestor+"! ��6�   �� 5�   :     6B   �� *FindAncestor+"! ���� 5�   :   $% (local:PointerTracker.Position)�6�     6B   �� *FindAncestor+"! ��6�   5�   7   " 5�   2   `� 5�   6   8  .1�5�   :   �� $' !(local:PointerTracker.RootObject)�6�     6B   �� *FindAncestor+"! ��6�   �� 5�   :     6B   �� *FindAncestor+"! ���� 5�   :   $% (local:PointerTracker.Position)�6�     6B   �� *FindAncestor+"! ��6�   5�   7   .��5�   2   � $# Transparent��6?   $$ 0Q�6S   � 5�   2   $# 	#88FFFFFF��6?   $	$ 0.5Q�6Q   � 5�   2   $# Transparent��6?   $$ 1Q�6S   5�   /   5�   '   5�   #   5�      �� 5�      #��z��5�   %   $ 10��5�   %   ��5�   %   Z� ._�5�   "   �� $% contentPresenter��63   |�.  #��z��5�   9   #��z��5�   9   #��z��5�   9   ��. #& z& 5�   9   5�      �� 5�      $ border��6%   #��z��5�   %   $ 10��5�   %   ��5�   %     $ White��$	 120Q�$	 0.3Q�5�      5�      5�      ' 5�      P� 5�      ( �@J�IsMouseOver) . . �5�      �� $
* root��6%    � �� �	#BB8080806M   5�      5�      5�      5�      5�      