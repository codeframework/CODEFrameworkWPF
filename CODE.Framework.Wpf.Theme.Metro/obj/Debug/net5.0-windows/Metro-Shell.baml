   M S B A M L   `   `   `  ����R  NCODE.Framework.Wpf.Mvvm, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.MvvmCODE.Framework.Wpf.Mvvm  5      Y UCODE.Framework.Wpf.Theme.Metro, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulla5clr-namespace:CODE.Framework.Wpf.Theme.Metro.Controls'CODE.Framework.Wpf.Theme.Metro.Controls 5      M ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls 5      _4clr-namespace:CODE.Framework.Wpf.Theme.Metro.Classes&CODE.Framework.Wpf.Theme.Metro.Classes 5      aCclr-namespace:CODE.Framework.Wpf.Layout;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Layout 5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#    CODE.Framework.Wpf.Mvvm.Shell  �� 
TargetType '  #CODE.Framework.Wpf.Mvvm.Shell-Style �� Property / +CODE.Framework-Application-BackgroundBrush3 �� Value*  $CODE.Framework.Wpf.Controls.WindowEx * &CODE.Framework.Wpf.Mvvm.Shell-Template)  #CODE.Framework.Wpf.Controls.TouchEx  CornerLogo-Height  CornerLogo-Width �� 
TargetType � 	Resources  Key �� TargetProperty �� 
TargetName R� KeyTime  System.Windows.Visibility   Visible	 R� Value
   	Collapsed9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value(  "CODE.Framework.Wpf.Controls.GridEx   
RowHeights / +CODE.Framework-Application-BackgroundBrush1 K� ZIndex   ColumnWidths �� Orientation � Icon2   ,CODE.Framework.Wpf.Mvvm.ViewActionStackPanel   Model   SelectedView �� Path �� ElementName �� Mode ��Name �� TextAlignment � Title  DefaultFont  FontSize-Normal /	 +CODE.Framework-Application-ForegroundBrush10  *CODE.Framework.Wpf.Controls.MinimizeButton6  0CODE.Framework.Wpf.Controls.ToggleMaximizeButton-	  'CODE.Framework.Wpf.Controls.CloseButton 
 
CornerLogo=
  7CODE.Framework.Wpf.Theme.Metro.Controls.ShellTabControl 
 Name 
  	HomeTitle    NormalViews 1 -CODE.Framework.Wpf.Mvvm.Shell-NormalViewsHost 
  HomePageVisible �� SelectedIndex �� RelativeSource  
  HomePage4   .CODE.Framework.Wpf.Mvvm.ViewActionItemsControl!   Model*  $CODE.Framework.Wpf.Layout.MetroTiles / +CODE.Framework-Application-ForegroundBrush2"   HeaderForegroundBrush#   RenderHeaders$ �� ContentStringFormat% �� ContentStringFormat8   2CODE.Framework.Wpf.Mvvm.TopLevelViewHostTabControl&  Name'    TopLevelViews(    SelectedTopLevelView 3 /CODE.Framework.Wpf.Mvvm.Shell-TopLevelViewsHost)   NormalViewHost* �Name 3 /CODE.Framework-Metro-StatusReadyBackgroundBrush+ J� Opacity, ��Name-    CurrentStatusView  FontSize-Large 3 /CODE.Framework-Metro-StatusReadyForegroundBrush.    CurrentNotifications  NotificationItemTemplate/ �� Triggers0 P� Property1 P� Value2 �� 
TargetName 8 4CODE.Framework-Metro-StatusProcessingBackgroundBrush 8 4CODE.Framework-Metro-StatusProcessingForegroundBrush 5 1CODE.Framework-Metro-StatusWarningBackgroundBrush 5 1CODE.Framework-Metro-StatusWarningForegroundBrush 3 /CODE.Framework-Metro-StatusErrorBackgroundBrush 3 /CODE.Framework-Metro-StatusErrorForegroundBrush3 :� RoutedEvent4 ��Name  ApplicationStatusChangedE  ?CODE.Framework.Wpf.Theme.Metro.Controls.SizeAwareContentControl5   MaximumMargin6   MinimumMargin 7   MinimumDesiredControlSize-   'CODE.Framework.Wpf.Mvvm.ModelStatusGrid8  Name9   Model: � 	Resources;   5CODE.Framework.Wpf.Mvvm.ModelStatusToVisibleConverter:  4CODE.Framework.Wpf.Theme.Metro.Controls.ProgressRingG  ACODE.Framework.Wpf.Theme.Metro.Controls.CircularProgressAnimation;   IsActive ! ModelStatusToVisibleConverter< �� 	Converter(   "CODE.Framework.Wpf.Mvvm.ActionGrid=   Model0   *CODE.Framework.Wpf.Mvvm.ActionItemsControl>   Model * &CODE.Framework-Application-ThemeColor1? �� Color@ �� OpacityA ��Name # Metro-Control-AppBarButtonStyleB �� 	IsDefaultC �� IsCancelD �� TriggersE �� ValueF �� Binding * &CODE.Framework.Wpf.Mvvm.Shell-ViewHostG   HiddenH J� SnapsToDevicePixels-  'System.Windows.Input.KeyboardNavigationI   TabNavigationJ � RowDefinitionsK � ColumnDefinitionsL ��Name . *CODE.Framework-Application-HighlightBrush1M ��Name * &CODE.Framework-Application-ThemeBrush1N �� CornerRadiusO ��Name  FontSize-Larger /  +CODE.Framework-Application-ShellHeaderBrush ! ViewHostTabItemHeaderScrollP ��NameQ K� IsItemsHostR   TabIndexS J� RenderTransformOriginT   DirectionalNavigationU ��NameV �� SelectedContentTemplateW �� SelectedContent"X �� SelectedContentStringFormatY P� 
SourceNameZ N� ExitActions " ShowHomepage[ N� EnterActions # HideHomepage $ 
SwitchPageY  SCODE.Framework.Wpf.Theme.Metro.Classes.HorizontalScrollEnabledToVisibilityConverter 0% ,HorizontalScrollEnabledToVisibilityConverter\ `� 	Converter & Metro-Icon-Arrow] ��Name^ �� Angle_ ��Name3   -CODE.Framework.Wpf.Mvvm.SizeStrategyAwareGrid`  Namea ��Name2   ,CODE.Framework.Wpf.Mvvm.ViewResultHeaderGridb  Namec   
ViewResultd ��Name0   *CODE.Framework.Wpf.Mvvm.ViewContentControle  Namef   ViewContentg   SizeStrategyHost ' Metro-Button-Template 1( -CODE.Framework.Wpf.Mvvm.Shell-MessageBox-Text 2) .CODE.Framework.Wpf.Mvvm.Shell-MessageBox-Image 4* 0CODE.Framework-Metro-NotificationForegroundColor 4+ 0CODE.Framework-Metro-NotificationBackgroundColor 4, 0CODE.Framework-Metro-NotificationForegroundBrushh J� IsHitTestVisible�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OmvvmFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.Mvvm  5      <mc5clr-namespace:CODE.Framework.Wpf.Theme.Metro.Controls  5      KcEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      @classes4clr-namespace:CODE.Framework.Wpf.Theme.Metro.Classes  5      NlayoutCclr-namespace:CODE.Framework.Wpf.Layout;assembly=CODE.Framework.Wpf  5      1system&clr-namespace:System;assembly=mscorlib  5      %*N  &	        &	 �    &	 �    &	 �    7  &	     7  7 " 7 # 7 $ &	! �+    7 % 7 % &	 \1    &	 �4    &	( @    &	) AA    &	 �A    '	  C    '  OF    '  /K    �� 5
      "    6   .�5   
   ��  � ��# �  6'   �� 5   
    �@  TopLevelViewLaunchMode$ InPlace=�63   �� 5   
    �@ DynamicIcon$ /Images/Application.png��63   �� 5   
    �@ IsBorderless$
 True��64   �� 5   
    �@ HeaderHeight$ 26Q�64   �� 5   
    �@ AutoWindowDragEnabled$
 True��6=   �� 5   
   ! �@ AutoWindowMaximizeEnabled$
 True��6A   �� 5   
   ! �@ AutoWindowResizingEnabled$
 True��6A   �� 5   
    �@�WindowState$ 	Maximized=�6(   �� 5   
    � ��# �  6%   �� 5   
   % �@ UpdatePointingDeviceInputMode$
 True��6D   5      X�5      60Q�62   X�5      150Q�62   �� 5      "   6    5      ���� 5      ApplicationStatusChanged .��5   	   T� $ (UIElement.Visibility)�6'   $ 
statusGrid��6Z   ..�5   
   i� $ 0��6!   #	 Z 6-   i� 5    
   $ 0:0:11��6!   #	 Z 62   i� 5!   
   $ 0:0:11.1��6!   #	 Z
 64   5"   
   U� 5#   	   $ (UIElement.Opacity)�6'   $ 
statusGrid��6W   .\�5$   
     $ 0:0:0.2��6   $ 1Q�61     5%   
   $ 0:0:10��6   $ 1Q�60     5&   
   $ 0:0:11��6   $ 0Q�60   5'   
   5(   	   5)      .R�5*   
   � $ 	30,*,Auto��6   #��z��6/   .+�5/      �� #���  6   $��1q�6a   $��3��6u   $ 10001��6�   � 50      $ Auto,*,Auto��6   $��Stretch=�67   .+�51      �� $ 
Horizontal=�6   .+�52      �� #��z 6   $��Uniform=�6<   $��22��6N   $��22��6Z   $	��8,4q�6e     53      $ 
Horizontal=�60   $��Right=�6I   $��Stretch=�6e    54   0   ��  6B   �� $ SelectedItem�$ 	OpenViews��$ OneWay=�55      �� 56      $ windowTitle��57      $��Center=�56      $��Center=�67   $ Center=�6T   #��z 57   1   $��1��6P   $
��20,5q�6`   #���  58      #���  6G   #��� 	 59      �� 5:      $ 
Horizontal=�6   $��Right=�66   $	��Top=�6R   $��22��6j   $��0,3,1,0q�6v   $��2��6�   .+�5;          5<      	  5=      5>      5?      �� 5@      #��� 
 6   $	��Top=�6<   $��Right=�6T   $��20q�6p   $��1��6|   #���  6�   #���  6�   
  5A      $ normalViewHost��5F   !   $ Start��5A   !   $��1��63   #��z 5B   !   #���  5D   !   $
 true��5E   !    5C   !   �� *SelectedNormalView+ �� *TemplatedParent+$ TwoWay=�  5G        5H      $��Stretch=�62   $
