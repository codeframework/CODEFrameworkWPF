   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullwNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf$CODE.Framework.Wpf.BindingConverters  5      iGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   Metro-Control-ComboBox  �� 
TargetType �� Property �� Value * &CODE.Framework-Application-ThemeBrush1 / +CODE.Framework-Application-ForegroundBrush2 / +CODE.Framework-Application-BackgroundBrush2  FontSize-Normal  DefaultFont �� 
TargetType � 	Resources<    6CODE.Framework.Wpf.BindingConverters.LitBrushConverter  KeyD   >CODE.Framework.Wpf.BindingConverters.TransparentBrushConverter ��Name �� RelativeSource  LitBrushConverter �� 	Converter �� ConverterParameter  TransparentBrushConverter	 �Name
 J� SnapsToDevicePixels � ColumnDefinitions �Name � AllowsTransparency �� MaxDropDownHeight �� ElementName ��Name �� ClearTypeHint ��Name ��Name-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation �� 	ClickMode d� 	IsChecked �� Mode ��Name �� SelectionBoxItem �� SelectionBoxItemTemplate# �� SelectionBoxItemStringFormat �� ContentStringFormat J� IsHitTestVisible ��Name �� 
IsReadOnly  � FocusVisualStyle! F�Name 3	 /CODE.Framework-Application-ValidationErrorBrush3   -CODE.Framework.Wpf.Validation.InputValidation"   ErrorMessage# � ToolTip$ �� Triggers% P� Property& P� Value' �� 
TargetName( P� 
SourceName) �� Triggers* �� BasedOn+ �� Padding�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      dBindingConvertersNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf  5      OvalGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      %P  &	        7  7  '��     7   '�� @    7  7  �� 5      "  ��6+   .�5   
   ��  � ��$	 8,0q�6$   �� 5   
    � ��# �  6(   �� 5	   
    � ��$ 2q�6,   �� 5
   
    � ��# �  6'   �� 5   
    � ��# �  6'   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � ��$
 Auto=�6G   �� 5   
    � ��$
 Auto=�6E   �� 5   
    � ��$	 4,3q�6$   �� 5   
    � ��$
 true��6:   �� 5   
    �@��PanningMode$
 Both=�65   �� 5   
    �@��IsFlicksEnabled$ False��63   �� 5   
    � �� 5      �� 5      " ��6"    5      ��   5      LitBrushConverter 6>     5      TransparentBrushConverter 6F   5      .R�5      �� $ 
MainBorder��6   #��z��5      ��5      �� *BorderBrush+ �� *TemplatedParent+8   $	 .66����5      �� *
Background+ �� *TemplatedParent+8  $	 .90��._�5      � $	 MainGrid��6   $

 true��61    5       �� 5!   "   $��* �63   �� 5"   "   #��� r�63   $��0 �6�   .+�5$      � $ 
PART_Popup��6$   $
 true��68   $��2��6R   $��0,1,0,0q�5&   $   #��z 5'   $   #��� .�5(   $   $��Bottom=�5)   $   ��5%   $   �� *IsDropDownOpen+ �� *TemplatedParent+��5'   T   �� *ActualWidth+$ 
