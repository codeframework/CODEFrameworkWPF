   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089&    System.Windows.Controls.Calendar  �� 
TargetType   Metro-Control-Calendar �� Property �� Value * &CODE.Framework-Application-ThemeBrush1 / +CODE.Framework-Application-BackgroundBrush2  FontSize-Normal  DefaultFont # Metro-Control-CalendarItemStyle ( $Metro-Control-CalendarDayButtonStyle �� 
TargetType ��Name5  /System.Windows.Controls.Primitives.CalendarItem  Name    CalendarItemStyle � 	Resources �Name(   "CODE.Framework.Wpf.Controls.GridEx	   ColumnWidths
   
RowHeights � 	Resources  Key � Cursor'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration	 �� To �� TargetProperty �� 
TargetName	 W� To J� Opacity �� Stretch F�Name ��Name ��Name  PreviousButtonTemplate 	 FontSize-Largest 
 HeaderButtonTemplate  NextButtonTemplate �� Triggers �� Value �� Binding �� RelativeSource �� AncestorLevel �� AncestorType  �� 
TargetName:  4System.Windows.Controls.Primitives.CalendarDayButton!   Transitions%  System.Windows.VisualTransition"   GeneratedDuration# R� KeyTime$ R� Value  System.Windows.Visibility / +CODE.Framework-Application-ForegroundColor1% �� Color& ��Name / +CODE.Framework-Application-ForegroundBrush2 / +CODE.Framework-Application-ForegroundBrush1' J� RenderTransformOrigin( J� IsHitTestVisible) �� BasedOn�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      RcontrolsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      %�!  &	        &	     7  7 
 7  &	 �    '   N!    7   �� 5      "    6   .�5   
   ��  � ��$ 2q�6,   �� 5   
    � ��# �  6(   �� 5   
    � ��# �  6'   �� 5	   
    � ��# �  6%   �� 5
   
    � ��# �  6'   �� 5   
    �@  CalendarItemStyle# �  6.   �� 5   
    �@  CalendarDayButtonStyle# �  63   �� 5   
    � �� 5      �� 5      "   6"   .R�5      �� $ 	PART_Root��6!   $��Center=�64   .+�5        $ PART_CalendarItem��6'   #��z 6B   5      5      5      5      �� 5      "   64   .�5   
   ��  � ��$ 0q�6#   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � �� 5      �� 5      "  6"    5      ���� 5       (��       6'   **(CalendarItem.DayTitleTemplateResourceKey+).R�5!      �� $��0,0,0,1q�6%   ���	#32000000._�5"   "   �� ���	#FF333333#���  6C   #���  6p   $��Center=�5#   ,   $��0,10,0,2q�6I   $��Center=�6l   ��6[   �� 6l   5$      5%      5&      .R�5'      �� $��2q�6   #���  61   ._�5(      � $ 	PART_Root��6   $	 Auto,Auto,Auto��62   $
 Auto,*��6`   #���  6�    5)      ���� 5*   "   PreviousButtonTemplate " ��6Q   .R�5+   &   � $
 Hand��6+    5,   *     5-   .   CommonStates��. 5.   2     
Normal��6>     5/   2   	MouseOver��. 50   6   �� .��51   :   �� $ 0D�6I    	#FF73A9D86V   $* $(Shape.Fill).(SolidColorBrush.Color)�6e   $
 path��6�   52   7   53   3     54   2   Disabled��. 55   6   �� .��56   :   W� $ 0D�6J    .56W   $" (Shape.Fill).(Brush.Opacity)�6_   $
 path��6�   57   7   58   3   59   /   .+�5;   *   �� ���	#11E5EBF1$ 1Q�6E   $
 Fill=�6Q   �� 5<   *   ���	#1A000000$��
0,10,-5,10q�6E   � 5=   *   .+�5>   .   F� $
 path��63   "�����5���Ѱ�5h�W��<�h�	���	#FF333333$
��Left=�6�   $��10��6�   $��12,0,0,0q�6�   $
 Fill=�6�   $��Center=�6�   $��6��6�   5?   +   5@   '   5A   #   �� 5B   "   NextButtonTemplate " ��6M   .R�5C   &   � $
 Hand��6+    5D   *     5E   .   CommonStates��. 5F   2     
Normal��6>     5G   2   	MouseOver��. 5H   6   �� .��5I   :   �� $ 0D�6I    	#FF73A9D86V   $* $(Shape.Fill).(SolidColorBrush.Color)�6e   $
 path��6�   5J   7   5K   3     5L   2   Disabled��. 5M   6   �� .��5N   :   W� $ 0D�6J    .56W   $" (Shape.Fill).(Brush.Opacity)�6_   $
 path��6�   5O   7   5P   3   5Q   /   .+�5S   *   �� ���	#11E5EBF1$ 1Q�6E   $
 Fill=�6Q   �� 5T   *   ���	#1A000000$��
-5,10,0,10q�6E   � 5U   *   .+�5V   .   F� $
 path��63   "����xT��!��xT���S�h4 	���	#FF333333$��Right=�6�   $��10��6�   $��0,0,12,0q�6�   $
 Fill=�6�   $��Center=�6�   $��6��6�   5W   +   5X   '   5Y   #   �� 5Z   "   HeaderButtonTemplate " ��6O   .R�5[   &   � $
 Hand��6+    5\   *     5]   .   CommonStates��. 5^   2     
Normal��6>     5_   2   	MouseOver��. 5`   6   �� .��5a   :   �� $ 0D�6I    	#FF73A9D86V   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6e   $ buttonContent��6�   5b   7   5c   3     5d   2   Disabled��. 5e   6   �� .��5f   :   W� $ 0D�6J    .56W   $ Opacity�6_   $ buttonContent��6�   5g   7   5h   3   5i   /   .+�5k   *   �� $ buttonContent��6;   #��z��6R   #��z��6�   #��z��5l   ;   $��1,4,1,4q�6~   #��z��5m   ;   5n   '   5o   #   5p      .+�5q      �� $ PART_PreviousButton��6%   $|�False��6B   $
��Left=�6T   8��  $��28��6�   �� 5r      $ PART_HeaderButton��6%   $��1��6@   $��Normal"�6P   $|�False��6d   #��� 	 6v   $��Center=�6�   8�� $��Center=�6�   $
��0,10q�6  �� 5s      $ PART_NextButton��6%   $��2��6>   $|�False��6N   $��Right=�6`   8�� $��28��6�   � 5t      $ PART_MonthView��6#   $��3��6;   $��Center=�6O   $��1��6l   $y�Visible=�6y   $��20q�6�   $(	 "Auto,Auto,Auto,Auto,Auto,Auto,Auto��5u   #   $(
 "Auto,Auto,Auto,Auto,Auto,Auto,Auto��6e   5v      � 5w      $ PART_YearView��6#   $��3��6:   $��Center=�6N   $��26,17,27,26q�6k   $��1��6�   $y�Hidden=�6�   $	 Auto,Auto,Auto,Auto��5x   #   $
 Auto,Auto,Auto��6V   5y      5z       5{      �� 5|      $
 Year��6�    6&   �� *DisplayMode+ �� *FindAncestor+$ 1��"   .a�5}      �� $  PART_MonthView��6;    � y�$ Hidden=�6W   �� 5~      $  PART_YearView��6;    � y�$ Visible=�6V   5      �� 5�      $ Decade��6�    6&   �� *DisplayMode+ �� *FindAncestor+$ 1��"   .a�5�      �� $  PART_MonthView��6;    � y�$ Hidden=�6W   �� 5�      $  PART_YearView��6;    � y�$ Visible=�6V   5�      5�      5�      5�      �� 5�      "   69   .�5�   
   ��  � ��$ 5��6%   �� 5�   
    � ��$ 5��6&   �� 5�   
    � ��# �  6%   �� 5�   
    � ��# �  6'   �� 5�   
    � ��$ Right=�67   �� 5�   
    � ��$ Center=�65   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �  5�        5�      CommonStates��! 5�   "     5�   &   $" 0:0:0.1D�67   . 5�   "     
Normal��6.     5�   "   	MouseOver��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ HighlightBackground��6r   5�   '   5�   #     5�   "   Pressed��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ HighlightBackground��6r   5�   '   5�   #     5�   "   Disabled��. 5�   &   �� .��5�   *   W� $ 0D�6:    06G   $ Opacity�6N   $ HighlightBackground��6r   W� 5�   *   $ 0D�6:    .356G   $ Opacity�6P   $ 
NormalText��6t   5�   '   5�   #   5�        5�      SelectionStates��! 5�   "     5�   &   $" 0D�67   . 5�   "     
Unselected��6.     5�   "   Selected��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ SelectedBackground��6r   5�   '   5�   #   5�        5�      CalendarButtonFocusStates��! 5�   "     5�   &   $" 0D�67   . 5�   "     CalendarButtonFocused��. 5�   &   �� .��5�   *   T� $ 0D�6H   $ 
Visibility�6U   $ DayButtonFocusVisual��6|   ..�5�   .   i� $# 0��6E   $ 5�   2    5�   6   Visible=�6J   5�   /   5�   +   5�   '   5�   #     5�   "   CalendarButtonUnfocused��. 5�   &   �� .��5�   *   T� $ 0D�6H   $ 
Visibility�6U   $ DayButtonFocusVisual��6|   ..�5�   .   i� $# 0��6E   $ 5�   2    5�   6   	Collapsed=�6L   5�   /   5�   +   5�   '   5�   #   5�        5�      ActiveStates��! 5�   "     5�   &   $" 0D�67   . 5�   "     
Active��6.     5�   "   Inactive��. 5�   &   �� .��5�   *   �� $ 0D�69   # �  6F   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6�   $ 
NormalText��6�   5�   '   5�   #   5�        5�      	DayStates��! 5�   "     5�   &   $" 0D�67   . 5�   "     
RegularDay��6.     5�   "   	Today��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ TodayBackground��6r   T� 5�   *   $ 
NormalText��6H   $ (TextElement.Foreground)�6k   $ 0D�6�   ..�5�   .   i� $# 0��6E   $ 5�   2   �� 5�   6   $% White��6F   5�   /   5�   +   5�   '   5�   #   5�        5�      BlackoutDayStates��! 5�   "     5�   &   $" 0D�67   . 5�   "     	NormalDay��6.     5�   "   BlackoutDay��. 5�   &   �� .��5�   *   W� $ 0D�6:    .26G   $ Opacity�6O   $ Blackout��6s   5�   '   5�   #   5�      .+�5�      �� $��0,0,0,1q�6!   ���	#320000006;   �� 5�      $& TodayBackground��6$   ���	#A8000000$ 0Q�6N   ��6Z   Z� �� 5�      $& SelectedBackground��6$   ���	#50000000$ 0Q�6Q   ��6]   Z� �� 5�      $& HighlightBackground��6$   ���	#27000000$ 0Q�6R   ��6^   Z� �� 5�      $ 
NormalText��6+   #���  6?   $��11,10q�5   +   #��z��5  +   #��z��5  +   F� 5     $ Blackout��6   }�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	#���  65  $��Stretch=�6z  $��3q�6�  $ 0Q�6�  $' 0.5,0.5&�6�  $
 Fill=�6�  $��Stretch=�6�  �� 5     $& DayButtonFocusVisual��6$   $( false��6B   #���  6[   $y�	Collapsed=�6�   5     5     5     5	     �� 5     "    6   8)   6"   5     