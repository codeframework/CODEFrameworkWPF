   M S B A M L   `   `   `  ����]  YCODE.Framework.Wpf.Theme.Workplace, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:CODE.Framework.Wpf.Theme.Workplace.Classes*CODE.Framework.Wpf.Theme.Workplace.Classes  5      M ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls 5      iGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation 5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089&    System.Windows.Controls.Calendar  �� 
TargetType   Workplace-Control-Calendar �� Property �� Value / +CODE.Framework-Application-ForegroundBrush1 / +CODE.Framework-Application-BackgroundBrush1  FontSize-Normal  DefaultFont ' #Workplace-Control-CalendarItemStyle , (Workplace-Control-CalendarDayButtonStyle �� 
TargetType ��Name5  /System.Windows.Controls.Primitives.CalendarItem  Name    CalendarItemStyle * &Workplace-Calendar-ItemControlTemplate � 	ResourcesE   ?CODE.Framework.Wpf.Theme.Workplace.Classes.ToUpperTextConverter  Key 	 ToUpperTextConverter �� 	Converter	 �Name(  "CODE.Framework.Wpf.Controls.GridEx
   ColumnWidths   
RowHeights � 	Resources � Cursor'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration	 �� To �� TargetProperty �� 
TargetName	 W� To J� Opacity �� Stretch F�Name ��Name /
 +CODE.Framework-Application-BackgroundBrush2 ��Name  PreviousButtonTemplate  HeaderButtonTemplate  NextButtonTemplate 3 /CODE.Framework-Application-ValidationErrorBrush3  -CODE.Framework.Wpf.Validation.InputValidation   ErrorMessage � ToolTip:  4System.Windows.Controls.Primitives.CalendarDayButton   Transitions%	  System.Windows.VisualTransition 	  GeneratedDuration / +CODE.Framework-Application-ForegroundColor1 ��Name * &CODE.Framework-Application-ThemeBrush1 . *CODE.Framework-Application-HighlightBrush1 . *CODE.Framework-Application-HighlightBrush2  J� RenderTransformOrigin! J� IsHitTestVisible" �� 
ResourceId# �� TypeInTargetAssembly$ �� Path% �� Color& �� CornerRadius' �� RadiusY( �� RadiusX) �� Triggers* P� Property+ P� Value, �� 
TargetName- �� Value. �� Binding/ �� RelativeSource0 �� AncestorLevel1 �� AncestorType2 �� BasedOn�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      Dclasses8clr-namespace:CODE.Framework.Wpf.Theme.Workplace.Classes  5      RcontrolsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      OvalGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      %")  &	        &	 D    7 	 7  7  7  &	     &	 �    7 	 '   �(    7   �� 5      "    6   .�5   
   ��  � ��$ 1q�6,   �� 5	   
    � ��# �  6(   �� 5
   
    � ��# �  6'   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    �@  CalendarItemStyle# �  6.   �� 5   
    �@  CalendarDayButtonStyle# �  63   �� 5   
    � �� 5      �� 5      "   6"   .R�5      �� $ 	PART_Root��6!   $��Center=�64   .+�5        $ PART_CalendarItem��6'   #��z��6B   #��z��5   '   #��z��5   '   #��z 5   '   #���  5   '   5      5      5      5      �� 5      "   68   .�5   
   ��  � ��$ 0q�6#   �� 5    
    � ��# �  6%   �� 5!   
    � ��# �  6'   �� 5"   
    � �� 5#      �� 5$      "  6"    5%      ��  5&      ToUpperTextConverter 67   �� 5'      (��       6'   **(CalendarItem.DayTitleTemplateResourceKey+).R�5(      �� ���	#FF333333#���  6?   #���  6l   $��Center=�6�   $��0,10,0,6q�6�   $��Center=�5)   i   ��6(   �� 8   6i   5*      5+      .R�5,      � $	 	PART_Root��6   $
 Auto,Auto,Auto��6.   $ Auto,*��6\    5-      ���� 5.      PreviousButtonTemplate " ��6M   .R�5/   "   � $
 Hand��6'    50   &     51   *   CommonStates��. 52   .     
Normal��6:     53   .   	MouseOver��. 54   2   �� .��55   6   �� $ 0D�6E    	#FF73A9D86R   $* $(Shape.Fill).(SolidColorBrush.Color)�6a   $
 path��6�   56   3   57   /     58   .   Disabled��. 59   2   �� .��5:   6   W� $ 0D�6F    .56S   $" (Shape.Fill).(Brush.Opacity)�6[   $
 path��6�   5;   3   5<   /   5=   +   .+�5?   &   �� ���	#11E5EBF1$ 1Q�6A   $
 Fill=�6M   � 5@   &   .+�5A   *   F� $
 path��6/   "�����5���Ѱ�5h�W��<�h�	���	#FF333333$
��Left=�6�   $��10��6�   $��8,0,0,0q�6�   $
 Fill=�6�   $��Center=�6�   $��6��6�   5B   '   5C   #   5D      �� 5E      NextButtonTemplate " ��6I   .R�5F   "   � $
 Hand��6'    5G   &     5H   *   CommonStates��. 5I   .     
Normal��6:     5J   .   	MouseOver��5N   /     5O   .   Disabled��5S   /   5T   +   .+�5V   &   �� ���	#11E5EBF1$ 1Q�6A   $
 Fill=�6M   � 5W   &   .+�5X   *   F� $
 path��6/   "����xT��!��xT���S�h4 	���	#FF333333$��Right=�6�   $��10��6�   $��0,0,8,0q�6�   $
 Fill=�6�   $��Center=�6�   $��6��6�   5Y   '   5Z   #   5[      �� 5\      HeaderButtonTemplate " ��6K   .R�5]   "   � $
 Hand��6'    5^   &     5_   *   CommonStates��. 5`   .     
