   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullwNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf$CODE.Framework.Wpf.BindingConverters  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      eEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5      iGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089(   "System.Windows.Controls.DatePicker  �� 
TargetType �� Property *  &CODE.Framework-Application-ThemeBrush1 �� Value / +CODE.Framework-Application-ForegroundBrush2 / +CODE.Framework-Application-BackgroundBrush2  FontSize-Normal  DefaultFont  Metro-DatePicker-Template  Metro-Control-Calendar
 X� NaN �� 
TargetType � 	Resources<   6CODE.Framework.Wpf.BindingConverters.LitBrushConverter  Key �� Padding �� RelativeSource  LitBrushConverter �� 	Converter	 �� ConverterParameter
 �Name(   "CODE.Framework.Wpf.Controls.GridEx   ColumnWidths � 	Resources ��Name  	 CODE.Framework-Icon-Calendar �� Triggers P� Property P� Value �� 
TargetName ��Name �� ElementName �� Mode �� Path:  4System.Windows.Controls.Primitives.DatePickerTextBox  Name � FocusVisualStyle ��Name J� SnapsToDevicePixels J� IsHitTestVisible J� Opacity �� RadiusY �� RadiusX �Name � AllowsTransparency  � 	StaysOpen! � PlacementTarget" F�Name 3
 /CODE.Framework-Application-ValidationErrorBrush3   -CODE.Framework.Wpf.Validation.InputValidation#   ErrorMessage$ � ToolTip�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     dBindingConvertersNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf  5      :x,http://schemas.microsoft.com/winfx/2006/xaml     5      1system&clr-namespace:System;assembly=mscorlib  5      RcontrolsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      OvalGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      %  '         &	 �    7  7  �� 5      "    6   .�5	   
   ��  � ��# �   6(   �� 5
   
    � ��$ 2q�6,   �� 5   
    � ��# �  6'   �� 5   
    � ��# �  6'   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � ��# �  6%   �� 5   
    �@  CalendarStyle# �  6*   �� 5   
    � ��$ Center=�65   �� 5   
    � ��# Z 6#   5      �� 5      "   68    5   
   ��  5      LitBrushConverter 62   5      .R�5   
   �� $��Bd��5   {   #��z��6   #��z��6E   $ 0q�6o   ��5      �� *BorderBrush+ �� *TemplatedParent+8   $		 1.5��._�5      � $
 	PART_Root��6   #��z��6&   #��z��6i   $ *,Auto��6�    5      ���� 5      DropDownButtonTemplate " ��6E   .R�5      � $
}�True��6   .+�5      �� $ 	highlight��6   #���   6(   $y�	Collapsed=�6h   6   �� 5       #��� 	 6(   $��18��6^   $��18��6m   $��1q�6{   $��Stretch=�6�   $��Stretch=�6�   5!       5"      P� 5#       �@J�IsMouseOver$
 True��6=   . �5$   "   �� $ 	highlight��6O    � y�$ Visible=�6?   6O   �� 5%   "   $ 	highlight��6H    �@J�Opacity$	 .33Q�6<   6H   5&      P� 5'       � ��$
 True��6;   . �5(   "   �� $ 	highlight��6O    � y�$ Visible=�6?   6O   �� 5)   "   $ 	highlight��6G    �@J�Opacity$ 50Q�6<   6G   5*      5,      5-      .+�5.      �� $ PART_Button��6   $��1��6.   $|�False��6>   $
��Left=�6P   $��0q�6k   $��Stretch=�6v   ��6�   �� $ PART_Button��$ OneWay=�$ ActualHeight���5/      �� 50      " ��6*   .R�51      �� $��0q�6%   
������ ._�52   "   � $��Right=�6'   #��� r�6C   .+�53   &   F� "����        �@KL @KL р��     	$��Center=�6A   $��2��6^   #��z��6r   $��Center=�6�   $	��4,0q�6�   54   #   55      56      58        59      $ PART_TextBox��6$   #|�z|�6:   $��Stretch=�6b   $��Center=�6�   $	��4,3q�5:   $   $��0q�61   #���  6=   #���  6h    6�   Z� .��6�   ��5;      �� 5<      "  6*   .R�5=      �� $ PART_ContentHost��6+   # z 6E   $��0q�6�   $��0q�6�   5>      .��5?   2   5@      � 5A      $
 PART_DisabledVisual��6   $��2��64   $ False��6H   $ 0Q�6a   $��0q�6m   $ *,Auto��6x   .+�5B      �� ���	#A5FFFFFF$ 1��61   $ 1��6=   �� 5C      $��1��6    ���	#A5FFFFFF$��Stretch=�6A   $��0q�6]   $ 1��6h   $ 1��6t   $��19��6�   � 5D      $ 
PART_Popup��6   $
 True��60   $��Bottom=�6J   $  False��6�   ! 6]   �� $ PART_TextBox��6�   5E      F� 5F      $" errorIndicator��6�   $��12��6   $��12��6#   $	��Top=�6.   $��Right=�6F   "����        � �     � �  � 	#��� 
 6}   $y�	Collapsed=�6�   #$ z# 6�   $��1��62  5G      5H       5I   
   P� 5J       � {�$ False��6+   . �5K      ��  6/   �� *
Foreground+ �� *TemplatedParent+8  $		 1.5�� � ��5L      P� 5M       �@J�IsKeyboardFocusWithin$
 True��67   . �5N      �� $ Bd��60   # �   6@    � ��5O      P� 5P       �@ IsValid$ False��6=   . �5Q      �� $ Bd��60   # � 
 6@    � ���� 5R      $ errorIndicator��6/    � y�$ Visible=�6K   5S      5U      5W      