   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulliGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType �� Property /  +CODE.Framework-Application-ForegroundBrush1 �� Value  FontSize-Normal  DefaultFont �� 
TargetType ��Name'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration		 W� To
 �� TargetProperty �� 
TargetName � ColumnDefinitions ��Name � UseLayoutRounding J� Opacity F�Name / +CODE.Framework-Application-ForegroundBrush2 �� Stretch �� StrokeDashOffset �� StrokeEndLineCap �� StrokeDashArray ��Name 3 /CODE.Framework-Application-ValidationErrorBrush3   -CODE.Framework.Wpf.Validation.InputValidation   ErrorMessage � ToolTip �� Triggers P� Property P� Value �� 
TargetName�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OvalGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      %�  '��       �� 5      "  ��6   .�5   
   ��  � ��# �   6(   �� 5   
    � ��$ 3q�6,   �� 5   
    � ��# �   6'   �� 5	   
    � �� 6'   Z� �� 5
   
    � ��$ 4,0,0,0q�6$   �� 5   
    � ��$ Stretch=�60   �� 5   
    � ��$ Center=�6.   �� 5   
    � ��$
 Left=�67   �� 5   
    � ��$ Center=�65   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � ��$ 25��6&   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� $ bd��6J   ��6   Z� ��64   Z�  5        5      CommonStates��. 5   "     
Normal��6.     5   "   Disabled��. 5   &   �� .��5   *   W� $ 0D�6:   	 .66G   $
 Opacity�6O   $ NormalRectangle��6s   W� 5   *   $ 0D�6:   	 .66G   $
 Opacity�6O   $ ContentPresenter��6s   5   '   5   #   5        5       CheckStates��. 5!   "     Checked��. 5"   &   �� .��5#   *   W� $ 0D�6:   	 16G   $
 Opacity�6N   $ 
CheckGlyph��6r   W� 5$   *   $ 0D�6:   	 16G   $
 Opacity�6N   $ BackgroundRectangle��6r   5%   '   5&   #     5'   "   	Unchecked��6.     5(   "   Indeterminate��. 5)   &   �� .��5*   *   W� $ 0D�6:   	 16G   $
 Opacity�6N   $ IndeterminateGlyph��6r   5+   '   5,   #   5-        5.      FocusStates��. 5/   "     Focused��. 50   &   �� .��51   *   W� $ 0D�6:   	 16G   $
 Opacity�6N   $ FocusVisualWhite��6r   W� 52   *   $ 0D�6:   	 16G   $
 Opacity�6N   $ FocusVisualBlack��6r   53   '   54   #     55   "   	Unfocused��6.     56   "   PointerFocused��6.   57      ._�59      �  5:      �� 5;   "   $��25 �63   �� 5<   "   $��* �63   .+�5>      �� $ BackgroundRectangle��6(   #��z��5?   (   $
 True��5@   (   $ 0Q�5A   (   $��21��5B   (   $��21��64   �� 5C      $ NormalRectangle��6(   #��z��5D   (   #��z��6O   $
 True��5E   (   $��21��5F   (   $��21��64   F� 5G      $ 
CheckGlyph��6#   =����    �uр�  ~Vр�[  ���@]� �2
���� @�(р�[  ��#���  5H   #   $��LeftToRight=�5I   #   $��14��5J   #   $ 0Q�6/   $
 Fill=�6;   $��16��6J   �� 5K      $ IndeterminateGlyph��6(   #��z��6D   $��9��6i   $ 0Q�6t   $��9��6�   �� 5L      $ FocusVisualWhite��6(   $��25��6B   $ 0Q�6N   $	 0.5Q�6Z   $ Square=�6q   
�������$	 1,1R�6�   $��25��6�   �� 5M      $ FocusVisualBlack��6(   $��25��6B   $ 0Q�6N   $	 1.5Q�6Z   $ Square=�6q   
���   �$	 1,1R�6�   $��25��6�   �� 5N      $ ContentPresenter��6/   #��z��5O   /   #��z��6c   $��1��5P   /   #��z��6?   #��z��5Q   /   #��z��6r   F� 5S      $ errorIndicator��6�   $��12��6#   $��12��6/   $	��Top=�6:   $��Right=�6R   "����        � �     � �  � 	#���  6�   $y�	Collapsed=�6�   # z 6  $��1��6>  5T      5U       5V      P� 5W       �@ IsValid$ False��6I   . �5X      �� $ bd��6<   # �  6L    � ���� 5Y      $ bd��6@    � ��$ 1q�6P   �� 5Z      $ errorIndicator��6;    � y�$ Visible=�6W   5[      5]      5_      5`      5b      