   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5      wNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf$CODE.Framework.Wpf.BindingConverters  5      a ]PresentationFramework.Aero, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes 5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 #  MultiColumnComboBoxItemTemplate:    4CODE.Framework.Wpf.Controls.ListBoxSmartDataTemplate ( $Vapor-ListBoxSmartDataTemplate-Style $  DisplayValueComboBoxItemTemplate9   3CODE.Framework.Wpf.Controls.ComboBoxInlineTextBlock / +CODE.Framework-Application-ForegroundBrush3  �� 
TargetType �� BasedOn �� 	Resources:   4CODE.Framework.Wpf.BindingConverters.IsNullConverter  Key �� Property �� Value  Vapor-ComboBoxItem / +CODE.Framework-Application-BackgroundBrush3 / +CODE.Framework-Application-ForegroundBrush2 4 0CODE.Framework-Application-HeaderBackgroundBrush �� Triggers �� Binding �� RelativeSource 	 IsNullConverter �� 	Converter	 �� Value 
 MultiColumnComboBoxTemplate?   9CODE.Framework.Wpf.Controls.ComboBoxSmartTemplateSelector
   DropDownItemTemplate   DisplayItemTemplate �� 
TargetType � 	Resources �� Color ��Name . *CODE.Framework-Application-HighlightBrush1 ��Name J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName �Name � ColumnDefinitions �Name � AllowsTransparency �� Mode5  /Microsoft.Windows.Themes.SystemDropShadowChrome  Name   Color �� MaxDropDownHeight �� ElementName ��Name(   "CODE.Framework.Wpf.Controls.GridEx   Name!   
RowHeights" ��Name4   .CODE.Framework.Wpf.Controls.ComboBoxGridHeader3   -CODE.Framework.Wpf.Controls.ListBoxGridHeader#   Columns$ �� Path%   HorizontalHeaderOffset / +CODE.Framework-Application-BackgroundBrush1& � 	Resources  DefaultFont  FontSize-Normal6   0CODE.Framework.Wpf.Controls.HeaderContentControl' J� IsHitTestVisible * &CODE.Framework-Application-ThemeBrush24	   .CODE.Framework.Wpf.Controls.SortOrderIndicator % !CODE.Framework-Icon-SortAscending & "CODE.Framework-Icon-SortDescending( ��Name4
   .CODE.Framework.Wpf.Controls.ComboBoxGridFooter3   -CODE.Framework.Wpf.Controls.ListBoxGridFooter)   Columns*   HorizontalFooterOffset6   0CODE.Framework.Wpf.Controls.FooterContentControl+ d�Name  ComboBoxToggleButton, d� 	IsChecked- �� SelectionBoxItemTemplate. �� SelectionBoxItem#/ �� SelectionBoxItemStringFormat0 �� ContentStringFormat1 P� 
SourceName  ComboBox.Static.Border  ComboBox.Static.Background2 F�Name  ComboBox.Static.Glyph3 ^� 
Conditions4 �� Binding5 �� AncestorType6 �� Value ' #ComboBox.Static.Editable.Background # ComboBox.Static.Editable.Border . *ComboBox.Static.Editable.Button.Background * &ComboBox.Static.Editable.Button.Border  ComboBox.MouseOver.Glyph ! ComboBox.MouseOver.Background  ComboBox.MouseOver.Border * &ComboBox.MouseOver.Editable.Background & "ComboBox.MouseOver.Editable.Border 1 -ComboBox.MouseOver.Editable.Button.Background -  )ComboBox.MouseOver.Editable.Button.Border ! ComboBox.Pressed.Glyph " ComboBox.Pressed.Background # ComboBox.Pressed.Border ($ $ComboBox.Pressed.Editable.Background $%  ComboBox.Pressed.Editable.Border /& +ComboBox.Pressed.Editable.Button.Background +' 'ComboBox.Pressed.Editable.Button.Border ( ComboBox.Disabled.Glyph  ) ComboBox.Disabled.Background * ComboBox.Disabled.Border )+ %ComboBox.Disabled.Editable.Background %, !ComboBox.Disabled.Editable.Border 0- ,ComboBox.Disabled.Editable.Button.Background ,. (ComboBox.Disabled.Editable.Button.Border7 �� EndPoint8 �� 
StartPoint9 � Color: � Offset�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      KcEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      dbindingConvertersNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf  5      UthemesJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero  5      %4  &	        &	 4     '�� h     7��7��7 	 7   7  &	 �    &	
 �    7��7��7��&	 �    &	 a,    &	 �,    &	  -    &	 C-    &	 f-    &	 �-    &	 �-    &	 �-    &	 o.    &	 �.    &	 �.    &	 �.    &	  t/    &	! �/    &	" �/    &	# V0    &	$ y0    &	% �0    &	& �0    &	' [1    &	( ~1    &	) �1    &	* �1    &	+ �1    &	, 
2    &	- -2    &	. R2    &	 w2    �� 5      .R�5   
      #���  6%   5	      �� 5
      .R�5   
     #���  6$   5      �� 5      "  ��6   8    5   
   ��  5      IsNullConverter 60   �� 5      '��       "  ��6   .�5      ��  � ��$ 0q�6,   �� 5       � ��# �  6-   5      �� 5      '��       "  ��6   8  .�5      ��  � ��$ CharacterEllipsis=�61   5      5      .�5   
   ��  � ��# �  6'   �� 5   
    � ��# �  6'   �� 5   
    � ��# �  6(    5   
   �� 5       6   �� *(c:ListEx.Columns)+ �� *TemplatedParent+8  		 False6�   .a�5      ��  � ��# � 
 6-   �� 5       � �� 5         5!      8
  8  6�   5#      5$      5&      �� 5(      " ��6    5)   
   ���� 5*      $ Transparent��6P   (��       6   * SystemColors.HighlightBrushKey+)6P   5+      .R�5,   
   � $��0q�6   .+�5-      �� $ select��6\   #���  6   $y�Hidden=�6l   �� 5.      $ contentElement��51   S   #��z��5.      $
 True��5/      #��z��50      #��z��51      6S   52       53   
   P� 54       �@��
IsSelected$
 True��6,   . �55      �� $ select��6/    � y�$ Visible=�6C   �� 56      $ contentElement��69    � ��
 �����6U   �� 57       � ��
 �����6/   58      P� 59       �@J�IsMouseOver$
 True��6-   . �5:      �� $ contentElement��69    � ��
 �����6U   �� 5;       � ��
 �����6/   5<      5>      �� 5@      " ��6:   .R�5A   
   � $ templateRoot��6   $
 true��6%    5B      �� 5C      $��* �6#   �� 5D      #��� r�6#   $��0 �6v   .+�5F      � $ 
PART_Popup��6   $
 true��6(   $��2��6B   $��1q�6�   #��� .�6�   $��Bottom=�6  ��6V   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+.��5G        $ shadow��60   $ Transparent��6@   #��z 6T   ��6�   �� *ActualWidth+$ templateRoot��._�5H      �� $ dropDownBorder��6   #��z��65   $��1q�6a   #��z��6u   ._�5I        $
  grid��6k   $! Auto,*,Auto��6#   $
}�True��6<   $
 True��6P   ��6y   �� *DesiredMeasuredWidth+$ header��.+�5J      �� $" canvas��6%   $
��Left=�65   $��0��6P   $	��Top=�6[   $��0��6s   .+�5K   "   �� $ 
opaqueRect��6,   ��6@   �� *
Background+$ dropDownBorder����6x   �� *ActualHeight+$ dropDownBorder����6�   �� *ActualWidth+$ dropDownBorder��5L        5M      #���  5O   3   $
 True��5P   3   # 5M   3   �� $$ (c:ListEx.Columns)� �� *TemplatedParent+% 5N   3   �� $ scroll��$$ ContentHorizontalOffset�$ OneWay=���5Q   "   �� 5R   &   "  66   .R�5S   *   �� $��Stretch=�61   $��Stretch=�6M   $
 True��6k   ���#A4ABB4#���  5T   G   $��0,0,0,1q�6�   $��-1,-1,-1,-0q�6�   ._�5U   .   �� 5V   +   5W   '   & 5Y   "   ���� 5Z   &   '��       "  ��6,   .�5[   *   ��  � ��# �  6G   �� 5\   *    � ��# �  6E   �� 5]   *    � ��$ Center=�6N   �� 5^   *    � ��# �  6G   �� 5_   *    � ��# �  6H   �� 5`   *    � �� 5a   .   �� 5b   2   " ��6B   .R�5c   6   � .+�5d   :   �� $��Stretch=�6A   $��Right=�6]   #��z��6y   $��0,0,1,0q�6�   $	��0,2q�6�   �� 5e   :   $��4,1,7,2q�6K   $��Stretch=�6\   $��Stretch=�6x   5f   7   5g   3   5i   +   5j   '   �� 5k   &   '        "   6,   8   .�5l   *   ��  � �� 5m   .   �� 5n   2   "  6B   .R�5o   6   � $
 root��6�   $
 True��6;   $��Stretch=�6V   $��Stretch=�6r   .+�5p   :   �� $ filterBackground��6~   $��Stretch=�6D   $��Stretch=�6`   $' False��6�   �� 5q   :   $ content��6�   $��0q�6K   $��Stretch=�6V   $��Stretch=�6r   6�   5r   7    5s   6   P� 5t   :    �@ ColumnIsFiltered$
 True��6^   . �5u   >   ��  �@�ToolTip$ Filtered��6X   �� 5v   >   # �  6U   $ filterBackground��6�    � ��5w   ;   5y   3   5{   +    5|   *   P� 5}   .    �@ ColumnIsFiltered$
 True��6R   . �5~   2   ��  � ��# �  6O   5   /   5�   '   �� 5�   &   '��       "  ��6,   8  .�5�   *   ��  � ��$ 3��6B   �� 5�   *    � ��
 ���� 6G   �� 5�   *    � ��$ 0,2,-1,2q�6C   �� 5�   *    �@J�Opacity$	 .25Q�6D   �� 5�   *    � ��$ 0,0,1,0q�6L   �� 5�   *    � ��# �  6H   5�   '   �� 5�   &   '	        "  	 6,   .�5�   *   ��  � ��$ 12��6C   �� 5�   *    � ��$ 12��6B   �� 5�   *    � ��$ Center=�6N   �� 5�   *    � ��$ Center=�6P   �� 5�   *    � ��$	 5,0q�6C   �� 5�   *    �@	 AscendingBrush# �  6K   �� 5�   *    �@	 DescendingBrush# �  6L   5�   '   5�   #   5�      �� 5�      $( scroll��6J   $|�false��6+   $��1��6=   $
 True��6Z   $��Disabled=�6u   .��5�   "   �� # z 61   5�      
  5�      #���  5�   3   $
 True��5�   3   $��2��6N   ) 5�   3   �� $$ (c:ListEx.Columns)� �� *TemplatedParent+* 5�   3   �� $ scroll��$$ ContentHorizontalOffset�$ OneWay=���5�   "   �� 5�   &   "  66   .R�5�   *   �� $��Stretch=�61   $��Stretch=�6M   $
 True��6k   ���#A4ABB4#���  5�   G   $��0,1,0,0q�6�   $��
-1,0,-1,-1q�6�   ._�5�   .   �� 5�   +   5�   '   & 5�   "   ���� 5�   &   '��       "  ��6,   .�5�   *   ��  � ��# �  6G   �� 5�   *    � ��# �  6E   �� 5�   *    � ��$ Center=�6N   �� 5�   *    � ��# �  6G   �� 5�   *    � ��# �  6H   �� 5�   *    � �� 5�   .   �� 5�   2   " ��6B   .R�5�   6   � .+�5�   :   �� $��Stretch=�6A   $��Right=�6]   #��z��6y   $��0,0,1,0q�6�   $	��0,2q�6�   �� 5�   :   $��4,1,7,2q�6K   $��Stretch=�6\   $��Stretch=�6x   5�   7   5�   3   5�   +   5�   '   �� 5�   &   '        "   6,   8  .�5�   *   ��  � �� 5�   .   �� 5�   2   "  6B   .R�5�   6   � $
 root��6�   $
 True��6;   $��Stretch=�6V   $��Stretch=�6r   .+�5�   :   �� $ filterBackground��6~   $��Stretch=�6D   $��Stretch=�6`   $' False��6�   �� 5�   :   $ content��6�   $��0q�6K   $��Stretch=�6V   $��Stretch=�6r   6�   5�   7    5�   6   P� 5�   :    �@ ColumnIsFiltered$
 True��6^   . �5�   >   ��  �@�ToolTip$ Filtered��6X   �� 5�   >   # �  6U   $ filterBackground��6�    � ��5�   ;   5�   3   5�   +    5�   *   P� 5�   .    �@ ColumnIsFiltered$
 True��6R   . �5�   2   ��  � ��# �  6O   5�   /   5�   '   5�   #   5�      5�      5�      5�      5�      d� 5�      $+ toggleButton��6   #��z��61   #��z��6]   #��z��6�   $��2��5�      #���  6�   , 6/   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+6�   �� 5�      $ contentPresenter��6   #��z- 69   #��z��6v   #��z. 5�      #0 z/ 6L   #��z��5�      $' false��6b   #��z��6{   # z 5�      #��z��6[   5�       5�   
   P� 5�      $1 
PART_Popup��6/    �@�HasDropShadow$
 true��6G   . �5�      �� $ shadow��6+    � ��$ 0,0,5,5q�6?   �� 5�      $ shadow��6*    �@ Color$ 	#71000000��6>   5�      P� 5�       �@��HasItems$ false��6*   . �5�      �� $ dropDownBorder��6+    � ��$ 95��6G   5�      P� 5�      $1 scroll��6?    � ��$ false��6S   . �5�      �� $ 
opaqueRect��6/    6G   �� *VerticalOffset+$ scroll�� �@��Top�� 5�      $ 
opaqueRect��60    6H   �� *HorizontalOffset+$ scroll�� �@��Left5�      5�      �� 5�      "  d�6)   .�5�   
   ��  �@�OverridesDefaultStyle$
 true��62   �� 5�   
    � ��$ false��6&   �� 5�   
    � |�$ false��6&   �� 5�   
    �@��	ClickMode$ Press=�6&   �� 5�   
    � �� 5�      �� 5�      " d�6"   .R�5�      �� $ templateRoot��6   #���  63   #��z��6j   #���  6�   $
 true��6�   ._�5�      �� $ splitBorder��6!   
������ $��1q�6P   $��Right=�6d   $��0q�6�   $
 true��6�   #��� r�6�   ._�5�      F� $2 arrow��6#   F����        ���( ��( јaQ     јaQ P����̰( � �    P����        #���  6�   $��Center=�6�   $��0q�6�   $��Center=�6�   5�      5�       5�      ^� 5�      3 5�      �� 5�   "   4 6,   �� *
IsEditable+ �� "5 ��6 true6�   �� 5�   "   4 6,   �� *IsMouseOver+ �� *Self+	6 false6r   �� 5�   "   4 6,   �� *	IsPressed+ �� *Self+	6 false6p   �� 5�   "   4 6,   �� *	IsEnabled+ �� *Self+6 true6p   .0�5�      �� $ templateRoot��6;   # �  6U    � ���� 5�      $ templateRoot��6<   # �  6V    � ���� 5      $ splitBorder��6;   # �  6T    � ���� 5     $ splitBorder��6<   # �  6U    � ��5     P� 5      �@J�IsMouseOver$
 true��69   . �5     �� $ arrow��65   # �  6H    � ��5     ^� 5     3 5     �� 5  "   4 6,   �� *IsMouseOver+ �� *Self+6 true6r   �� 5	  "   4 6,   �� *
IsEditable+ �� "5 ��	6 false6�   .0�5     �� $ templateRoot��6;   # �  6U    � ���� 5     $ templateRoot��6<   # �  6V    � ��5     ^� 5     3 5     �� 5  "   4 6,   �� *IsMouseOver+ �� *Self+6 true6r   �� 5  "   4 6,   �� *
IsEditable+ �� "5 ��6 true6�   .0�5     �� $ templateRoot��6;   # �  6U    � ���� 5     $ templateRoot��6<   # �  6V    � ���� 5     $ splitBorder��6;   # �  6T    � ���� 5     $ splitBorder��6<   # �   6U    � ��5     P� 5      � ��$
 true��67   . �5     �� $ arrow��65   # � ! 6H    � ��5     ^� 5     3 5     �� 5  "   4 6,   �� *	IsPressed+ �� *Self+6 true6p   �� 5  "   4 6,   �� *
IsEditable+ �� "5 ��	6 false6�   .0�5      �� $ templateRoot��6;   # � " 6U    � ���� 5!     $ templateRoot��6<   # � # 6V    � ��5"     ^� 5#     3 5$     �� 5%  "   4 6,   �� *	IsPressed+ �� *Self+6 true6p   �� 5&  "   4 6,   �� *
IsEditable+ �� "5 ��6 true6�   .0�5(     �� $ templateRoot��6;   # � $ 6U    � ���� 5)     $ templateRoot��6<   # � % 6V    � ���� 5*     $ splitBorder��6;   # � & 6T    � ���� 5+     $ splitBorder��6<   # � ' 6U    � ��5,     P� 5-      � {�$ false��67   . �5.     �� $ arrow��65   # � ( 6H    � ��5/     ^� 50     3 51     �� 52  "   4 6,   �� *	IsEnabled+ �� *Self+	6 false6p   �� 53  "   4 6,   �� *
IsEditable+ �� "5 ��	6 false6�   .0�55     �� $ templateRoot��6;   # � ) 6U    � ���� 56     $ templateRoot��6<   # � * 6V    � ��57     ^� 58     3 59     �� 5:  "   4 6,   �� *	IsEnabled+ �� *Self+	6 false6p   �� 5;  "   4 6,   �� *
IsEditable+ �� "5 ��6 true6�   .0�5=     �� $ templateRoot��6;   # � + 6U    � ���� 5>     $ templateRoot��6<   # � , 6V    � ���� 5?     $ splitBorder��6;   # � - 6T    � ���� 5@     $ splitBorder��6<   # � . 6U    � ��5A     5C     5E     5F     �� 5H     $	7 0,1&�6=   $	8 0,0&�6L   .��5I  
   � $9 	#FFF0F0F0��6   $	: 0.0Q�6)   � 5J  
   $9 	#FFE5E5E5��6   $	: 1.0Q�6)   5K     �� 5L     $ 	#FFACACAC��65   �� 5M     $ 	#FFFFFFFF��6B   �� 5N     $ 	#FFABADB3��6>   �� 5O     $ Transparent��6I   �� 5P     $ Transparent��6E   �� 5Q     $ 	#FF000000��67   �� 5R     $	7 0,1&�6@   $	8 0,0&�6O   .��5S  
   � $9 	#FFECF4FC��6   $	: 0.0Q�6)   � 5T  
   $9 	#FFDCECFC��6   $	: 1.0Q�6)   5U     �� 5V     $ 	#FF7EB4EA��68   �� 5W     $ 	#FFFFFFFF��6E   �� 5X     $ 	#FF7EB4EA��6A   �� 5Y     $	7 0,1&�6P   $	8 0,0&�6_   .��5Z  
   � $9 	#FFEBF4FC��6   $	: 0.0Q�6)   � 5[  
   $9 	#FFDCECFC��6   $	: 1.0Q�6)   5\     �� 5]     $ 	#FF7EB4EA��6H   �� 5^     $ 	#FF000000��65   �� 5_     $	7 0,1&�6>   $	8 0,0&�6M   .��5`  
   � $9 	#FFDAECFC��6   $	: 0.0Q�6)   � 5a  
   $9 	#FFC4E0FC��6   $	: 1.0Q�6)   5b     �� 5c     $ 	#FF569DE5��66   �� 5d     $ 	#FFFFFFFF��6C   �� 5e     $ 	#FF569DE5��6?   �� 5f     $	7 0,1&�6N   $	8 0,0&�6]   .��5g  
   � $9 	#FFDAEBFC��6   $	: 0.0Q�6)   � 5h  
   $9 	#FFC4E0FC��6   $	: 1.0Q�6)   5i     �� 5j     $ 	#FF569DE5��6F   �� 5k     $ 	#FFBFBFBF��66   �� 5l     $ 	#FFF0F0F0��6;   �� 5m     $ 	#FFD9D9D9��67   �� 5n     $ 	#FFFFFFFF��6D   �� 5o     $ 	#FFBFBFBF��6@   �� 5p     $ Transparent��6K   �� 5q     $ Transparent��6G   �� 5r     $ 	#FF606060��64   5t     