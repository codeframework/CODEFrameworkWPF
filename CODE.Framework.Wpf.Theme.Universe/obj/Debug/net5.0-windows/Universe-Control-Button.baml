   M S B A M L   `   `   `  ����R  NCODE.Framework.Wpf.Mvvm, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.MvvmCODE.Framework.Wpf.Mvvm  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType   Universe-Control-Button �� Property �� Value / +CODE.Framework-Application-ForegroundBrush1  FontSize-Normal  Universe-Button-Template  DefaultFont �� 
TargetType ��Name J� SnapsToDevicePixels �� ContentStringFormat �� ContentStringFormat �� Triggers	 P� Property
 P� Value * &CODE.Framework-Application-ThemeBrush1 �� BasedOn2    ,CODE.Framework.Wpf.Mvvm.ViewActionMenuButton  Universe-Control-TileButton � 	Resources  Key �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value ��Name J� RenderTransformOrigin ��Name J� Opacity :� RoutedEvent  Pressed �� 
TargetName�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OmvvmFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.Mvvm  5      %
  &	        &	 q    '�� A    7   '   c    7   &	 �    7  �� 5      "  ��6   .�5   
   ��  � �� �	#330000006(   �� 5   
    � �� �	#330000006'   �� 5   
    � ��$ 2q�6,   �� 5	   
    � ��# �  6'   �� 5
   
    � ��# �  6%   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � ��$ 30��6&   �� 5   
    � ��$
 12,4q�6$   5      �� 5      " ��6   .R�5   
   � .+�5      �� $ Chrome��6   #��z��6%   #��z��6Y   #��z��5      $
 True��6?   ._�5      �� #��z��6#   #��z��6W   # z 5   %   #��z��5   %   #��z��5   %   $
��True��6H   # z 5   %   #��z��5   %   5      5       5   
   P� 5      	 �@J�IsMouseOver$

 True��6-   . �5      ��  � �� �	#440000006/   �� 5        � �� �	#6600000060   5!      P� 5"      	 � {�$
 False��6+   . �5#      ��  � �� �	#FFADADAD6/   5$      P� 5%      	 �@��	IsDefault$

 True��6+   . �5&      �� # �  6/    � ���� 5'      # �  60    � ���� 5(       � ��
 �����6/   5)      5+      �� 5-      "  ��6   8   6    �� 5.      "    6   8   63   �� 50      "  ��6   .�51   
   ��  � ��# �  6'   �� 52   
    � �� 53      �� 54      " ��6"    55      ���� 56      Pressed .��57      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $ contentPresenter��6�   .\�58   "     $ 0:0:0.1��67   $	 0.9Q�6I     59   "   $ 0:0:0.2��67   $ 1Q�6I   5:      U� 5;      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $ contentPresenter��6�   .\�5<   "     $ 0:0:0.1��67   $	 0.9Q�6I     5=   "   $ 0:0:0.2��67   $ 1Q�6I   5>      5?      5@      .R�5A      � #���  6   .+�5B      �� $ contentPresenter��6+   #��z��6E   #��z��6y   # z 6�   $��Stretch=�5C   +   $��Stretch=�6I   $
��True��5D   +   # z 5E   +   $ 0.5,0.5&�6g   z�5G      V� 5H   "   .~�5I   &   �� �� 5J   &   �� 5K   &   T� 5L   &   5M   #   5O      �� 5P      $ ButtonOutline��6x   
���   �$��3��63   $y�Hidden=�6W   $ .5Q�6k   ��6G   Z� 6x   5Q       5R      :� 5S      $! UIElement.MouseLeftButtonUp��6'   .[�5T      �� 8��  6.   5U      P� 5V      	 �@J�IsMouseOver$

 True��69   . �5W      �� $ ButtonOutline��6K    � y�$ Visible=�6;   6K   5X      5Z      5\      5]      5_      