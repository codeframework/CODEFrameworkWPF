   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulliGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation  5      eEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5      wNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf$CODE.Framework.Wpf.BindingConverters  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 #  MultiColumnComboBoxItemTemplate:    4CODE.Framework.Wpf.Controls.ListBoxSmartDataTemplate + 'Universe-ListBoxSmartDataTemplate-Style $  DisplayValueComboBoxItemTemplate9   3CODE.Framework.Wpf.Controls.ComboBoxInlineTextBlock  Universe-Control-ComboBox  �� 
TargetType �� BasedOn �� 	Resources:   4CODE.Framework.Wpf.BindingConverters.IsNullConverter  Key �� Property �� Value / +CODE.Framework-Application-ForegroundColor1 �� Color �� Opacity / +CODE.Framework-Application-ForegroundBrush1 / +CODE.Framework-Application-BackgroundColor1  FontSize-Normal 	 DefaultFont �� 
TargetType ��Name	 �Name
 J� SnapsToDevicePixels � ColumnDefinitions �Name � AllowsTransparency �� MaxDropDownHeight �� RelativeSource �� ElementName /
 +CODE.Framework-Application-BackgroundBrush3 ��Name �� ClearTypeHint ��Name ��Name-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation �� 	ClickMode d� 	IsChecked �� Mode ��Name �� SelectionBoxItem �� SelectionBoxItemTemplate# �� SelectionBoxItemStringFormat �� ContentStringFormat J� IsHitTestVisible ��Name  �� 
IsReadOnly! � FocusVisualStyle" F�Name 3 /CODE.Framework-Application-ValidationErrorBrush3   -CODE.Framework.Wpf.Validation.InputValidation#   ErrorMessage$ � ToolTip% �� Triggers& P� Property' P� Value( �� 
TargetName) P� 
SourceName* �� Triggers+ �� Binding  IsNullConverter, �� 	Converter- �� Value  MultiColumnComboBoxTemplate?   9CODE.Framework.Wpf.Controls.ComboBoxSmartTemplateSelector.   DropDownItemTemplate/   DisplayItemTemplate(   "CODE.Framework.Wpf.Controls.GridEx0  Name1   
RowHeights2 ��Name4   .CODE.Framework.Wpf.Controls.ComboBoxGridHeader3   -CODE.Framework.Wpf.Controls.ListBoxGridHeader3   Columns4 �� Path5   ParentListBox6   HorizontalHeaderOffset / +CODE.Framework-Application-BackgroundBrush17 � 	Resources8 K� ZIndex6	   0CODE.Framework.Wpf.Controls.HeaderContentControl9 �� 
StartPoint: �� EndPoint; � Color< � Offset * &CODE.Framework-Application-ThemeColor1= ��Name> J� Opacity+
   %CODE.Framework.Wpf.Controls.TextBoxEx? 
  WatermarkText@ ]� 
ConditionsA �� PropertyB �� Value4   .CODE.Framework.Wpf.Controls.SortOrderIndicator % !CODE.Framework-Icon-SortAscending & "CODE.Framework-Icon-SortDescending4   .CODE.Framework.Wpf.Controls.ComboBoxGridFooterC  Name3   -CODE.Framework.Wpf.Controls.ListBoxGridFooterD   ColumnsE   ParentListBoxF   HorizontalFooterOffset6   0CODE.Framework.Wpf.Controls.FooterContentControlG �� Padding�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OvalGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      RcontrolsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      dbindingConvertersNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf  5      %�:  &	        &	 4     &	 \     7��7  7   7  '��     7  &	 (    7��7��7��7��7��7��7��7��7��'�� Q7    �� 5      .R�5   
      #���  6,   5	      �� 5
      .R�5   
     5      �� 5      "  ��6.   8    5   
   ��  5      IsNullConverter 60   5      .�5   
   ��  � ��$	 8,0q�6$   �� 5   
    � �� 5      �� 5      # �  6"   $ .5Q�6h   5      �� 5   
    � ��$ 2q�6,   �� 5   
    � ��# �  6'   �� 5   
    � �� 5      �� 5      # �  6"   $ .5Q�6h   5      �� 5   
    � ��# �  6%   �� 5    
    � ��# � 	 6'   �� 5!   
    � ��$
 Auto=�6G   �� 5"   
    � ��$
 Auto=�6E   �� 5#   
    � ��$	 4,3q�6$   �� 5$   
    � ��$
 true��6:   �� 5%   
    �@��PanningMode$
 Both=�65   �� 5&   
    �@��IsFlicksEnabled$ False��63   �� 5'   
    � �� 5(      �� 5)      " ��6"   .R�5*      �� $ 
