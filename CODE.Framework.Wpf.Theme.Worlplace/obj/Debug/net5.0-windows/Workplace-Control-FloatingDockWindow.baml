   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0894    .CODE.Framework.Wpf.Controls.FloatingDockWindow  �� 
TargetType �� Property /  +CODE.Framework-Application-BackgroundBrush1 �� Value*   $CODE.Framework.Wpf.Controls.WindowEx �� 
TargetType(   "CODE.Framework.Wpf.Controls.GridEx   
RowHeights * &CODE.Framework-Application-ThemeBrush1   ColumnWidths � Icon ��Name �� TextAlignment	 � Title  DefaultFont  FontSize-Normal / +CODE.Framework-Application-ForegroundBrush1
 �� Orientation9   3CODE.Framework.Wpf.Controls.DockWindowContentButton  Name0   *CODE.Framework.Wpf.Controls.MinimizeButton6   0CODE.Framework.Wpf.Controls.ToggleMaximizeButton-   'CODE.Framework.Wpf.Controls.CloseButton �� Triggers P� Property P� Value �� 
TargetName ��Name J� IsHitTestVisible  CODE.Framework-Icon-Pin . *CODE.Framework-Application-HighlightBrush1�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      RcontrolsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      %�  '         '  �    �� 5      "    6   .�5   
   ��  � ��# �   6'   �� 5   
    �@�ShowInTaskbar$
 True��6*   �� 5   
    �@  AutoDockOnClose$ False��6,   �� 5	   
    �@ HeaderHeight$ 26Q�6;   �� 5
   
    �@ DynamicIcon$ /Images/Application.png��6:   �� 5   
    �@ IsBorderless$
 True��6;   �� 5   
    �@ AutoWindowDragEnabled$
 True��6D   �� 5   
   ! �@ AutoWindowMaximizeEnabled$
 True��6H   �� 5   
   ! �@ AutoWindowResizingEnabled$
 True��6H   �� 5   
    � �� 5      �� 5      "   6"   .R�5      � $ Auto,*��6   #��z��6?   .+�5      �� $��3��6!   $��1q�62   #���  6F   � 5      $ Auto,*,Auto��6   .+�5      �� #��z 6$   $��Uniform=�6D   $��22��6V   $��22��6b   $	��8,4q�6m   �� 5      $ windowTitle��5   4   $��Center=�5   (   $��Center=�6C   $ Center=�6`   #��z	 5   I   $��1��6h   $
��20,5q�6x   #���  5   4   #���  6_   #���  5   4   �� 5      $
 
Horizontal=�6)   $��Right=�6B   $	��Top=�6^   $��22��6v   $��0,3,1,0q�6�   $��2��6�   .+�5   "     $ 
dockButton��6C   $y�	Collapsed=�6W     5   "     5   "     5   "   5      5       �� 5!      $��1��6+   .u�5"      �� $��1q�6/   5#      5$       5%      P� 5&       �@  AutoDockOnClose$ False��6=   . �5'      �� $ 
dockButton��6K    � y�$ Visible=�6;   6K   5(      5*      5,      5-      �� 5/      "   6   .�50   
   ��  � ��$ 28��6"   �� 51   
    � ��$ 22��6#   �� 52   
    � ��$ 1,0,0,0q�6#   �� 53   
    �@�Cursor$ Arrow��6#   �� 54   
    � �� 55      �� 56      "  6"   .R�57      � .+�58      �� $ bg��6$   
������ $
 True��6C   �� 59      $��2q�6$   #���  6/   $
 True��6`   5:       5;      P� 5<       �@J�IsMouseOver$
 True��69   . �5=      �� # �  65   $ bg��6z    � ��5>      5@      5B      5C      5E      