   M S B A M L   `   `   `  ����R  NCODE.Framework.Wpf.Mvvm, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.MvvmCODE.Framework.Wpf.Mvvm  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType   Metro-Control-Button �� Property / +CODE.Framework-Application-ForegroundBrush1 �� Value  FontSize-Normal  Metro-Button-Template  DefaultFont �� 
TargetType ��Name J� SnapsToDevicePixels �� ContentStringFormat �� ContentStringFormat ��Name	 J� Opacity
 �� Triggers P� Property P� Value �� 
TargetName �� BasedOn2    ,CODE.Framework.Wpf.Mvvm.ViewActionMenuButton  Metro-Control-TileButton � 	Resources  Key �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value * &CODE.Framework-Application-ThemeBrush1 ��Name J� RenderTransformOrigin :� RoutedEvent  Pressed�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OmvvmFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.Mvvm  5      %0  &	        &	 ^    '�� ]    7   '       7   &	 �    7  �� 5      "  ��6   .�5   
   ��  � ��# �  6(   �� 5   
    � �� 6'   Z� �� 5   
    � ��$ 2q�6,   �� 5	   
    � ��# �  6'   �� 5
   
    � ��# �  6%   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   �� 5   
    � ��$ 27��6&   �� 5   
    � ��$	 8,0q�6$   5      �� 5      " ��6   .R�5   
   � .+�5      �� $ Chrome��6   $��1q�6%   #��z��69   #��z��6e   $
 True��6�   ._�5      �� $ Chrome2��6   $��2q�6*   
������ 
������ $
 True��6q   ._�5      �� #��z��6'   #��z��6[   # z 6   #��z��6�   #��z��6�   $
��True��6!  # z 6<  #��z��6x  5      5      �� 5      $ 	rectangle��6   #��z��6+   $	 0Q�6P   5      
 5   
   P� 5       �@J�IsMouseOver$
 True��6-   . �5      �� $ 	rectangle��6,    �@J�Opacity$	 0.5Q�6C   5      P� 5       � {�$ False��6+   . �5      ��  � �� �	#FFADADAD6/   5       P� 5!       �@J�IsMouseCaptureWithin$
 True��66   . �5"      �� # �  60   $ Chrome2��6v    � ��5#      P� 5$       �@J�IsKeyboardFocused$
 True��63   . �5%      �� # �  60   $ Chrome2��6v    � ��5&      P� 5'       �@J�	IsFocused$
 True��6+   . �5(      �� # �  60   $ Chrome2��6v    � ��5)      5+      �� 5-      "  ��6   8   6)   �� 5.      "    6   8   6<   �� 50      "  ��6   .�51   
   ��  � ��# �  6'   �� 52   
    � �� 53      �� 54      " ��6"    55      ���� 56      Pressed .��57      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�63   $ contentPresenter��6�   .\�58        $ 0:0:0.1��6+   $	 0.9Q�6=     59      $ 0:0:0.2��6+   $ 1Q�6=   5:      U� 5;      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�63   $ contentPresenter��6�   .\�5<        $ 0:0:0.1��6+   $	 0.9Q�6=     5=      $ 0:0:0.2��6+   $ 1Q�6=   5>      5?      5@      .R�5A      � #���  6   .+�5B      �� $ contentPresenter��6+   #��z��6E   #��z��6y   # z 6�   $��Stretch=�5C   +   $��Stretch=�6I   $
��True��5D   +   # z 5E   +   $ 0.5,0.5&�6g   z�5G      V� 5H      .~�5I      �� �� 5J      �� 5K      T� 5L      5M      5O      �� 5P      $ ButtonOutline��6x   
���   �$��3��63   $y�Hidden=�6W   $	 .5Q�6k   ��6G   Z� 6x   5Q      
 5R      :� 5S      $! UIElement.MouseLeftButtonUp��6!   .[�5T      �� 8��  6%   5U      P� 5V       �@J�IsMouseOver$
 True��69   . �5W      �� $ ButtonOutline��6K    � y�$ Visible=�6;   6K   5X      5Z      5\      5]      5_      