MainBorder��.��5*   "   �� $ DropDownBorder��6)   #��z��5+   )   #��z��6U   #��z��5,   )   ._�5-   &   �� $ DropDownScrollViewer��63   .��5.   *   � $ Enabled=�6/   .+�5/   .   �� $
��Left=�65   $��0��6P   $	��Top=�6[   $��0��6s   .+�50   2   �� $ 
OpaqueRect��6<   ��6P   �� *
Background+$ DropDownBorder����6�   �� *ActualHeight+$ DropDownBorder����6�   �� *ActualWidth+$ DropDownBorder��51   /   �� 52   .   $ ItemsPresenter��6=   $ 	Contained=�6U   #
 z
 6�   53   +   54   '   55   #   56      d� 57      #��z��6+   #��z��6W   $��2��6�   $ Press=�59   +   $��False��6=   $|�False��6O    58   +   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+��5;   "   �� 5<   &   " d�66   .R�5=   *   �� $��0q�61   
������ ._�5>   .   � $��Right=�63   #��� r�6O   .+�5?   2   F� "����        �@KL @KL р��     	$��Center=�6M   $��2��6j   #��z��6~   $��Center=�6�   $	��4,0q�6�   5@   /   5A   +   5B   '   5D      �� 5E      $ MainContentPresenter��5N   /   #��z 5E   /   #��z 5F   /   #��z��5G   /   # z 5H   /   #��z��5I   /   #��z��5J   /   $ false��5K   /   #��z��5L   /   #
 z
 5M   /   5N   /   �� 5P      $ PART_EditableTextBox��6&   #��z��6D   #��z��5R   &   $y�	Collapsed=�5T   &   #��z��5U   &    5Q   &   �� *
IsReadOnly+ �� *TemplatedParent+  5S   &   Z� .��5U   l   ��5V   "   �� 5W   &   " ��66   .R�5X   *   �� $ PART_ContentHost��67   
������ $|�false��6j   $��Hidden=�5Y   7   $��Hidden=�6^   5Z   '   .��5[   4   5\      F� 5]      $! errorIndicator��6�   $��12��6#   $��12��6/   $	��Top=�6:   $��Right=�6R   "����        � �     � �  � 	#��� 	 6�   $y�	Collapsed=�6�   ## z" 6  $��1��6>  5^      5_      $ 5`      P� 5a      % �@��HasItems$& false��66   . �5b      �� $' DropDownBorder��67    � ��$ 95��6S   5c      P� 5d      % � {�$& false��67   . �5e      �� # � ��6;    � ���� 5f       � �� �	#FFF4F4F46;   5g      P� 5h      % �@��
IsGrouping$
& true��68   . �5i      ��  � ��$ false��6N   5j      P� 5k      $( DropDownScrollViewer��6K   % � ��$& false��6m   . �5l      �� $' 
OpaqueRect��6;    6S   �� *VerticalOffset+$ DropDownScrollViewer�� �@��Top�� 5m      $' 
OpaqueRect��6<    6T   �� *HorizontalOffset+$ DropDownScrollViewer�� �@��Left5n      P� 5o      % �@��
IsEditable$
& True��68   . �5p      �� $' PART_EditableTextBox��6K    � y�$ Visible=�6;   6K   �� 5q      $' MainContentPresenter��6M    � y�$ 	Collapsed=�6;   6M   5r      P� 5s      % �@ IsValid$& False��6I   . �5t      �� $' 
MainBorder��6<   # � 	 6T    � ���� 5u      $' errorIndicator��6;    � y�$ Visible=�6W   5v      5x      5z      ) 5{   
   P� 5|      % �@��
IsEditable$
& true��6,   . �5}      ��  � ��$ false��6.   �� 5~       � ��$ 3q�6,   5      5�      �� 5�      "  ��6   8*   6"   �� 5�      "  ��6   .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��# �  6'   �� 5�   
    � ��# �  6%   �� 5�   
    � ��# �  6'   �� 5�   
    � ��$ 25��6#   �� 5�   
    � ��$ Center=�65   �� 5�   
    � �� 5�      �� 5�      " ��6"    5�      ��   5�      LitBrushConverter 6>     5�      TransparentBrushConverter 6F   5�      .R�5�      �� $ Bd��6   #��z��5�      #+ z��5�      $

 True��6A   ��5�      �� *BorderBrush+ �� *TemplatedParent+8   $	 .66����5�      �� *
Background+ �� *TemplatedParent+8  $	 .90��._�5�      �� #��z��6+   #��z��5�   +   #
 z
 5�   +   5�      $ 5�      P� 5�      % �@��IsHighlighted$
& True��6;   . �5�      �� $' Bd��6;   # � ��6K    � ���� 5�      # � ��6;    � ��5�      P� 5�      % � {�$& False��67   . �5�      �� # � ��6;    � ��5�      5�      5�      5�      5�      