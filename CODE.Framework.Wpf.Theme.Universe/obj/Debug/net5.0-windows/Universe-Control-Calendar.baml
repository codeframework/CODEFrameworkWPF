   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089&    System.Windows.Controls.Calendar  �� 
TargetType   Universe-Control-Calendar �� Property �� Value / +CODE.Framework-Application-ForegroundColor1 �� Color �� Opacity / +CODE.Framework-Application-ForegroundBrush1 / +CODE.Framework-Application-BackgroundColor1  FontSize-Normal  DefaultFont & "Universe-Control-CalendarItemStyle + 'Universe-Control-CalendarDayButtonStyle �� 
TargetType ��Name5  /System.Windows.Controls.Primitives.CalendarItem  Name    CalendarItemStyle	 � 	Resources
 �Name(   "CODE.Framework.Wpf.Controls.GridEx   ColumnWidths   
RowHeights � 	Resources  Key � Cursor'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration	 �� To �� TargetProperty �� 
TargetName	 W� To J� Opacity �� Stretch F�Name ��Name ��Name 	 PreviousButtonTemplate 
 FontSize-Largest  HeaderButtonTemplate  NextButtonTemplate �� Triggers �� Value �� Binding �� RelativeSource  �� AncestorLevel! �� AncestorType" �� 
TargetName:  4System.Windows.Controls.Primitives.CalendarDayButton#   Transitions%  System.Windows.VisualTransition$   GeneratedDuration% R� KeyTime& R� Value  System.Windows.Visibility' ��Name / +CODE.Framework-Application-ForegroundBrush2( J� RenderTransformOrigin) J� IsHitTestVisible* �� BasedOn�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      RcontrolsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      %�#  &	        &	 |    7 	 7  7  &	 �    '   7#    7   �� 5      "    6   .�5   
   ��  � �� 5      �� 5      # �  6"   $ .5Q�6h   5
      �� 5   
    � ��$ 2q�6,   �� 5   
    � ��# �  6'   �� 5   
    � �� 5      �� 5      # �  6"   5      �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    �@  CalendarItemStyle# �  6.   �� 5   
    �@  CalendarDayButtonStyle# �  63   �� 5   
    � �� 5      �� 5      "   6"   .R�5      �� $ 	PART_Root��6!   $��Center=�64   .+�5        $ PART_CalendarItem��6'   #��z 6B   5      5      5      5      �� 5!      "   67   .�5"   
   ��  � ��$ 0q�6#   �� 5#   
    � ��# �  6%   �� 5$   
    � ��# �  6'   �� 5%   
    � ��# �  6'   �� 5&   
    � �� 5'      �� 5(      # �  6"   5*      �� 5+   
    � �� 5,      �� 5-      "  6"   	 5.      ���� 5/      (��       6'   **(CalendarItem.DayTitleTemplateResourceKey+).R�50      �� $��0,0,0,1q�6%   ���	#32000000._�51   "   �� #���  6,   #���  6w   #���  6�   $��Center=�52   ,   $��0,10,0,2q�6I   $��Center=�6l   ��6[   �� 6l   53      54      55      .R�56      �� $��2q�6   #��z��61   ._�57      � $
 	PART_Root��6   $ Auto,Auto,Auto��62   $ Auto,*��6`   #��z��6�    58      ���� 59   "   PreviousButtonTemplate " ��6Q   .R�5:   &   � $
 Hand��6+    5;   *     5<   .   CommonStates��. 5=   2     
Normal��6>     5>   2   	MouseOver��. 5?   6   �� .��5@   :   �� $ 0D�6I    	#FF73A9D86V   $* $(Shape.Fill).(SolidColorBrush.Color)�6e   $
 path��6�   5A   7   5B   3     5C   2   Disabled��. 5D   6   �� .��5E   :   W� $ 0D�6J    .56W   $" (Shape.Fill).(Brush.Opacity)�6_   $
 path��6�   5F   7   5G   3   5H   /   .+�5J   *   �� ���	#11E5EBF1$ 1Q�6E   $
 Fill=�6Q   �� 5K   *   ���	#1A000000$��
0,10,-5,10q�6E   � 5L   *   .+�5M   .   F� $
 path��63   "�����5���Ѱ�5h�W��<�h�	���	#FF333333$
��Left=�6�   $��10��6�   $��12,0,0,0q�6�   $
 Fill=�6�   $��Center=�6�   $��6��6�   5N   +   5O   '   5P   #   �� 5Q   "   NextButtonTemplate " ��6M   .R�5R   &   � $
 Hand��6+    5S   *     5T   .   CommonStates��. 5U   2     
Normal��6>     5V   2   	MouseOver��. 5W   6   �� .��5X   :   �� $ 0D�6I    	#FF73A9D86V   $* $(Shape.Fill).(SolidColorBrush.Color)�6e   $
 path��6�   5Y   7   5Z   3     5[   2   Disabled��. 5\   6   �� .��5]   :   W� $ 0D�6J    .56W   $" (Shape.Fill).(Brush.Opacity)�6_   $
 path��6�   5^   7   5_   3   5`   /   .+�5b   *   �� ���	#11E5EBF1$ 1Q�6E   $
 Fill=�6Q   �� 5c   *   ���	#1A000000$��
-5,10,0,10q�6E   � 5d   *   .+�5e   .   F� $
 path��63   "����xT��!��xT���S�h4 	���	#FF333333$��Right=�6�   $��10��6�   $��0,0,12,0q�6�   $
 Fill=�6�   $��Center=�6�   $��6��6�   5f   +   5g   '   5h   #   �� 5i   "   HeaderButtonTemplate " ��6O   .R�5j   &   � $
 Hand��6+    5k   *     5l   .   CommonStates��. 5m   2     
Normal��6>     5n   2   	MouseOver��. 5o   6   �� .��5p   :   �� $ 0D�6I    	#FF73A9D86V   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6e   $ buttonContent��6�   5q   7   5r   3     5s   2   Disabled��. 5t   6   �� .��5u   :   W� $ 0D�6J    .56W   $ Opacity�6_   $ buttonContent��6�   5v   7   5w   3   5x   /   .+�5z   *   �� $ buttonContent��6;   #��z��6R   #��z��6�   #��z��5{   ;   $��1,4,1,4q�6~   #��z��5|   ;   5}   '   5~   #   5      .+�5�      �� $ PART_PreviousButton��6%   $|�False��6B   $
��Left=�6T   8��  $��28��6�   �� 5�      $ PART_HeaderButton��6%   $��1��6@   $��Normal"�6P   $|�False��6d   #��� 
 6v   $��Center=�6�   8�� $��Center=�6�   $
��0,10q�6  �� 5�      $ PART_NextButton��6%   $��2��6>   $|�False��6N   $��Right=�6`   8�� $��28��6�   � 5�      $
 PART_MonthView��6#   $��3��6;   $��Center=�6O   $��1��6l   $y�Visible=�6y   $��20q�6�   $( "Auto,Auto,Auto,Auto,Auto,Auto,Auto��5�   #   $( "Auto,Auto,Auto,Auto,Auto,Auto,Auto��6e   5�      � 5�      $
 PART_YearView��6#   $��3��6:   $��Center=�6N   $��26,17,27,26q�6k   $��1��6�   $y�Hidden=�6�   $ Auto,Auto,Auto,Auto��5�   #   $ Auto,Auto,Auto��6V   5�      5�       5�      �� 5�      $
 Year��6�    6&   �� *DisplayMode+ �� *FindAncestor+$  1��"!   .a�5�      �� $" PART_MonthView��6;    � y�$ Hidden=�6W   �� 5�      $" PART_YearView��6;    � y�$ Visible=�6V   5�      �� 5�      $ Decade��6�    6&   �� *DisplayMode+ �� *FindAncestor+$  1��"!   .a�5�      �� $" PART_MonthView��6;    � y�$ Hidden=�6W   �� 5�      $" PART_YearView��6;    � y�$ Visible=�6V   5�      5�      5�      5�      �� 5�      "   6<   .�5�   
   ��  � ��$ 5��6%   �� 5�   
    � ��$ 5��6&   �� 5�   
    � ��# �  6%   �� 5�   
    � ��# �  6'   �� 5�   
    � ��$ Right=�67   �� 5�   
    � ��$ Center=�65   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �  5�        5�      CommonStates��# 5�   "     5�   &   $$ 0:0:0.1D�67   . 5�   "     
Normal��6.     5�   "   	MouseOver��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ HighlightBackground��6r   5�   '   5�   #     5�   "   Pressed��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ HighlightBackground��6r   5�   '   5�   #     5�   "   Disabled��. 5�   &   �� .��5�   *   W� $ 0D�6:    06G   $ Opacity�6N   $ HighlightBackground��6r   W� 5�   *   $ 0D�6:    .356G   $ Opacity�6P   $ 
NormalText��6t   5�   '   5�   #   5�        5�      SelectionStates��# 5�   "     5�   &   $$ 0D�67   . 5�   "     
Unselected��6.     5�   "   Selected��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ SelectedBackground��6r   5�   '   5�   #   5�        5�      CalendarButtonFocusStates��# 5�   "     5�   &   $$ 0D�67   . 5�   "     CalendarButtonFocused��. 5�   &   �� .��5�   *   T� $ 0D�6H   $ 
Visibility�6U   $ DayButtonFocusVisual��6|   ..�5�   .   i� $% 0��6E   & 5�   2    5�   6   Visible=�6J   5�   /   5�   +   5�   '   5�   #     5�   "   CalendarButtonUnfocused��. 5�   &   �� .��5�   *   T� $ 0D�6H   $ 
Visibility�6U   $ DayButtonFocusVisual��6|   ..�5�   .   i� $% 0��6E   & 5�   2    5�   6   	Collapsed=�6L   5�   /   5�   +   5�   '   5�   #   5�        5�      ActiveStates��# 5�   "     5�   &   $$ 0D�67   . 5�   "     
Active��6.     5�   "   Inactive��. 5�   &   �� .��5�   *   �� $ 0D�69   # �  6F   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6�   $ 
NormalText��6�   5�   '   5�   #   5�        5�      	DayStates��# 5�   "     5�   &   $$ 0D�67   . 5�   "     
RegularDay��6.     5�   "   	Today��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ TodayBackground��6r   T� 5�   *   $ 
NormalText��6H   $ 
Visibility�6k   $ 0D�6�   ..�5�   .   i� $% 0��6E   & 5�   2    5�   6   	Collapsed=�6L   5�   /   5�   +   T� 5�   *   $ 	TodayText��6H   $ 
Visibility�6j   $ 0D�6�   ..�5�   .   i� $% 0��6E   & 5�   2    5�   6   Visible=�6J   5   /   5  +   5  '   5  #   5       5     BlackoutDayStates��# 5  "     5  &   $$ 0D�67   . 5	  "     	NormalDay��6.     5
  "   BlackoutDay��. 5  &   �� .��5  *   W� $ 0D�6:    .26G   $ Opacity�6O   $ Blackout��6s   5  '   5  #   5     .+�5     �� $��0,0,0,1q�6!   ���	#320000006;   �� 5     $' TodayBackground��6$   ���	#A8000000$ 0Q�6N   ��6Z   Z� �� 5     $' SelectedBackground��6$   ���	#50000000$ 0Q�6Q   ��6]   Z� �� 5     $' HighlightBackground��6$   ���	#27000000$ 0Q�6R   ��6^   Z� �� 5     $ 
NormalText��6+   #���  6?   $��11,10q�5  +   #��z��5  +   #��z��5  +   �� 5     $ 	TodayText��6+   
�������$��11,10q�5  +   $y�	Collapsed=�6:   #��z��5  +   #��z��5  +   F� 5     $ Blackout��6   }�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	#���  65  $��Stretch=�6z  $��3q�6�  $ 0Q�6�  $( 0.5,0.5&�6�  $
 Fill=�6�  $��Stretch=�6�  �� 5     $' DayButtonFocusVisual��6$   $) false��6B   #���  6[   $y�	Collapsed=�6�   5     5      5"     5#     �� 5%     "    6   8*   6"   5'     