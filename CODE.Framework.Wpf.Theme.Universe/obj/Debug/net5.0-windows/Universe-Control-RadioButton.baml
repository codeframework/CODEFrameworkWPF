   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulliGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType �� Property /  +CODE.Framework-Application-ForegroundBrush1 �� Value  FontSize-Normal  DefaultFont �� 
TargetType ��Name'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration		 W� To
 �� TargetProperty �� 
TargetName � ColumnDefinitions A�Name � UseLayoutRounding J� Opacity ��Name �� StrokeDashOffset �� StrokeEndLineCap �� StrokeDashArray ��Name F�Name 3 /CODE.Framework-Application-ValidationErrorBrush3   -CODE.Framework.Wpf.Validation.InputValidation   ErrorMessage � ToolTip �� Triggers P� Property P� Value �� 
TargetName�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OvalGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      %  '	�       �� 5      "  	�6   .�5   
   ��  � ��# �   6(   �� 5   
    � ��$ 3q�6,   �� 5   
    � ��# �   6'   �� 5	   
    � �� 6'   Z� �� 5
   
    � ��$ 25��6&   �� 5   
    � ��$ 4,0,0,0q�6$   �� 5   
    � ��$ Stretch=�60   �� 5   
    � ��$ Center=�6.   �� 5   
    � ��$
 Left=�67   �� 5   
    � ��$ Center=�65   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � �� 5      �� 5      " 	�6"   .R�5      �� $ bd��6J   ��6   Z� ��64   Z�  5        5      CommonStates��. 5   "     
Normal��6.     5   "   Disabled��. 5   &   �� .��5   *   W� $ 0D�6:   	 .66G   $
 Opacity�6O   $ BackgroundEllipse��6s   W� 5   *   $ 0D�6:   	 .66G   $
 Opacity�6O   $ 
CheckGlyph��6s   W� 5   *   $ 0D�6:   	 .66G   $
 Opacity�6O   $ ContentPresenter��6s   5   '   5   #   5         5!      CheckStates��. 5"   "     Checked��. 5#   &   �� .��5$   *   W� $ 0D�6:   	 16G   $
 Opacity�6N   $ 
CheckGlyph��6r   5%   '   5&   #     5'   "   	Unchecked��6.     5(   "   Indeterminate��6.   5)        5*      FocusStates��. 5+   "     Focused��. 5,   &   �� .��5-   *   W� $ 0D�6:   	 16G   $
 Opacity�6N   $ FocusVisualWhite��6r   W� 5.   *   $ 0D�6:   	 16G   $
 Opacity�6N   $ FocusVisualBlack��6r   5/   '   50   #     51   "   	Unfocused��6.     52   "   PointerFocused��6.   53      ._�55      �  56      �� 57   "   $��27 �63   �� 58   "   $��* �63   .+�5:      A� $ BackgroundEllipse��6&   #��z��5;   &   #��z��5<   &   #��z��6M   $��21��5=   &   $��21��62   $��2q�6=   $
 True��5>   &   A� 5?      $ 
CheckGlyph��6&   #��z��5@   &   $��12��5A   &   $��2q�62   $ 0Q�6=   $��12��6I   �� 5B      $ FocusVisualWhite��6(   $��27��6B   $ 0Q�6N   $	 1.5Q�6Z   $ Square=�6q   
�������$	 1,1R�6�   $��27��6�   �� 5C      $ FocusVisualBlack��6(   $��27��6B   $ 0Q�6N   $	 0.5Q�6Z   $ Square=�6q   
���   �$	 1,1R�6�   $��27��6�   �� 5D      $ ContentPresenter��6/   #��z��5E   /   #��z��6c   $��1��5F   /   #��z��5G   /   #��z��6r   #��z��5H   /   F� 5I      $ errorIndicator��6�   $��12��6#   $��12��6/   $	��Top=�6:   $��Right=�6R   "����        � �     � �  � 	#���  6�   $y�	Collapsed=�6�   # z 6  $��1��6>  5J      5K       5L      P� 5M       �@ IsValid$ False��6I   . �5N      �� $ bd��6<   # �  6L    � ���� 5O      $ bd��6@    � ��$ 1q�6P   �� 5P      $ errorIndicator��6;    � y�$ Visible=�6W   5Q      5S      5U      5V      5X      