Normal��6:     5a   .   	MouseOver��5e   /     5f   .   Disabled��5j   /   5k   +   .+�5m   &   �� $ buttonContent��67   #��z��6N   #��z��6�   ���	#FF333333#��z��6�   $��1,4,1,4q�6  #��z��6  5n   #   5o      5p      .+�5q      �� #��� 
 6$   $��3��6i   �� 5r      $ PART_PreviousButton��6!   $|�False��6>   $
��Left=�6P   8�� $��28��6�   �� 5s      $ PART_HeaderButton��6!   $��1��6<   $
��Bold"�6L   $|�False��6^   #���  6p   $��Center=�6�   8�� $��Center=�6�   �� 5t      $ PART_NextButton��6!   $��2��6:   $|�False��6J   $��Right=�6\   8�� $��28��6�   � 5u      $	 PART_MonthView��6   $��3��67   $��Center=�6K   $��1��6h   $y�Visible=�6u   $(
 "Auto,Auto,Auto,Auto,Auto,Auto,Auto��5v      $( "Auto,Auto,Auto,Auto,Auto,Auto,Auto��6a   5w      � 5x      $	 PART_YearView��6   $��3��66   $��Center=�6J   $��6,-3,7,6q�6g   $��1��6y   $y�Hidden=�6�   $
 Auto,Auto,Auto,Auto��5y      $ Auto,Auto,Auto��6R   F� 5z      $ errorIndicator��6�   $��12��6   $��12��6+   $	��Top=�66   $��Right=�6N   "����        � �     � �  � 	#���  6�   $y�	Collapsed=�6�   # z 6�   5{      5|      5~      5      �� 5�      "   6=   .�5�   
   ��  � ��$ 5��6%   �� 5�   
    � ��$ 5��6&   �� 5�   
    � ��# �  6%   �� 5�   
    � ��# �  6'   �� 5�   
    � ��$ Right=�67   �� 5�   
    � ��$ Center=�65   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �  5�        5�      CommonStates�� 5�   "   	  5�   &   $ 0:0:0.1D�67   . 5�   "     
Normal��6.     5�   "   	MouseOver��5�   #     5�   "   Pressed��5�   #     5�   "   Disabled��. 5�   &   �� .��5�   *   W� $ 0D�6:    06G   $ Opacity�6N   $ HighlightBackground��6r   W� 5�   *   $ 0D�6:    .356G   $ Opacity�6P   $ 
NormalText��6t   5�   '   5�   #   5�        5�      SelectionStates�� 5�   "   	  5�   &   $ 0D�67   . 5�   "     
Unselected��6.     5�   "   Selected��. 5�   &   �� .��5�   *   W� $ 0D�6:    16G   $ Opacity�6N   $ SelectedBackground��6r   5�   '   5�   #   5�        5�      CalendarButtonFocusStates�� 5�   "   	  5�   &   $ 0D�67   . 5�   "     CalendarButtonFocused��5�   #     5�   "   CalendarButtonUnfocused��5�   #   5�        5�      ActiveStates�� 5�   "   	  5�   &   $ 0D�67   . 5�   "     
Active��6.     5�   "   Inactive��. 5�   &   �� .��5�   *   �� $ 0D�69   # �  6F   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6�   $ 
NormalText��6�   5�   '   5�   #   5�        5�      	DayStates�� 5�   "   	  5�   &   $ 0D�67   . 5�   "     
RegularDay��6.     5�   "   	Today��5�   #   5�        5�      BlackoutDayStates�� 5�   "   	  5�   &   $ 0D�67   . 5�   "     	NormalDay��6.     5�   "   BlackoutDay��. 5�   &   �� .��5�   *   W� $ 0D�6:    .26G   $ Opacity�6O   $ Blackout��6s   5�   '   5�   #   5�      .+�5�      �� $ TodayBackground��6$   #���  6=   $ 0Q�6}   ��6�   Z� �� 5�      $ SelectedBackground��6$   #���  6@   $ 0Q�6�   ��6�   Z� �� 5�      $ HighlightBackground��6$   #���  6A   $ 0Q�6�   ��6�   Z� �� 5�      $ 
NormalText��6+   #���  6?   $	��4,3q�5�      #��z��5�      #��z��5�      F� 5�      $ Blackout��6   }�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	#���  65  $��Stretch=�6z  $��3q�6�  $ 0Q�6�  $  0.5,0.5&�6�  $
 Fill=�6�  $��Stretch=�6�  �� 5�      $ DayButtonFocusVisual��6$   $! false��6B   #���  6[   $y�	Collapsed=�6�   5�      5�      5�      5�      �� 5     "  6E    5  
   ���� 5     (��       6   $" DayTitleTemplate��"#  ) 5     ��  5     ToUpperTextConverter 63   5     .R�5     �� #���  6   $��Normal"�5     #���  5	     #���  5
     $��Center=�5     $��Center=�69   $	��3,6q�5     ��6)   �� $$ .�8   5     5     .R�5  
   � $	 	PART_Root��6    5     ���� 5     Þ $% 	#A5FFFFFF��6,   5      5       5     CommonStates��. 5       