��Left=�6N   ! 6i   �� *.+��5I      �� 5J      .R�5K   "     #" �  64   $
# True��5L   4   $
��Left=�6I   $	��Top=�6d   $��	0,30,40,0q�5M   4   5N      5P      5R      �� 5S      #��z��6   #��z��6S   #% z$ 6w   $��1��6�     5T      $& 
tabControl��6.   #��z' 6B   $��1��6p   # z( 5U   .   #���  5V   .   ) 5W   .   �� $ normalViewHost��� 5X      $* 
statusGrid��5Z      $��Bottom=�5X      $
��Auto��6.   $��2��6<   #���  5Y   
   $y�	Collapsed=�5Z      $+ 0Q�62   .+�5[      �� $, statusContent��6`   #��z- 6!   $��5,2,5,3q�6O   #���  5\   !   #���  6L   $��Light"�6x   #���  5]   !   5^      �� 5_      $	��Top=�6   $��Right=�63   $��10q�6O   $	��310��6[   $��Right=�6g   $��1��6�   #��z. 5`      #���  6P   5a      / 5b   
   P� 5c      0 �@  TopLevelViewCount$1 0��63   . �5d      �� $2 
tabControl��6/    � y�$ 	Collapsed=�6G   5e      P� 5f       0 �@  CurrentApplicationStatus$1 
Processing=�6:   . �5g      �� $2 
statusGrid��6/   # �  6G    � ���� 5h      $2 statusContent��6/   # �  6J    � ��5i      P� 5j       0 �@  CurrentApplicationStatus$1 Warning=�6:   . �5k      �� $2 
statusGrid��6/   # �  6G    � ���� 5l      $2 statusContent��6/   # �  6J    � ��5m      P� 5n       0 �@  CurrentApplicationStatus$1 Error=�6:   . �5o      �� $2 
statusGrid��6/   # �  6G    � ���� 5p      $2 statusContent��6/   # �  6J    � ��5q      :� 5r      $3 mvvm:Shell.StatusChanged��6   .[�5s      �� $.4 (ApplicationStatusChanged_BeginStoryboard��6   8��  6Q   5t      5v      �� 5x      "  
 6   .�5y   
   ��  � �� 6'   Z� �� 5z   
    � �� 6(   Z� �� 5{   
    �@��ContentTemplate 5|      �� 5}      .R�5~      � $ *,Auto��6   .+�5      �� .u�5�        $5 116,20,20,0q�6R   $6 
20,20,20,0q�6n   $7 900,600��6�   ��69   �� *View+6�   5�        5�      $8 modelStatus��6   $��Center=�6G   $��Center=�6b   9 6/   �� *Model+: 5�      ��  5�   "   !ModelStatusToVisibleConverter 6E   5�      .+�5�        $
; True��6.   $��50��6>   $��50��6J   y�5�   .   �� $ ModelStatus�$ modelStatus��8<   5�        5�      $��1��6*   = 67   �� *Model+.+�5�        $��Right=�6N   $��	10,5,10,0q�6j   $��false��6}   > 66   �� *Model+��5�   "   �� 5�   &    5�   *   ���� 5�   .   #? �  6>   $	@ .66Q�6   ButtonBackgroundBrush 6�   5�   +   .R�5�   *   �� $A toolbarButton��61   #���  5�   1   ��5�   1   �� *	Caption+��6M   �� B 5�   1   �� *	IsDefault+$ OneWay=�C 6^   �� *
IsCancel+$ OneWay=�5�   +   D 5�   *   �� 5�   .   $
E True��6Y   F 6:   �� *
BeginGroup+.a�5�   2   �� $2 toolbarButton��6\    � ��$ 20,0,0,0q�6K   6\   5�   /   5�   '   ��5�   "   �� 5�   &   .R�5�   *   �� $ 
Horizontal=�65   5�   '   5�      5�      5�      5�      5�      �� 5�   
    � ��# �  6/   �� 5�   
    � �� 5�      �� 5�      " 
 6"    5�      ���� 5�      ShowHomepage .��5�      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6<   $ ContentPanel��6�   .\�5�   "     $ 0��67   $ 0Q�6C     5�   "   $ 0:0:0.3��67   $	 200Q�6I   5�      U� 5�      $ (UIElement.Opacity)�6<   $ ContentPanel��6l   .\�5�   "     $ 0��67   $ 1Q�6C     5�   "   $ 0:0:0.3��67   $ 0Q�6I   5�      T� 5�      $ (UIElement.Visibility)�6<   $ ContentPanel��6o   ..�5�   "   i� $ 0��69   #	 Z 6E   i� 5�   "   $ 0:0:0.3��69   #	 Z 6K   i� 5�   "   $ 0:0:0.4��69   #	 Z
 6K   5�      T� 5�      $ (UIElement.Visibility)�6<   $ contentControl��6o   ..�5�   "   i� $ 0��69   #	 ZG 6E   i� 5�   "   $ 0:0:0.3��69   #	 Z 6K   5�      U� 5�      $ (UIElement.Opacity)�6<   $ contentControl��6l   .\�5�   "     $ 0:0:0.3��67   $ 0Q�6I     5�   "   $ 0:0:0.4��67   $ 1Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $ contentControl��6�   .\�5�   "     $ 0:0:0.3��67   $	 0.5Q�6I     5�   "   $ 0:0:0.4��67   $ 1Q�6I     5�   "   $ 0:0:0.5��67   $ 1Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $ contentControl��6�   .\�5�   "     $ 0:0:0.3��67   $	 0.5Q�6I     5�   "   $ 0:0:0.4��67   $ 1Q�6I     5�   "   $ 0:0:0.5��67   $ 1Q�6I   5�      5�      �� 5�      HideHomepage .��5�      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6<   $ ContentPanel��6�   .\�5�   "     $ 0:0:0.5��67   $ 0Q�6I   5�      T� 5�      $ (UIElement.Visibility)�6<   $ ContentPanel��6o   ..�5�   "   i� $ 0:0:0.5��69   #	 Z 6K   5�      U� 5�      $ (UIElement.Opacity)�6<   $ ContentPanel��6l   .\�5�   "     $ 0:0:0.5��67   $ 1Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $ contentControl��6�   .\�5�   "     $ 0:0:0.2��67   $	 0.5Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $ contentControl��6�   .\�5�   "     $ 0:0:0.2��67   $	 0.5Q�6I   5�      U� 5�      $ (UIElement.Opacity)�6<   $ contentControl��6l   .\�5�   "     $ 0:0:0.1��67   $ 1Q�6I     5�   "   $ 0:0:0.2��67   $ 0Q�6I   5�      T� 5�      $ (UIElement.Visibility)�6<   $ contentControl��6o   ..�5�   "   i� $ 0:0:0.2��69   #	 Z
 6K   i� 5�   "   $ 0:0:0.3��69   #	 Z
 6K   5�      5�      �� 5�      
SwitchPage .��5�      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6<   $ ContentPanel��6�   .\�5�   "     $ 0:0:0.3��67   $	 200Q�6I     5�   "   $ 0:0:0.5��67   $ 0Q�6I   5�      T� 5�      $ (UIElement.Visibility)�6<   $ ContentPanel��6o   ..�5�   "   i� $ 0:0:0.3��69   #	 Z 6K   5�      U� 5�      $ (UIElement.Opacity)�6<   $ ContentPanel��6l   .\�5�   "     $ 0:0:0.0��67   $ 0Q�6I     5�   "   $ 0:0:0.3��67   $ 0Q�6I     5�   "   $ 0:0:0.5��67   $ 1Q�6I   5�      5�      5�      .R�5�      � $
}�True��6   $
H True��6/   $I Local=�6J   J 5�      �� 5�      $
��Auto �6,   �� 5�      $��* �6,   .+�5�      � K 5�      �� 5�   "   $��40 �63   �� 5   "   $
��Auto �63   �� 5  "   $��* �63   .+�5     � $* 	HomePanel��6#   $��1��66   .+�5  "   �� $L 	rectangle��6,   #���  6?   $	+ 0.5Q�6�   $y�	Collapsed=�6�   �� 5  "   $M Bd��6)   $��2q�65   $��Bottom=�6I   $��4��6d   #���  6o   $N 2��6�   $y�Visible=�6�   �� 5  "   $O Content��6�   #��z 6(   #���  6N   $��Light"�6{   $��	0,30,0,10q�6�   $��Center=�6�   $	��Top=�6�   #���   6�   5     �� 5     $��2��6+   $ 1��6;   #��� ! 6L   $��	0,0,200,0q�6�   $��Disabled=�6�   $��Hidden=�6�   .��5	  "   �� $P HeaderPanel��6F   $ 
Horizontal=�6-   $
Q True��6[   $R 1��6n   $ 1��6�   5
     5     �� 5     $, contentControl��6   #��z  6/   $
��Left=�5  )   $y�	Collapsed=�5  )   $��1��6@   $S 0.5,0.5&�5  )   z�5  	   V� 5  
   .~�5     �� �� 5     �� 5     T� 5     5     5  	   �� 5     $M ContentPanel��6!   #��z��5  !   #��z��5  !   #��z��5  !   $T 	Contained=�5  !   $R 2��5  !   $I Local=�5  !   $��1��5   !   $S 0.5,0.5&�6.   z�5"     V� 5#     .~�5$     �� �� 5%     �� 5&     T� 5'     5(     ._�5*     �� $U PART_SelectedContentHost��6/   #��zV 5+  /   #��zW 5,  /   #% zX 5-  /   $��SelectedContent��5.  /   #��z��5/  /   #H zH 50  /   51     52     / 53     P� 54     $Y 	HomePanel��6F   0 �@J�IsMouseOver$