MainBorder��6   #��z��5+      #��z��6Q   #��z��5,      ._�5-      � $	 MainGrid��6   $

 true��61    5.      �� 5/   "   $��* �63   �� 50   "   #��� r�63   $��0 �6�   .+�52      � $ 
PART_Popup��6$   $
 true��68   $��2��6R   $��0,1,0,0q�54   $   #��z 55   $   #��� .�56   $   $��Bottom=�57   $   ��53   $   �� *IsDropDownOpen+ �� *TemplatedParent+��55   T   �� *ActualWidth+$ 
MainBorder��.��58   "   �� $ DropDownBorder��6)   #��z��59   )   #��z��6U   #��� 
 5:   )   ._�5;   &   �� $ DropDownScrollViewer��63   .��5<   *   � $ Enabled=�6/   .+�5=   .   �� $
��Left=�65   $��0��6P   $	��Top=�6[   $��0��6s   .+�5>   2   �� $ 
OpaqueRect��6<   ��6P   �� *
Background+$ DropDownBorder����6�   �� *ActualHeight+$ DropDownBorder����6�   �� *ActualWidth+$ DropDownBorder��5?   /   �� 5@   .   $ ItemsPresenter��6=   $ 	Contained=�6U   #
 z
 6�   5A   +   5B   '   5C   #   5D      d� 5E      #��z��6+   #��z��6W   $��2��6�   $ Press=�5G   +   $��False��6=   $|�False��6O    5F   +   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+��5H   "   �� 5I   &   " d�66   .R�5J   *   �� $��0q�61   
������ ._�5K   .   � $��Right=�63   #��� r�6O   .+�5L   2   F� "����        �@KL @KL р��     	$��Center=�6M   $��2��6j   #��z��6~   $��Center=�6�   $	��4,0q�6�   5M   /   5N   +   5O   '   5Q      �� 5R      $ MainContentPresenter��5[   /   #��z 5R   /   #��z 5S   /   #��z��5T   /   # z 5U   /   #��z��5V   /   #��z��5W   /   $ false��5X   /   #��z��5Y   /   #
 z
 5Z   /   5[   /   �� 5]      $ PART_EditableTextBox��6&   #��z��6D   #��z��5_   &   $y�	Collapsed=�5a   &   #��z��5b   &     5^   &   �� *
IsReadOnly+ �� *TemplatedParent+! 5`   &   Z� .��5b   l   ��5c   "   �� 5d   &   " ��66   .R�5e   *   �� $ PART_ContentHost��67   
������ $|�false��6j   $��Hidden=�5f   7   $��Hidden=�6^   5g   '   .��5h   4   5i      F� 5j      $" errorIndicator��6�   $��12��6#   $��12��6/   $	��Top=�6:   $��Right=�6R   "����        � �     � �  � 	#���  6�   $y�	Collapsed=�6�   #$ z# 6  5k      5l      % 5m      P� 5n      & �@��HasItems$' false��66   . �5o      �� $( DropDownBorder��67    � ��$ 95��6S   5p      P� 5q      & � {�$' false��67   . �5r      �� # � ��6;    � ���� 5s       � �� �	#FFF4F4F46;   5t      P� 5u      & �@��
IsGrouping$
' true��68   . �5v      ��  � ��$ false��6N   5w      P� 5x      $) DropDownScrollViewer��6K   & � ��$' false��6m   . �5y      �� $( 
OpaqueRect��6;    6S   �� *VerticalOffset+$ DropDownScrollViewer�� �@��Top�� 5z      $( 
OpaqueRect��6<    6T   �� *HorizontalOffset+$ DropDownScrollViewer�� �@��Left5{      P� 5|      & �@��
IsEditable$
' True��68   . �5}      �� $( PART_EditableTextBox��6K    � y�$ Visible=�6;   6K   �� 5~      $( MainContentPresenter��6M    � y�$ 	Collapsed=�6;   6M   5      P� 5�      & �@ IsValid$' False��6I   . �5�      �� $( 
MainBorder��6<   # �  6T    � ���� 5�      $( errorIndicator��6;    � y�$ Visible=�6W   5�      5�      5�      * 5�   
   P� 5�      & �@��
IsEditable$
' true��6,   . �5�      ��  � ��$ false��6.   �� 5�       � ��$ 3q�6,   5�      �� 5�      + 6   �� *(controls:ListEx.Columns)+ �� *TemplatedParent+8,  	- False6�   .a�5�      ��  � ��# �  6-   �� 5�       � �� 5�        5�      8.  8/  6�   5�      5�      5�      �� 5�      "  ��6   8   6"   �� 5�      " ��6:   .R�5�   
   �� $ 
MainBorder��6   #��z��5�      #��z��6E   #��z��5�      ._�5�      � $	 MainGrid��6   $

 true��6%    5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $ 
PART_Popup��6   $
 true��6,   $��2��6F   $��0,1,0,0q�5�      #��z 5�      #��� .�5�      $��Bottom=�5�      ��5�      �� *IsDropDownOpen+ �� *TemplatedParent+��5�   I   �� *ActualWidth+$ 
MainBorder��.��5�      �� $ DropDownBorder��6   #��z��5�      #��z��6I   #��� 
 5�      ._�5�        $
0 grid��6r   $1 Auto,*,Auto��6*   $
}�True��6C   $

 True��6W   ��6�   �� *DesiredMeasuredWidth+$ header��.+�5�      �� $2 canvas��6%   $
��Left=�65   $��0��6P   $	��Top=�6[   $��0��6s   .+�5�   "   �� $ 
opaqueRect��6,   ��6@   �� *
Background+$ DropDownBorder����6x   �� *ActualHeight+$ DropDownBorder����6�   �� *ActualWidth+$ DropDownBorder��5�        5�      $
��Left=�5�   2   $

 True��5�   2   3 5�   :   �� $4 (controls:ListEx.Columns)� �� *TemplatedParent+5 5�   2   ��  �� *TemplatedParent+6 5�   2   �� $ scroll��$4 ContentHorizontalOffset�$ OneWay=���5�   "   �� 5�   &   "  66   .R�5�   *   �� $��Stretch=�61   $��Stretch=�6M   $

 True��6k   ���#A4ABB4#���  5�   G   $��0,0,0,1q�6�   $��-1,-1,-1,-0q�6�   ._�5�   .   �� 5�   +   5�   '   7 5�   "   ���� 5�   &   '��       "  ��6,   8   .�5�   *   ��  � ��# � 	 6G   �� 5�   *    � ��# �  6E   �� 5�   *    � ��$ Center=�6N   �� 5�   *    � �� 5�   .   �� 5�   2   " ��6B   .R�5�   6   � $

 True��6;   $��Stretch=�6V   $��Stretch=�6r   .+�5�   :   �� $��Stretch=�6A   $��Right=�6]   ���#A4ABB4$��0,0,1,0q�6�   $��0,2,-1,2q�6�   $8 25000��6�   $

 True��6�   �� 5�   :   $ content��6�   $��4,0,5,2q�6K   $��Stretch=�6\   $��Stretch=�6x   6�   5�   7   5�   3   5�   +   5�   '   �� 5�   &   '	        "  	 6,   8  .�5�   *   ��  � ��# � 	 6G   �� 5�   *    � ��# �  6E   �� 5�   *    � ��$ Center=�6N   �� 5�   *    � �� 5�   .   �� 5�   2   " 	 6B   .R�5�   6   � $
	 root��6�   $

 True��6;   $��Stretch=�6V   $��Stretch=�6r   .+�5�   :   �� $ filterBackground��6~   $��Stretch=�6D   $��Stretch=�6`   $ False��6�   �� 5�   :   $ content��6�   $��0q�6K   $��Stretch=�6V   $��Stretch=�6r   6�   5�   7   % 5�   6   P� 5�   :   & �@	 ColumnIsFiltered$
' True��6^   . �5�   >   ��  �@�ToolTip$ Filtered��6X   �� 5�   >   $( filterBackground��6U    � �� 5�   B   �� 5�   F   $	9 0,0&�6Z   $	: 0,1&�6k   .��5�   J   � $; Transparent��6W   $< .4Q�6k   � 5�   J   #; �  6W   $	< 1.2Q�6�   5�   G   5�   ?   5�   ;   5�   3   5�   +   5�   '   �� 5�   &   '��       "  ��6,   8  .�5�   *   ��  � ��$ 3��6B   �� 5�   *    � ��
 ���� 6G   �� 5�   *    � ��$ 0,2,-1,2q�6C   5�   '   �� 5�   &   '��       "  ��6,   8  .�5�   *   ��  � ��$	 0,2q�6C   �� 5�   *    � ��$ CharacterEllipsis=�6I   5�   '   �� 5�   &   '��       "  ��6,   8  .�5�   *   ��  � ��$ 0,2,-2,1q�6C   �� 5�   *    � �� 5�   .   �� 5�   2   " ��6B   .R�5�   6   �� #��z��6=   #��z��6i   #��z��5�   =   $

 true��6g   ._�5�   :   � $��Stretch=�6?   $��Stretch=�6[   .+�5�   >   �� $ PART_ContentHost��6K   #
 z
 6e   $��Stretch=�5�   K   $��Stretch=�6g   $��2q�6�   �� 5�   >   $= 	Watermark��6�   $��Center=�6H   $��Stretch=�6c   $> .6Q�6�   $��2q�6�   #��z? 5�   H   $y�	Collapsed=�6�   $��CharacterEllipsis=�6�   5�   ;   5�   7   % 5   6   ]� 5  :   @ 5  >   �� 5  B   A �@J�IsKeyboardFocusWithin$B False��6m   �� 5  B   A � ��$B  ��6\   ./�5  >   �� $( 	Watermark��6k    � y�$ Visible=�6[   6k   5  ;   5	  3   5  +   5  '   �� 5  &   '        "   6,   .�5  *   ��  �@J�SnapsToDevicePixels$
 True��6P   �� 5  *    � ��$ 10��6C   �� 5  *    � ��$ 10��6B   �� 5  *    � ��$ Center=�6N   �� 5  *    � ��$ Center=�6P   �� 5  *    � ��$	 5,0q�6C   �� 5  *    �@ AscendingBrush# �  6K   �� 5  *    �@ DescendingBrush# �  6L   5  '   5  #   5     �� 5     $ scroll��6J   $|�false��6+   $��1��6=   $

 True��6Z   $��Disabled=�6u   .��5  "   �� #
 z
 61   5       5     $C header��5  M   $
��Left=�62   $

 True��5   2   $��2��6M   D 5  :   �� $4 (controls:ListEx.Columns)� �� *TemplatedParent+E 5  2   ��  �� *TemplatedParent+F 5  2   �� $ scroll��$4 ContentHorizontalOffset�$ OneWay=���5!  "   �� 5"  &   "  66   .R�5#  *   �� $��Stretch=�61   $��Stretch=�6M   $

 True��6k   ���#A4ABB4#���  5$  G   $��0,1,0,0q�6�   $��-1,-0,-1,-1q�6�   ._�5%  .   �� 5&  +   5'  '   7 5)  "   ���� 5*  &   '��       "  ��6,   8  .�5+  *   ��  � ��# � 	 6G   �� 5,  *    � ��# �  6E   �� 5-  *    � ��$ Center=�6N   �� 5.  *    � �� 5/  .   �� 50  2   " ��6B   .R�51  6   � $

 True��6;   $��Stretch=�6V   $��Stretch=�6r   .+�52  :   �� $��Stretch=�6A   $��Right=�6]   ���#A4ABB4$��0,0,1,0q�6�   $��0,2,-1,2q�6�   $8 25000��6�   $

 True��6�   �� 53  :   $ content��6�   $��4,0,5,2q�6K   $��Stretch=�6\   $��Stretch=�6x   6�   54  7   55  3   57  +   58  '   �� 59  &   '        "   6,   8  .�5:  *   ��  � ��# � 	 6G   �� 5;  *    � ��# �  6E   �� 5<  *    � ��$ Center=�6N   �� 5=  *    � �� 5>  .   �� 5?  2   "  6B   .R�5@  6   � $
	 root��6�   $

 True��6;   $��Stretch=�6V   $��Stretch=�6r   .+�5A  :   �� $ filterBackground��6~   $��Stretch=�6D   $��Stretch=�6`   $ False��6�   �� 5B  :   $ content��6�   $��0q�6K   $��Stretch=�6V   $��Stretch=�6r   6�   5C  7   5D  3   5F  +   5G  '   �� 5H  &   '��       "  ��6,   8  .�5I  *   ��  � ��$	 0,2q�6C   �� 5J  *    � ��$ CharacterEllipsis=�6I   5K  '   �� 5L  &   '��       "  ��6,   8  .�5M  *   ��  � ��$ 0,2,-2,1q�6C   �� 5N  *    � �� 5O  .   �� 5P  2   " ��6B   .R�5Q  6   �� #��z��6=   #��z��6i   #��z��5R  =   $

 true��6g   ._�5S  :   � $��Stretch=�6?   $��Stretch=�6[   .+�5T  >   �� $ PART_ContentHost��6K   #
 z
 6e   $��Stretch=�5U  K   $��Stretch=�6g   $��2q�6�   �� 5V  >   $= 	Watermark��6�   $��Center=�6H   $��Stretch=�6c   $> .6Q�6�   $��2q�6�   #��z? 5W  H   $y�	Collapsed=�6�   $��CharacterEllipsis=�6�   5X  ;   5Y  7   % 5Z  6   ]� 5[  :   @ 5\  >   �� 5]  B   A �@J�IsKeyboardFocusWithin$B False��6m   �� 5^  B   A � ��$B  ��6\   ./�5`  >   �� $( 	Watermark��6k    � y�$ Visible=�6[   6k   5a  ;   5c  3   5e  +   5f  '   5g  #   5h     5i     5j     5k     d� 5l     #��z��6   #��z��6K   $��2��6u   $ Press=�5n  !   $��False��63   $|�False��6E    5m  !   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+��5o     �� 5p     " d�6*   .R�5q     �� $��0q�6%   
������ ._�5r  "   � $��Right=�6'   #��� r�6C   .+�5s  &   F� "����        �@KL @KL р��     	$��Center=�6A   $��2��6^   #��z��6r   $��Center=�6�   $	��4,0q�6�   5t  #   5u     5v     5x     �� 5y     $ MainContentPresenter��5�  %   #��z 5y  #   #��z 5z  %   #��z��5{  %   # z 5|  %   #��z��5}  %   #��z��5~  %   $ false��5  %   #��z��5�  %   #
 z
 5�  %   5�  %   �� 5�     $ PART_EditableTextBox��6   #��z��68   #��z��5�     $y�	Collapsed=�5�     #��z��5�       5�     �� *
IsReadOnly+ �� *TemplatedParent+! 5�     Z� .��5�  c   ��5�     �� 5�     " ��6*   .R�5�     �� $ PART_ContentHost��6+   
������ $|�false��6^   $��Hidden=�5�  -   $��Hidden=�6T   5�     .��5�  (   5�     F� 5�     $" errorIndicator��6�   $��12��6   $��12��6#   $	��Top=�6.   $��Right=�6F   "����        � �     � �  � 	#���  6}   $y�	Collapsed=�6�   #$ z# 6�   5�     5�     % 5�  
   P� 5�     & �@��HasItems$' false��6*   . �5�     �� $( DropDownBorder��6+    � ��$ 95��6G   5�     P� 5�     & � {�$' false��6+   . �5�     �� # � ��6/    � ���� 5�      � �� �	#FFF4F4F46/   5�     P� 5�     & �@��
IsGrouping$
' true��6,   . �5�     ��  � ��$ false��6B   5�     P� 5�     $) DropDownScrollViewer��6?   & � ��$' false��6a   . �5�     �� $( 
OpaqueRect��6/    6G   �� *VerticalOffset+$ DropDownScrollViewer�� �@��Top�� 5�     $( 
OpaqueRect��60    6H   �� *HorizontalOffset+$ DropDownScrollViewer�� �@��Left5�     P� 5�     & �@��
IsEditable$
' True��6,   . �5�     �� $( PART_EditableTextBox��6?    � y�$ Visible=�6/   6?   �� 5�     $( MainContentPresenter��6A    � y�$ 	Collapsed=�6/   6A   5�     P� 5�     & �@ IsValid$' False��6=   . �5�     �� $( 
MainBorder��60   # �  6H    � ���� 5�     $( errorIndicator��6/    � y�$ Visible=�6K   5�     5�     �� 5�     "  ��6   .�5�  
   ��  � ��# �  6'   �� 5�  
    � ��# � 
 6'   �� 5�  
    � ��# �  6%   �� 5�  
    � ��# � 	 6'   �� 5�  
    � ��$ 33��6#   �� 5�  
    � ��$ Center=�65   �� 5�  
    � ��$ 0q�6#   �� 5�  
    � ��$ 0q�6,   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     �� $ Bd��6   #��z��5�     #��z��6Q   
������ #G z��5�     $

 True��6A   ._�5�     �� #��z��6+   #��z��5�  +   #
 z
 5�  +   5�     % 5�     P� 5�     & �@��IsHighlighted$
' True��6;   . �5�     �� $( Bd��6;    � �� �	#250000006K   5�     P� 5�     & � {�$' False��67   . �5�     �� # � ��6;    � ��5�     5�     5�     5�     5�     