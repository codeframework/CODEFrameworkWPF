   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5      iGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   TextBox.Static.Border  �� Color  TextBox.MouseOver.Border  TextBox.Focus.Border �� 
TargetType  Battleship-Control-TextBox �� Property  DefaultFont �� Value  FontSize-Normal-   'System.Windows.Input.KeyboardNavigation �� 
TargetType ��Name J� SnapsToDevicePixels ��Name ��Name	 J� Opacity+   %CODE.Framework.Wpf.Controls.TextBoxEx
   WatermarkText F�Name 3 /CODE.Framework-Application-ValidationErrorBrush3   -CODE.Framework.Wpf.Validation.InputValidation   ErrorMessage � ToolTip �� Triggers P� Property P� Value �� 
TargetName ]� 
Conditions �� Property �� Value �� BasedOn5   /CODE.Framework.Wpf.Controls.FilterHeaderTextBox1   +CODE.Framework.Wpf.Controls.ClearTextButton  Name j� Stretch L� Drawing � Brush � Geometry
 � Pen >� LineJoin >� Brush�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      RcontrolsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      V
validationGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      %�  &	        &	 #     &	 F     &	 i     7   7  7  '��     7  '  (    7  7  7  �� 5      $  	#FFABAdB3��64   �� 5      $  	#FF7EB4EA��67   �� 5      $  	#FF569DE5��63   �� 5	      " ��6   .�5
   
   ��  � ��# �  6'   �� 5   
    � ��# �  6%   �� 5   
    � ��$ 4q�6$   �� 5   
    � ��# � ��6'   �� 5   
    � ��8   6(   �� 5   
    � ��# � ��6'   �� 5   
    � ��$ 1q�6,   �� 5   
    �@  TabNavigation$
 None=�6=   �� 5   
    � ��$
 Left=�67   �� 5   
    �@�FocusVisualStyle 6-   Z� �� 5   
    �@J�	AllowDrop$
 true��6&   �� 5   
    �@��PanningMode$ VerticalFirst=�65   �� 5   
    �@��IsFlicksEnabled$ False��63   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      � .+�5      �� $ border��6!   #��z��61   #��z��6]   #��z��5   !   $
 True��6K   �� 5      $ PART_ContentHost��6'   $|�false��6A   $��Hidden=�6S   $��Hidden=�6z   �� 5      $ 	Watermark��6]   $��Center=�6$   $��Stretch=�6?   $	 .6Q�6p   #��z��6}   #��z
 5   $   $y�	Collapsed=�6^   $��CharacterEllipsis=�6u   F� 5       $ errorIndicator��6�   $��12��6   $��12��6+   $	��Top=�66   $��Right=�6N   "����        � �     � �  � 	#���  6�   $y�	Collapsed=�6�   # z 6�   5!       5"      P� 5#       � {�$ false��67   . �5$      �� $ border��68    �@J�Opacity$
 0.56Q�6L   5%      P� 5&       �@J�IsMouseOver$
 true��69   . �5'      �� $ border��6<   8   � ��6P   5(      P� 5)       �@J�IsKeyboardFocused$
 true��6?   . �5*      �� $ border��6<   8   � ��6P   5+      ]� 5,       5-      �� 5.   "    �@J�IsKeyboardFocusWithin$ False��6M   �� 5/   "    � ��$  ��6<   ./�51      �� $ 	Watermark��6K    � y�$ Visible=�6;   6K   52      P� 53       �@ IsValid$ False��6P   . �54      �� $ border��6<   # �  6P    � ���� 55      $ errorIndicator��6;    � y�$ Visible=�6W   56      58      5:      5;      �� 5=      " ��6   8   6!   �� 5?      "  6   8   .�5@   
   ��  � �� 5A      �� 5B      " ��6"   .R�5C      � .+�5D      �� $ border��6!   #��z��61   #��z��6]   #��z��5E   !   $
 True��6K   �� 5F      $ PART_ContentHost��6'   $|�false��6A   $��Hidden=�6S   $��Hidden=�6z   �� 5G      $ 	Watermark��6]   $��Center=�6$   $��Stretch=�6?   $	 .6Q�6p   #��z��6}   #��z
 5H   $   $y�	Collapsed=�6^   $��CharacterEllipsis=�6u   F� 5I      $ errorIndicator��6�   $��12��6   $��12��6+   $	��Top=�66   $��Right=�6N   "����        � �     � �  � 	#���  6�   $y�	Collapsed=�6�   # z 6�     5J      $ clearButton��6u   $��Center=�63   $��Right=�6N   $��2q�6j   ��5K      �� 5L   "   "  62   .R�5M   &   � .+�5N   *   �� $��12��64   $��12��6@   $��Center=�6K   $��Right=�6f   ��5O   .   L� 5P   2   $ Uniform=�6?    5Q   6   I� 5R   :   ��5T   B   �  �	#FFA8A8A8� ����[     Ӯ�      � R�(  � ��[ � � �� ��  � ��[  � �R�(  � �n<�UU���� �n<�UU����[ ��n<�UU��R�( R�( ��[ 6d   � 5U   B    ����- >�- �@T� �5�  5V   F   >� 5W   J   $ Round=�6N    �	#FFFFFFFF6_   5Y   C   � 5Z   B    ��@T� >�- ���- �5�  5[   F   >� 5\   J   $ Round=�6N    �	#FFFFFFFF6_   5^   C   5`   ;   5b   3   5d   +   5e   '   5f   #   5h      5i       5j      P� 5k       � ��$  ��62   . �5l      �� $ 	Watermark��6K    � y�$ Visible=�6;   6K   �� 5m      $ clearButton��6M    � y�$ 	Collapsed=�6;   6M   5n      P� 5o       � {�$ false��67   . �5p      �� $ border��68    �@J�Opacity$
 0.56Q�6L   5q      P� 5r       �@J�IsMouseOver$
 true��69   . �5s      �� $ border��6<   8   � ��6P   5t      P� 5u       �@J�IsKeyboardFocused$
 true��6?   . �5v      �� $ border��6<   8   � ��6P   5w      P� 5x       �@ IsValid$ False��6P   . �5y      �� $ border��6<   # �  6P    � ���� 5z      $ errorIndicator��6;    � y�$ Visible=�6W   5{      5}      5      5�      5�      