1 True��69   . �55     �� $2 	rectangle��6;    � y�$ Visible=�6R   56     P� 57     0 �@
 HomePageVisible$1 False��6=   . �58     �� $2 Bd��6;    � y�$ Hidden=�6K   Z 5:     �� 5;  "   $"4 ShowHomepage_BeginStoryboard��62   8�� 6X   [ 5=     �� 5>  "   $"4 HideHomepage_BeginStoryboard��62   8�� 6X   5@     :� 5A     $3 PageSwitched��6'   .[�5B     �� 8�� 6.   5C     5E     5G     5H     �� 5J     "  ��6   .�5K  
   ��  � |�$ False��6&   �� 5L  
    � �� 5M     �� 5N     " ��6"    5O     ��  5P     0,HorizontalScrollEnabledToVisibilityConverter 6O   5Q     .R�5R     � $
H True��6   K 5S     �� 5T     $
��Auto �6/   �� 5U     $��* �6/   �� 5V     $
��Auto �6/   .+�5Y     �� $��ScrollBar.LineLeftCommand��6'   $
��20,0q�6K   y�5Z     `� 5[  "   8\   .1�5\  &   �� $ ViewportWidth�6.    6C   �� *TemplatedParent+�� 5]  &   $ ExtentWidth�6.    6A   �� *TemplatedParent+5^  #   ��5`     �� 5a  "   $��0,20,0,0q�6,   $��30��6>   $��30��6J   #��� & 6U   ��5c     �� 5d  "   " ��62   .R�5e  &   �� $��Center=�67   $��Center=�6R   5f  #   5h     �� 5i     $!] PART_ScrollContentPresenter��6A   $��1��61   $
H True��6f   #��z��6�   �� 5j     $ ��ScrollBar.LineRightCommand��6'   $��2��6L   $
��20,0q�6\   y�5k     `� 5l  "   8\  .1�5m  &   �� $ ViewportWidth�6.    6C   �� *TemplatedParent+�� 5n  &   $ ExtentWidth�6.    6A   �� *TemplatedParent+5o  #   ��5q     �� 5r  "   $��0,20,0,0q�6-   $��30��6?   $��30��6K   #��� & 6V   $S .5,.5&�6�   z�5s  &   �� 5t  *   $	^ 180Q�6:   5v  #   ��5x     �� 5y  "   " ��62   .R�5z  &   �� $��Center=�67   $��Center=�6R   5{  #   5}     5     5�     5�     5�     �� 5�     "  ��6   .�5�  
   ��  � ��
 �����6'   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     � $
* grid��6   $
H True��6)   $��	20,0,20,0q�6D   .+�5�     �� $L 	rectangle��6$   #���  67   $	+ 0.5Q�6{   $y�	Collapsed=�6�   �� 5�     $M Bd��6!   $��2q�6-   $��Bottom=�6A   $��4��6\   #���  6g   $N 2��6�   $y�Hidden=�6�   �� 5�     $O Content��6~   #���  6>   $��Light"�6k   $��	0,30,0,10q�6�   $��Center=�6�   $	��Top=�6�   #���   6�   ��6    �� *	ViewTitle+6�   5�     / 5�     P� 5�     0 �@J�IsMouseOver$
1 True��69   . �5�     �� $2 	rectangle��6;    � y�$ Visible=�6R   5�     P� 5�     0 �@��
IsSelected$
1 True��68   . �5�     ��  �@K�ZIndex$ 1��6=   �� 5�     $2 Bd��6;    � y�$ Visible=�6K   5�     5�     5�     5�     �� 5�     "   6   .�5�  
   ��  � �� 6(   Z� �� 5�  
    � ��$ Stretch=�60   �� 5�  
    � ��$ Stretch=�6.   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     � $}�False��6   $
H True��60   $I Local=�6K   .+�5�     �� 
�������$+ .6Q�61   $��	-10,-5000q�6>   � 5�     $
}�True��6   J 5�     �� 5�  "   $��0 �60   �� 5�  "   $��* �60   .+�5�     �� $_ HeaderPanel��62   $��0��6'   $
Q True��6G   $R 1��6Z   $ 1��6z   $��	0,-20,0,0q�6�   �� 5�     $M ContentPanel��6%   #��z��5�  %   #��z��5�  %   $T 	Contained=�5�  %   $R 2��5�  %   $I Local=�5�  %   $��1��5�  %   ��5�  %   Z� ._�5�  "   �� $U PART_SelectedContentHost��63   #��zV 5�  3   #��zW 5�  3   #% zX 5�  3   $��SelectedContent��5�  3   #��z��5�  3   #H zH 5�  3   5�     5�     5�     5�     5�     �� 5�  
    �@��ContentTemplate 5�     �� 5�     .R�5�       $` SizeHost��5�  1   $��Center=�5�  1   $��Center=�6N   $}�False��6i   $��20,40,20,30q�5�  1   J 5�     �� 5�     $
