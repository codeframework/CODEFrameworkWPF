   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulliGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType �� Property *  &CODE.Framework-Application-ThemeBrush1 �� Value / +CODE.Framework-Application-ForegroundBrush1 / +CODE.Framework-Application-BackgroundBrush2  FontSize-Normal  DefaultFont �� 
TargetType ��Name'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration		 W� To
 �� TargetProperty �� 
TargetName � ColumnDefinitions ��Name � UseLayoutRounding F�Name J� Opacity �� Stretch �� StrokeDashOffset �� StrokeEndLineCap �� StrokeDashArray ��Name 3 /CODE.Framework-Application-ValidationErrorBrush3   -CODE.Framework.Wpf.Validation.InputValidation   ErrorMessage � ToolTip �� Triggers P� Property P� Value �� 
TargetName�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OvalGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      %�  '��       �� 5      "  ��6   .�5   
   ��  � ��# �   6(   �� 5   
    � ��$ 2q�6,   �� 5   
    � ��# �  6'   �� 5	   
    � ��# �  6'   �� 5
   
    � ��$ 4,0,0,0q�6$   �� 5   
    � ��$ Stretch=�60   �� 5   
    � ��$ Center=�6.   �� 5   
    � ��$
 Left=�67   �� 5   
    � ��$ Center=�65   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � ��$ 25��6&   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� $ Bd��6J   ��6   Z� ��64   Z�  5        5      CommonStates��. 5   "     
Normal��6.     5   "   Disabled��. 5   &   �� .��5   *   W� $ 0D�6:   	 .66G   $
 Opacity�6O   $ NormalRectangle��6s   W� 5   *   $ 0D�6:   	 .66G   $
 Opacity�6O   $ ContentPresenter��6s   5   '   5   #   5        5       CheckStates��. 5!   "     Checked��. 5"   &   �� .��5#   *   W� $ 0D�6:   	 16G   $
 Opacity�6N   $ 
CheckGlyph��6r   5$   '   5%   #     5&   "   	Unchecked��6.     5'   "   Indeterminate��. 5(   &   �� .��5)   *   W� $ 0D�6:   	 16G   $
 Opacity�6N   $ IndeterminateGlyph��6r   5*   '   5+   #   5,        5-      FocusStates��. 5.   "     Focused��. 5/   &   �� .��50   *   W� $ 0D�6:   	 16G   $
 Opacity�6N   $ FocusVisualWhite��6r   W� 51   *   $ 0D�6:   	 16G   $
 Opacity�6N   $ FocusVisualBlack��6r   52   '   53   #     54   "   	Unfocused��6.     55   "   PointerFocused��6.   56      ._�58      �  59      �� 5:   "   $��25 �63   �� 5;   "   $��* �63   .+�5=      �� $ NormalRectangle��6(   #��z��5>   (   #��z��5?   (   #��z��6O   $
 True��5@   (   $��21��5A   (   $��21��64   F� 5B      $ 
CheckGlyph��6#   =����    �uр�  ~Vр�[  ���@]� �2
���� @�(р�[  ��#��z��5C   #   $��LeftToRight=�5D   #   $��14��5E   #   $ 0Q�6/   $
 Fill=�6;   $��16��6J   �� 5F      $ IndeterminateGlyph��6(   #��z��6D   $��9��6i   $ 0Q�6t   $��9��6�   �� 5G      $ FocusVisualWhite��6(   $��25��6B   $ 0Q�6N   $	 0.5Q�6Z   $ Square=�6q   
�������$	 1,1R�6�   $��25��6�   �� 5H      $ FocusVisualBlack��6(   $��25��6B   $ 0Q�6N   $	 1.5Q�6Z   $ Square=�6q   
���   �$	 1,1R�6�   $��25��6�   �� 5I      $ ContentPresenter��6/   #��z��5J   /   #��z��6c   $��1��5K   /   #��z��6?   #��z��5L   /   #��z��6r   F� 5N      $ errorIndicator��6�   $��12��6#   $��12��6/   $	��Top=�6:   $��Right=�6R   "����        � �     � �  � 	#���  6�   $y�	Collapsed=�6�   # z 6  $��1��6>  5O      5P       5Q      P� 5R       �@ IsValid$ False��6I   . �5S      �� $ Bd��6<   # �  6L    � ���� 5T      $ Bd��6@    � ��$ 1q�6P   �� 5U      $ errorIndicator��6;    � y�$ Visible=�6W   5V      5X      5Z      5[      5]      