   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType $   Metro-Control-FlowDocumentReader �� 	Resources  Key �� Color �� Property �� Value-   'System.Windows.Input.KeyboardNavigation  FontSize-Normal  DefaultFont �� 
TargetType � 	Resources(   "CODE.Framework.Wpf.Controls.GridEx   
RowHeights ��Name	    	IsTabStop
    TabIndex    TabNavigation   ColumnWidths �� Orientation d�Name � ToolTip 7 3Metro-Control-FlowDocumentReaderToolbarToggleButton  CODE.Framework-Icon-Search ��Name -� CanGoToPreviousPage 7 3Metro-Control-FlowDocumentReaderToolbarRepeatButton   CODE.Framework-Icon-Previous �� RelativeSource -� CanGoToNextPage  CODE.Framework-Icon-Next 	�Name 	� 	GroupName -� IsPageViewEnabled 6	 2Metro-Control-FlowDocumentReaderToolbarRadioButton 
 CODE.Framework-Icon-Page -� IsTwoPageViewEnabled  CODE.Framework-Icon-TwoPage -� IsScrollViewEnabled  CODE.Framework-Icon-Sort -� CanDecreaseZoom  CODE.Framework-Icon-ZoomOut -� CanIncreaseZoom  CODE.Framework-Icon-ZoomIn �� Triggers P� Property P� Value �� 
TargetName �� BasedOn  �� Triggers , (CODE.Framework-Metro-IconForegroundBrush  FontSize-Smaller! J� IsHitTestVisible" A�Name# J� Opacity�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      RControlsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      %t  &	        '-� V    7   &	 x    &	 �    &		 �    �� 5      "  -�6    5   
   ���� 5      ,(CODE.Framework-Metro-IconForegroundBrush $ Black��6O   5      .�5	   
   ��  � ��
 �����6'   �� 5
   
    �@  TabNavigation$ Local=�6=   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � �� 5      �� 5      " -�6"    5      ���� 5      '��       "  ��6    .�5      ��  � ��$ 16��67   �� 5       � ��$ 16��66   5      5      .R�5      � #��z��6   $ *,Auto��6E   .+�5      �� $ PART_ContentHost��6!   $	 False��6;   $
 1��6`   $ Local=�6�   #��z��6�   � 5      $��1��6   $ *,Auto,*��6,   $��5q�6T   .+�5      �� $ 
Horizontal=�6)   .+�5   "   d� $ 
FindButton��6/   $��ApplicationCommands.Find��6C   $|�False��6f   $��0,0,5,0q�6x   $
 Find��6�   #���  6�   .��5   &   �� #���  60   5   #   �� 5   "   $ PART_FindToolBarHost��6)   $y�	Collapsed=�6G   $��Center=�6^   5      �� 5      $ PageCountAndButtons��6)   $��1��6F   $��Center=�6V   $ 
Horizontal=�6s   $��Center=�6�   .+�5    "   �� $%��NavigationCommands.PreviousPage��6/   #{�z 6Y   $ Previous Page��6�   #���  6�   .��5!   &   �� $��12��60   $��12��6<   #���  6G   5"   #   �� 5#   "   $��3,0,0,0q�6,   $��Center=�6�   $��Center=�6�   ��6=   �� *
PageNumber+ �� *TemplatedParent+6�   �� 5$   "   $��3,0,0,0q�6,   $��of��6=   $��Center=�6G   $��Center=�6d   �� 5%   "   $��3,0,3,0q�6,   $��Center=�6�   $��Center=�6�   ��6=   �� *	PageCount+ �� *TemplatedParent+6�   �� 5&   "   $!��NavigationCommands.NextPage��6/   #{�z 6U   $ 	Next Page��6�   #���  6�   .��5'   &   �� $��12��60   $��12��6<   #���  6G   5(   #   5)      �� 5*      $��2��6)   $ 
Horizontal=�69   $��Right=�6R   $��Center=�6n   .+�5+   "   �� $ 
Horizontal=�6-   $��0,0,10,0q�6F   .+�5,   &   	� $ PageViewButton��62   $
��Page��6J   $1��+FlowDocumentReader.SwitchViewingModeCommand��6b   $ ViewingMode��6�   #{�z 6�   $ 	Page Mode��6�   #��� 	 6�   .��5-   *   �� #��� 
 64   5.   '   	� 5/   &   $ TwoPageViewButton��62   $��TwoPage��6M   $1��+FlowDocumentReader.SwitchViewingModeCommand��6h   $ ViewingMode��6�   #{�z 6�   $ Two Page Mode��6�   #��� 	 6  .��50   *   �� #���  64   51   '   	� 52   &   $ ScrollViewButton��62   $��Scroll��6L   $1��+FlowDocumentReader.SwitchViewingModeCommand��6f   $ ViewingMode��6�   #{�z 6�   $ Scroll Mode��6�   #��� 	 6�   .��53   *   �� #���  64   54   '   55   #   �� 56   "   $��1��6/   $%��NavigationCommands.DecreaseZoom��6?   #{�z 6i   $ Decrease Zoom��6�   #���  6�   .��57   &   �� #���  60   58   #   �� 59   "   $��3,0,0,0q�6s   $��Center=�6�   ��6,   �� *Zoom+ �� *TemplatedParent+6�   �� 5:   "   $��%��6,   $��0,0,3,0q�65   $��Center=�6F   �� 5;   "   $��3��6/   $%��NavigationCommands.IncreaseZoom��6?   #{�z 6i   $ Increase Zoom��6�   #���  6�   .��5<   &   �� #���  60   5=   #   5>      5?      5@       5A      P� 5B       �@-�ViewingMode$
 Page=�69   . �5C      �� $ PageViewButton��6:    �@d�	IsChecked$
 TrueY�6V   5D      P� 5E       �@-�ViewingMode$ TwoPage=�69   . �5F      �� $ TwoPageViewButton��6:    �@d�	IsChecked$
 TrueY�6Y   5G      P� 5H       �@-�ViewingMode$ Scroll=�69   . �5I      �� $ ScrollViewButton��6:    �@d�	IsChecked$
 TrueY�6X   �� 5J      $ PageCountAndButtons��6;    � y�$ 	Collapsed=�6\   5K      P� 5L       66   Z�  � ��. �5M      �� $ 
FindButton��6:    � {�$ False��6R   5N      P� 5O       �@-�IsFindEnabled$ False��6;   . �5P      �� $ 
FindButton��6:    � {�$ False��6R   5Q      5S      5U      5V      �� 5X      "  -�6   8   6,   �� 5Z      "  d�6H    5[   
   ���� 5\      ,(CODE.Framework-Metro-IconForegroundBrush $ Black��6O   5]        5^   
   P� 5_       � {�$ False��6+   . �5`      ��  � ��
 �����6/   5a      .�5c   
   ��  � ��# �  6'   �� 5d   
    � ��$ Stretch=�6.   �� 5e   
    � ��# �  6'   �� 5f   
    � ��# �  6%   �� 5g   
    � �� 5h      �� 5i      " d�6"   .R�5j      � $
��Auto��6   $��30��6(   .+�5k      �� $��2��6$   $
! True��65   
������ 6M   A� 5l      $" hoverHighlight��5n   E   $��Center=�5l   "   $��Center=�6=   #��z��5m   "   $��30��5n   "   $��30��6.   $# 0Q�69   6E   A� 5o      $��Center=�6"   $��Center=�6=   #��z��5p   "   $��2��6H   $��30��5q   "   $��30��6.   �� 5r      $��Center=�6+   $��Center=�6H   5s       5t      P� 5u       �@J�IsMouseOver$
 True��69   . �5v      �� $ hoverHighlight��68    �@J�Opacity$	 0.2Q�6T   5w      5y      5{      5|      �� 5~      "  ��6H    5   
   ���� 5�      ,(CODE.Framework-Metro-IconForegroundBrush $ Black��6O   5�        5�   
   P� 5�       � {�$ False��6+   . �5�      ��  � ��
 �����6/   5�      .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��$ Stretch=�6.   �� 5�   
    � ��# �  6'   �� 5�   
    � ��# �  6%   �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      � $
��Auto��6   $��30��6(   .+�5�      �� $��2��6$   $
! True��65   
������ 6M   A� 5�      $" hoverHighlight��5�   E   $��Center=�5�   "   $��Center=�6=   #��z��5�   "   $��30��5�   "   $��30��6.   $# 0Q�69   6E   A� 5�      $��Center=�6"   $��Center=�6=   #��z��5�   "   $��2��6H   $��30��5�   "   $��30��6.   �� 5�      $��Center=�6+   $��Center=�6H   $��2��6c   5�       5�      P� 5�       �@J�IsMouseOver$
 True��69   . �5�      �� $ hoverHighlight��68    �@J�Opacity$	 0.2Q�6T   5�      5�      5�      5�      �� 5�      "  	�6G    5�   
   ���� 5�      ,(CODE.Framework-Metro-IconForegroundBrush $ Black��6O   5�        5�   
   P� 5�       � {�$ False��6+   . �5�      ��  � y�$ 	Collapsed=�6/   5�      .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��$ Stretch=�6.   �� 5�   
    � ��# �  6'   �� 5�   
    � ��# �  6%   �� 5�   
    � �� 5�      �� 5�      " 	�6"   .R�5�      � $
��Auto��6   $��30��6(   .+�5�      �� $��2��6$   $
! True��65   
������ 6M   A� 5�      $" hoverHighlight��5�   E   $��Center=�5�   "   $��Center=�6=   #��z��5�   "   $��30��5�   "   $��30��6.   $# 0Q�69   6E   A� 5�      $��Center=�6"   $��Center=�6=   #��z��5�   "   $��2��6H   $��30��5�   "   $��30��6.   �� 5�      $��Center=�6+   $��Center=�6H   $��2��6c   5�       5�      P� 5�       �@J�IsMouseOver$
 True��69   . �5�      �� $ hoverHighlight��68    �@J�Opacity$	 0.2Q�6T   5�      P� 5�       �@d�	IsChecked$
 TrueY�67   . �5�      �� $ hoverHighlight��68    �@J�Opacity$	 0.4Q�6T   5�      5�      5�      5�      5�      