��Auto �6,   �� 5�     $a SizeHostContentRow��6:   $
��Auto �6,   6:   �� 5�     $
��Auto �6,   .+�5�     �� $��3��6$   #���  65   $	+ .95Q�6u   $��-50000,-10,-50000,-10q�6�     5�     $b 
headerGrid��64   $��0,20,0,0q�6_   c 6H   �� .+�5�     �� $ 
Horizontal=�6)   $��Center=�6B   $��-100,0,-100,15q�6_   .+�5�  "   �� $��48��6,   $��48��68   ��6C   �� $ TitleIconBrush�$ 
headerGrid���� 5�  "   #��� 	 6(   #���  5�  (   $��Light"�6U   $��Center=�5�  (   ��5�  (   �� $ 
View.Title�5�  (   5�     5�     �� 5�     $d MainContentArea��68   $��1��6+   .u�5�       $e MainContentView��6�   f 66   �� *View+g 6S   �� $ SizeHost��6�   5�       5�     $��2��6*   $��0,20,0,0q�6O   $��Center=�6a   = 67   �� *Model+��6~   �� $ MainContentView��$ ViewContent.ActualWidth�.+�5�     �� $��Right=�6Q   $|�False��6m   ��6+   �� *Model.Actions+��5�  "   �� 5�  &   .R�5�  *   �� #��� ' 61   $
��10,2q�6d   #���  5�  1   
�������
�������$��5,0,0,0q�5�  1   ��5�  r   Z� ��5�  1   �� *	Caption+��6M   �� B 5�  1   �� *	IsDefault+$ OneWay=�C 6^   �� *
IsCancel+$ OneWay=�5�  1   5�  '   ��5�  "   �� 5�  &   .R�5�  *   �� $ 
Horizontal=�65   5�  '   5�     5�     5�     D 5�     P� 5�     $Y SizeHost��6T   0 �@ SizeStrategy$1 UseMaximumSizeAvailable=�64   . �5�     �� $2 SizeHost��6B    � ��$ Stretch=�6X   �� 5�     $2 SizeHost��6D    � ��$ Stretch=�6Z   �� 5�     $2 SizeHostContentRow��67    � ��$ * �6W   5�     5�     5�     5�     �� 5�     "  ��6   .�5�  
   ��  � ��# � 	 6'   �� 5�  
    � ��# �  6%   �� 5�  
    � ��$ Light"�6'   �� 5�  
    � ��$ 50,10,50,50q�6#   �� 5�  
    � ��$	 250��6%   �� 5�  
    � ��$	 Top=�6.   �� 5�  
    �@��TextAlignment$ Center=�6*   5      �� 5     "  ��6   .�5  
   ��  � y�$ 	Collapsed=�6'   5     �� 5      5  
   ���� 5     ?;CODE.Framework-Application-StandardViewModelForegroundBrush #? � * 6b   �� 5	     ?;CODE.Framework-Application-StandardViewModelBackgroundBrush #? � + 6b   5
     .R�5  
     $��0,0,0,5q�6   $	��Top=�6$   $��Right=�6<   .+�5     �� $��Right=�6   #��� , 6Y   ��6@   �� *View+6Y   5     5     �� 5     "  	 6   .�5  
   ��  � ��$ 28��6"   �� 5  
    � ��$ 22��6#   �� 5  
    � ��$ 1,0,0,0q�6#   �� 5  
    �@�Cursor$ Arrow��6#   �� 5  
    � �� 5     �� 5     " 	 6"   .R�5     � .+�5     �� $L bg��6$   
������ $
h True��6C   �� 5     $��12��6!   $��2��6,   $��1q�67   $S .5,.5&�6K   $��Center=�5  9   $��Center=�6T   #��� 	 5  9   z�5     �� 5  "   $^ 45Q�62   5      �� 5!     $��12��6!   $��2��6,   $��1q�67   $S .5,.5&�6K   $��Center=�5"  9   $��Center=�6T   #��� 	 5#  9   z�5$     �� 5%  "   $	^ -45Q�62   5'     5(     / 5)     P� 5*     0 �@J�IsMouseOver$
1 True��69   . �5+     �� # �  65   $2 bg��6z    � ��5,     5.     50     51     �� 53     "   6   .�54  
   ��  � ��$ 28��6"   �� 55  
    � ��$ 22��6#   �� 56  
    � ��$ 1,0,0,0q�6#   �� 57  
    �@�Cursor$ Arrow��6#   �� 58  
    � �� 59     �� 5:     "  6"   .R�5;     � .+�5<     �� $L bg��6$   
������ $
h True��6C   �� 5=     $
M norm��6R   $��10��6!   $��10��6,   $��1,3,1,1q�68   $��Center=�5>  !   $��Center=�6<   #���  6Y   #��� 	 5?  !   �� 5@     $
M max2��6a   $��8��6!   $��8��6+   $��1,2,1,1q�66   $��4,0,0,4q�6P   $��Center=�5A  !   $��Center=�6<   $y�	Collapsed=�6Y   #���  5B  !   #��� 	 5C  !   �� 5D     $
M max1��6a   $��8��6!   $��8��6+   $��1,2,1,1q�66   $��0,2,2,0q�6P   $��Center=�5E  !   $��Center=�6<   $y�	Collapsed=�6Y   #���  5F  !   #��� 	 5G  !   5H     / 5I     P� 5J     0 �@J�IsMouseOver$
1 True��69   . �5K     �� # �  65   $2 bg��6z    � ��5L     P� 5M     0 �@ IsMaximized$
1 True��69   . �5N     �� $
2 norm��6M    � y�$ 	Collapsed=�6;   6M   �� 5O     $
2 max1��6K    � y�$ Visible=�6;   6K   �� 5P     $
2 max2��6K    � y�$ Visible=�6;   6K   5Q     5S     5U     5V     �� 5X     "   6   .�5Y  
   ��  � ��$ 28��6"   �� 5Z  
    � ��$ 22��6#   �� 5[  
    � ��$ 1,0,0,0q�6#   �� 5\  
    �@�Cursor$ Arrow��6#   �� 5]  
    � �� 5^     �� 5_     "  6"   .R�5`     � .+�5a     �� $L bg��6$   
������ $
h True��6C   �� 5b     $��10��6!   $��8��6,   $��0,0,0,2q�67   $��Center=�5c  !   $��Center=�6<   #��� 	 5d  !   5e     / 5f     P� 5g     0 �@J�IsMouseOver$
1 True��69   . �5h     �� # �  65   $2 bg��6z    � ��5i     5k     5m     5n     5p     