Normal��6"     5     Disabled��5     5     .+�5     �� #��z��6   #��z��6A   #��z��6u   $& 0��6�   ._�5     �� 
�������$��1q�6-   $& 0��6A   ._�5     � $
 Auto,Auto,Auto��6   $ Auto,*��6I   .+�5      �� $��3��6$   
���   �$ .2Q�6E   �� 5!     $ PART_PreviousButton��6!   $|�False��6>   $
��Left=�6P   $��20��6k   $��28��6w   ��5"     �� 5#  "   " ��62   .R�5$  &   � $
 Hand��6+    5%  *     5&  .   CommonStates��. 5'  2     
Normal��6>     5(  2   	MouseOver��5,  3     5-  2   Disabled��51  3   52  /   .+�54  *   �� ���	#11E5EBF1$ 1Q�6E   $
 Fill=�6Q   � 55  *   .+�56  .   F� $
 path��63   "�����5���Ѱ�5h�W��<�h�	���	#FF333333$
��Left=�6�   $��10��6�   $��6,0,0,0q�6�   $
 Fill=�6�   $��Center=�6�   $��6��6�   57  +   58  '   59  #   5;     �� 5<     $ PART_HeaderButton��6!   $��1��6<   $
��Bold"�6L   $|�False��6^   #���  6p   #���  6�   $��Center=�6�   $��Center=�6�   ��5=     �� 5>  "   " ��62   .R�5?  &   � $
 Hand��6+    5@  *     5A  .   CommonStates��. 5B  2     
Normal��6>     5C  2   	MouseOver��5G  3     5H  2   Disabled��5L  3   5M  /   .+�5O  *   �� $ buttonContent��6;   #��z��6R   #��z��6�   ���	#FF333333#��z��6�   $��1,1,1,3q�6  #��z��6!  5P  '   5Q  #   5S     �� 5T     $ PART_NextButton��6!   $��2��6:   $|�False��6J   $��Right=�6\   $��20��6x   $��28��6�   ��5U     �� 5V  "   " ��62   .R�5W  &   � $
 Hand��6+    5X  *     5Y  .   CommonStates��. 5Z  2     
Normal��6>     5[  2   	MouseOver��5_  3     5`  2   Disabled��5d  3   5e  /   .+�5g  *   �� ���	#11E5EBF1$ 1Q�6E   $
 Fill=�6Q   � 5h  *   .+�5i  .   F� $
 path��63   "����xT��!��xT���S�h4 	���	#FF333333$��Right=�6�   $��10��6�   $��0,0,6,0q�6�   $
 Fill=�6�   $��Center=�6�   $��6��6�   5j  +   5k  '   5l  #   5n     � 5o     $	 PART_MonthView��6   $��3��67   $��Center=�6K   $��6,-1,6,6q�6h   $��1��6z   $y�Visible=�6�   $(
 "Auto,Auto,Auto,Auto,Auto,Auto,Auto��5p     $( "Auto,Auto,Auto,Auto,Auto,Auto,Auto��6a   � 5q     $	 PART_YearView��6   $��3��66   $��Center=�6J   $��6,-3,7,6q�6g   $��1��6y   $y�Hidden=�6�   $
 Auto,Auto,Auto,Auto��5r     $ Auto,Auto,Auto��6R   5s     5t     5u     �� 5v     $ PART_DisabledVisual��6   ���	#A5FFFFFF$ 0Q�6F   $' 2��6R   $( 2��6^   $
 Fill=�6j   ���	#A5FFFFFF$��1��6�   $y�	Collapsed=�6�   5w     ) 5x  
   P� 5y     * � {�$+ False��6+   . �5z     �� $, PART_DisabledVisual��6/    � y�$ Visible=�6P   5{     �� 5|     $
- Year��6�   . 6   �� *DisplayMode+/ �� *FindAncestor+$0 1��"1   .a�5}     �� $, PART_MonthView��6/    � y�$ Hidden=�6K   �� 5~     $, PART_YearView��6/    � y�$ Visible=�6J   5     �� 5�     $- Decade��6�   . 6   �� *DisplayMode+/ �� *FindAncestor+$0 1��"1   .a�5�     �� $, PART_MonthView��6/    � y�$ Hidden=�6K   �� 5�     $, PART_YearView��6/    � y�$ Visible=�6J   5�     5�     �� 5�     "    6   82   6"   5�     