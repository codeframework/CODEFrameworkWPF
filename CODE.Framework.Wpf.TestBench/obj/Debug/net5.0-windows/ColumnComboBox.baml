   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5   	     CODE.Framework.Wpf.TestBench1   +CODE.Framework.Wpf.TestBench.ColumnComboBox   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ScEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf     5   	     � Title$  ColumnComboBox��5   	   $	��600��6    $
��1300��6-    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $B </CODE.Framework.Wpf.Theme.Workplace;component/ThemeRoot.xaml?�6%   %    5      .��5      � .+�5   
   �� -   5         ��Name$ combo��5   ^   $��10q�6   $	��Top=�6   $
��Left=�67   $	��300��6R   (   "CODE.Framework.Wpf.Controls.ListEx   Columns 5      7   1CODE.Framework.Wpf.Controls.ListColumnsCollection     EditModeBindingPath$  ��6*      AllowColumnMove$
 True��6A      ShowFooters$
 True��6X   	   DetailExpandedPath$	 
IsExpanded��6k    
   DefaultDisplayBindingPath$
 Text3��6�   -   5        columns��   DetailTemplate 5      �� 5      .R�5      �� $��10q�6(   $
��Wrap=�64   $����The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. ��6H   5      ,   &CODE.Framework.Wpf.Controls.ListColumn  5         BindingPath$ Text1��6#      Header$ Text 1��67      Footer$ Footer 1��6G      IsResizable$
 True��6Y      Width$	 100 �6l      
AutoFilter$
 True��6x      CellContentAlignment$ Stretch=�6�     5      $ 	IsChecked��6#   $ C1��6;      EditMode$ ReadWriteAll=�6G   $
 True��6_   $ 50 �6r      ColumnControl$ 	Checkmark=�6}     5      $ 	IsChecked��6#   $ C2��6;   $
 True��6G   $ 50 �6Z   $ 	Checkmark=�6e   -   5        c2��5        5       $ Text2��6#   $ Text 2��67   $
 True��6G   $	 200 �6Z   $   HeaderClickCommandBindingPath$ HeaderClick��6f      HeaderTextAlignment$ Right=�6�   $ ReadWriteAll=�6�      AutoSort$
 True��6�      	SortOrder$ 	Ascending=�6�     5!      $ Text3��6#   $ Text 3��67   $
 True��6G   $	 150 �6Z   $ HeaderClick��6f   $ Center=�6�   $ 
Descending=�6�      CellBackground
 ��d�6�     5"      $ Text4��6#   $ Text 4��67   $
 True��6G   $	 200 �6Z   $ HeaderClick��6f      HeaderTemplate 5#      �� 5$      .R�5%   "   � (   "CODE.Framework.Wpf.Controls.GridEx   
RowHeights$ Auto,10��6'   $��Stretch=�6E   .+�5&   &   �� $��3q�6.   .��69   This is some text6L   5'   #   5(         FooterTemplate 5*      �� 5+      .R�5,   "   � $ Auto,10��6'   $��Stretch=�6E   .+�5-   &   �� $��3q�6.   .��69   This is some text6L   5.   #   5/      51        52      $ Text 5��6#   $
 True��63   $	 100 �6F   $ HeaderClick��6R      ItemTemplate 53      �� 54      .R�55   "   ��  �� Orientation$ 
Horizontal=�6-   $��Stretch=�6F   .+�56   &   �� 
���  ��$��10��6;   $��10��6G   $��2q�6R   �� 57   &   ��6.   �� *Text5+�� 58   &   
��� � �$��10��6=   $��10��6I   $��2q�6T   59   #   5:      5<        5=      $ Text6��6#   $ List 1��67   $
 True��6G   $	 150 �6Z   $ ReadWriteAll=�6f   $ TextList=�5>   #   %   TextListItemsSourceBindingPath$ TextList��6<     5?      $ Text6��6#   $ List 1 Control��67   $
 True��6O   $	 150 �6b    �#CAFFD56n   5@      5B      5C      5D      