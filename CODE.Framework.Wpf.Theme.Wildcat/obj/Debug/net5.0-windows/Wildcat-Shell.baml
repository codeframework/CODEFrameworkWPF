   M S B A M L   `   `   `  ����R  NCODE.Framework.Wpf.Mvvm, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.MvvmCODE.Framework.Wpf.Mvvm  5      M ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nulleEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Controls 5      [ WCODE.Framework.Wpf.Theme.Wildcat, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullc6clr-namespace:CODE.Framework.Wpf.Theme.Wildcat.Classes(CODE.Framework.Wpf.Theme.Wildcat.Classes 5      wNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf$CODE.Framework.Wpf.BindingConverters 5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089#    CODE.Framework.Wpf.Mvvm.Shell  �� 
TargetType '  #CODE.Framework.Wpf.Mvvm.Shell-Style �� Property / +CODE.Framework-Application-BackgroundBrush1 �� Value �� 
TargetType � 	Resources  Key �� TargetProperty �� 
TargetName R� KeyTime  System.Windows.Visibility   Visible	 R� Value
   	Collapsed9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value(  "CODE.Framework.Wpf.Controls.GridEx   
RowHeights  ShellBackgroundPattern �� Stretch � Color � Offset0   *CODE.Framework.Wpf.Mvvm.ViewHostTabControl  Name    NormalViews 1 -CODE.Framework.Wpf.Mvvm.Shell-NormalViewsHost   	MainModel �� RelativeSource �� SelectedIndex �� Mode;   5CODE.Framework.Wpf.Mvvm.ViewActionAndOpenViewSelector   Views ? ;CODE.Framework.Wpf.Mvvm.Shell-ViewActionAndOpenViewSelector   Actions   ViewTabs �� ElementName �� Path8   2CODE.Framework.Wpf.Mvvm.TopLevelViewHostTabControl  Name    TopLevelViews    SelectedTopLevelView 3 /CODE.Framework.Wpf.Mvvm.Shell-TopLevelViewsHost   NormalViewHost  �Name 0 ,CODE.Framework-Wildcat-StatusBackgroundBrush! ��Name"    CurrentStatusView  DefaultFont 	 FontSize-Normal 0
 ,CODE.Framework-Wildcat-StatusForegroundBrush# ��Name$    CurrentNotifications  NotificationItemTemplate>  8CODE.Framework.Wpf.Theme.Wildcat.Classes.StickyNotePanel% �� Triggers& P� Property' P� Value( �� 
TargetName) :� RoutedEvent* ��Name  ApplicationStatusChanged+ �� Orientation, J� SnapsToDevicePixels-   TriggerItemA  ;CODE.Framework.Wpf.Theme.Wildcat.Classes.SelfCenteringPopup. � VerticalOffset/ � 	StaysOpen0   IsDisplayed1 � PlacementTarget ' #CODE.Framework-Menu-BackgroundBrush2 � 	Resources,	   &CODE.Framework.Wpf.Mvvm.ButtonWithIcon3   ColumnWidths4 � Cursor5 ��Name & "CODE.Framework-Menu-SelectionBrush6 	  	IconBrush ' #CODE.Framework-Menu-ForegroundBrush*
  $CODE.Framework.Wpf.Controls.BorderEx7 
  KeepHeightAndWidthEqual8 
  ForceCircularOutline9 �� TextAlignment  FontSize-Smaller / +CODE.Framework-Application-ForegroundBrush1 0 ,CODE.Framework.Wpf.Mvvm.Shell-LocalViewsHost : 6CODE.Framework.Wpf.Mvvm.Shell-LocalViewDisplayTemplate * &CODE.Framework.Wpf.Mvvm.Shell-ViewHost-  'System.Windows.Input.KeyboardNavigation:   TabNavigation; ��Name< ��Name= K� IsItemsHost>   TabIndex? K� ZIndex@ �� TriggersA �� 	ResourcesB g� DecelerationRatio 5 1CODE.Framework.Wpf.Mvvm.Shell-ViewDisplayTemplateC J� RenderTransformOriginD !� VisualE � LayoutTransformF �� ScaleYG �� ScaleXH J� OpacityMaskI �� 
StartPointJ �� EndPointK N� EnterActions  ShrinkMainContentL N� ExitActions  GrowMainContent  ShowNextView  ShowPreviousViewB  <CODE.Framework.Wpf.Theme.Wildcat.Classes.ThemeColorConverter@  :CODE.Framework.Wpf.Theme.Wildcat.Classes.ViewIconConverterJ  DCODE.Framework.Wpf.Theme.Wildcat.Classes.ViewIconVisibilityConverter / +CODE.Framework-Application-ViewBorderBrush1  ViewIconConverterM �� 	Converter  ViewIconVisibilityConverter  FontSize-Largest  ThemeColorConverter / +CODE.Framework-Application-ViewBorderColor1 /  +CODE.Framework-Application-ViewBorderColor2 /! +CODE.Framework-Application-ViewBorderColor3(   "CODE.Framework.Wpf.Mvvm.ActionGridN  NameO   ModelH  BCODE.Framework.Wpf.Theme.Wildcat.Classes.WildcatActionItemsControl0   *CODE.Framework.Wpf.Mvvm.ActionItemsControlP   ModelQ ��Name<  6CODE.Framework.Wpf.Theme.Wildcat.Classes.WildcatButtonR   PositionS �� 	IsDefaultT �� IsCancel-   'CODE.Framework.Wpf.Mvvm.ModelStatusGridU  NameV   Model;   5CODE.Framework.Wpf.Mvvm.ModelStatusToVisibleConverterW � IsIndeterminate !" ModelStatusToVisibleConverterX J� Effect3  -System.Windows.Media.Effects.DropShadowEffectY   ColorZ   Opacity[   	Direction\   
BlurRadius]   ShadowDepth^ �� Triggers_ P� 
SourceName3   -CODE.Framework.Wpf.Mvvm.SizeStrategyAwareGrid`  Name%a   EnableRenderTransformMouseMoveb � RowDefinitionsc ��Name0   *CODE.Framework.Wpf.Mvvm.ViewContentControld  Namee   ViewContentf   SizeStrategyHostg �� SelectedContentTemplateh �� SelectedContent"i �� SelectedContentStringFormatj �� ContentStringFormatk �� CornerRadius2   ,CODE.Framework.Wpf.Mvvm.ViewResultHeaderGridl  Namem   
ViewResultA  ;CODE.Framework.Wpf.BindingConverters.NullToVisibleConverter # NullToVisibleConverter $ FontSize-Largern ��Name 1% -CODE.Framework.Wpf.Mvvm.Shell-MessageBox-Text & FontSize-Large 2' .CODE.Framework.Wpf.Mvvm.Shell-MessageBox-Image ( ViewHostTabItemHeaderScroll ) CODE.Framework-Icon-Contact 	* Black�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OmvvmFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.Mvvm  5      RcontrolsEclr-namespace:CODE.Framework.Wpf.Controls;assembly=CODE.Framework.Wpf  5      Bclasses6clr-namespace:CODE.Framework.Wpf.Theme.Wildcat.Classes  5      dbindingConvertersNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf  5      %M  &	        7  &	 �    &	 Q    &	     7  7  7  7  &	 L$    7  7  7  7 " 7  7  &	 �2    7  7  7  7 " &	 �;    7 # 7 " &	% uG    &	' �H    &	( �H    &	 �I    &	 �K    �� 5      "    6   .�5	   
   ��  � ��# �  6'   �� 5
   
    �@  NormalViewLaunchMode$ InPlace=�61   �� 5   
    �@  TopLevelViewLaunchMode$ InPlace=�63   �� 5   
     �@  MaximumNotificationCount$ 12��65   �� 5   
    �@  HandleLocalViewsSpecial$
 True��64   �� 5   
    � �� 5      �� 5      "   6"    5      ���� 5      ApplicationStatusChanged .��5      T� $ (UIElement.Visibility)�6<   $ 
statusGrid��6o   ..�5   "   i� $ 0��69   #	 Z 6E   i� 5   "   $ 0:0:11��69   #	 Z 6J   i� 5   "   $ 0:0:11.1��69   #	 Z
 6L   5      U� 5      $ (UIElement.Opacity)�6<   $ 
statusGrid��6l   .\�5   "     $ 0:0:0.2��67   $ 1Q�6I     5   "   $ 0:0:10��67   $ 1Q�6H     5   "   $ 0:0:11��67   $ 0Q�6H   5      5      5      .R�5      � #��z��6   $ 50,*,Auto,Auto��6E   .+�5       �� $��Stretch=�6$   $��Stretch=�6B   #���  6^   $��3��6�   F� 5!      $��2��6   ���#1E1E1E$��2��6;   $��Stretch=�6L   $��55��6j   $��0q�6v   $��Bottom=�6�   ?���� �  � Ӯ�� �V��k����> � ��>`"�� � `"�	$
 Fill=�6�   A� 5"      $��2��6   $��2��6   $��Stretch=�6.   $��80��6L   $��	0,5,0,-30q�6X   $��Bottom=�6k   $
 Fill=�6�   ��5#   	   
� 5$   
   .��5%      � $ #444444��6   $ 0Q�6(   � 5&   &   $ 	#00444444��63   $ 1Q�6E   5'      5)   	     5*      $ 	OpenViews��62   $��1��6E   $��	15,0,15,0q�6R   #��z 5+   2   #���  5-   2    5+   ^   ��  �� *TemplatedParent+ 5,   2   �� *SelectedNormalView+ �� *TemplatedParent+$ TwoWay=�5-   2   �� 5.      $��2��6'   $
��Auto=�64   $��Hidden=�6Y   .��5/        # z 6A   #���  51   A    5/   g   ��  50   A   �� $ 	OpenViews��$ OneWay=�$ .�51   A   52        53      $ 
tabControl��6:   #��z 6N   $��1��6|   $��2��6�   # z 54   .   #���  55   .    56   .   �� $ 	OpenViews��� 57      $  
statusGrid��6f   $��Stretch=�6   $��Stretch=�6;   $��3��6Y   #���  6z   .+�58      �� $! statusContent��6[   #��z" 6-   #���  59   -   #��� 	 6X   $��Stretch=�5:   -   $��Stretch=�6I   $��Center=�5;   -   $��8,2,8,4q�6O   #��� 
 5<   -   5=      �� 5>      $# notifications��6l   $��Stretch=�6'   $��Stretch=�6C   $��0q�6a   $��4��6�   #��z$ 5?   '   #���  6\   ��5@      �� 5A   "   .R�5B   &     5C   #   5E      5F      % 5G      P� 5H      & �@  TopLevelViewCount$' 0��6?   . �5I      �� $( 
tabControl��6;    � y�$ 	Collapsed=�6S   5J      P� 5K      !& �@  CurrentNotificationsCount$' 0��6G   . �5L      �� $( notifications��6;    � y�$ 	Collapsed=�6V   5M      :� 5N      $) mvvm:Shell.StatusChanged��6'   .[�5O      �� $.* (ApplicationStatusChanged_BeginStoryboard��6.   8��  6`   5P      5R      5T      5U      �� 5W      "   6   .�5X   
   ��  � ��$ Center=�60   �� 5Y   
    � ��$ Center=�67   �� 5Z   
    � ��$ 
10,5,10,10q�6#   �� 5[   
    � �� 5\      �� 5]      .R�5^      �� $+ 
Horizontal=�6!   5_      5a      �� 5b   
    � �� 5c      �� 5d      .R�5e      � $
, True��6   $��
10,10,10,0q�66   $}�False��6J   $ 48,Auto��6_   - 6�   �� .+�5f      � $  placementGrid��6�   $��Center=�6   $��Center=�6:   $��36��6W   $��36��6c   $��0q�6n   $}�False��6y   .+�5g        $	��Top=�6g   $	. -10��6w   $/ False��6�   $��Slide=�6�   0 69   �� *
MenuOpen+$ OneWay=�1 6�   �� $ placementGrid��.��5h   "   �� #���  6Q   $��0q�6�   $��0q�6�   ��6/   �� *	MenuItems+��6�   Z� 2 5i   &   ���� 5j   *   '	        "  	 60   .�5k   .   ��  � �� 5l   2   �� 5m   6   " 	 6F   .R�5n   :   � $3 Auto,*��6?   $
4 Hand��6e   $��2q�6s   .+�5o   >   �� $5 	highlight��6�   #���  6H   $��2��6�   $y�	Collapsed=�6�   6�   �� 5p   >   $��18��6H   $��18��6T   $��Center=�6_   $��Center=�6z   $��8,2,5,2q�6�   #��z6 6�   �� 5q   >   $��Center=�6O   $
��Left=�6j   #��z��6�   $��2��6�   #���  6�   $��2,2,14,2q�6  5r   ;   % 5s   :   P� 5t   >   & �@J�IsMouseOver$
' True��6]   . �5u   B   �� $( 	highlight��6o    � y�$ Visible=�6_   6o   5v   ?   5x   7   5z   /   5{   +   5|   '   5}   #   5~      �� 5      $��Stretch=�6>   $��Stretch=�6Z   ��6(   �� *Icon+6Z   �� 5�      ���#2E2522
�������$	��1.5q�6N   $	��Top=�5�   %   $��Right=�6=   $��	0,-6,-7,0q�6Y   $
7 True��5�   %   $
8 True��6V   y�5�   d   �� * OpenSubItemDisplayCountVisible+._�5�   "   �� 
�������$��Center=�5�   ,   $��Center=�6G   $9 Center=�6d   #���  5�   ,   $��0,-1,0,0q�6Z   ��5�   ?   �� *OpenSubItemDisplayCount+5�   Z   5�      5�      �� 5�      #���  6=   $��0,5,0,0q�6k   $	��100��6|   $9 Center=�5�   $   $
��Wrap=�6;   $��Center=�5�   $   $��Bottom=�6A   $��1��6\   #���  5�   $   ��5�   $   �� *	Caption+5�   $   5�      5�      5�      5�      �� 5�      "   6   .�5�   
   ��  �@��ContentTemplate# �  6,   �� 5�   
    � y�$ Hidden=�6'   �� 5�   
    � ��# �  6/   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      � $}�False��6   $
, true��60   $: Local=�6K   .+�5�      �� $; PART_SelectedContentHost��6+   $��SelectedContent��6M   $��0q�5�   +   $
, True��66   �� 5�      $< HeaderPanel��6.   $��0��6#   $
= True��6C   $> 1��6V   $? 1��5�   #   $��	0,0,0,-20q�64   $��Bottom=�6G   $y�Hidden=�6b   5�      5�      5�      @ 5�   
   P� 5�      & �@ HasVisibleItems$
' True��61   . �5�      ��  � y�$ Visible=�6/   5�      5�      �� 5�      "   6   A 5�      ���� 5�      ShowNextView .��5�      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�60   $B .5Q�6�    6�   Z� .\�5�   
     $ 0��6   $	 350Q�6+     5�   
   $ 0:0:0.3��6   $ 0Q�61   5�   
   5�   	   �� 5�      ShowPreviousView .��5�      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�60   $B .5Q�6�    6�   Z� .\�5�        $ 0��6+   $
 -350Q�67     5�      $ 0:0:0.3��6+   $ 0Q�6=   5�      5�      5�      .�5�   
   ��  �@��ContentTemplate# �  6,   �� 5�   
    � y�$ Hidden=�6'   �� 5�   
    � ��# �  6/   �� 5�   
    � �� 5�      �� 5�      "  6"    5�      ���� 5�      ShrinkMainContent .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�69   $
 grid��6�   .\�5�        $ 0:0:0.2��61   $
 0.95Q�6C   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�69   $
 grid��6�   .\�5�        $ 0:0:0.2��61   $
 0.95Q�6C   5�      5�      �� 5�      GrowMainContent .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�69   $
 grid��6�   .\�5�        $ 0:0:0.2��61   $ 1Q�6C   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�69   $
 grid��6�   .\�5�        $ 0:0:0.2��61   $ 1Q�6C   5�      5�      5�      .R�5�      � $}�False��6   $
, true��60   $: Local=�6K   .+�5�      �� $; PART_SelectedContentHost��6+   $��SelectedContent��6M   $��0q�6m   $
, True��6x   z�5�      V� 5�      .~�5�      �� 5�      5�      � 5�      $
  grid��6   $��Bottom=�6-   $��Stretch=�6H   $��75��6f   $��	0,0,0,-75q�6r   $
}�True��6�   $C 0.5,0.5&�6�   z�5�      V� 5�      .~�5�      �� 5�      .+�5�      �� $	��Top=�6(   $��Center=�6@   $C .5,.5&�5�   (   ��5�   (   �� $ PART_SelectedContentHost��$ ActualHeight�$ OneWay=���5�   (   �� $ PART_SelectedContentHost��$ ActualWidth�$ OneWay=���5�   "   !� 5�   &   D 62   �� $ PART_SelectedContentHost��E 5�   "   �� 5�   &   $F -1Q�65   $G 1Q�6A   5�      H 5�      �� 5�   "   $	I 0,0&�66   $	J 0,1&�6G   .��5�   &   � $ 	#3F000000��63   $ 0Q�6E   � 5�   &   $ .8Q�63   5�   #   5�      �� 5�      $< HeaderPanel��6.   $��0��6#   $
= True��6C   $> 1��6V   $? 1��6v   $��	0,0,0,-20q�6�   $��Bottom=�6�   $y�Hidden=�6�   5�      % 5�      P� 5�      & �@ HasVisibleLocalViews$
' True��6B   K 5�      �� 5�   "   8��  62   L 5�      �� 5�   "   8�� 62   5�      5�      5�      �� 5�   
    �@J�RenderTransformOrigin$ 0.5,0.5&�62   �� 5   
    � z� 5     V� 5     .~�5     �� �� 5     �� 5     T� 5     5     5	     @ 5
  
   :� 5     $) NextViewSelected��6   .[�5     �� 8�� 6"   5  	   :� 5     $) PreviousViewSelected��6   .[�5     �� 8�� 6"   5     P� 5     & �@��HasItems$
' True��6*   . �5  	   ��  � y�$ Visible=�6&   5  	   5     �� 5      5  
   ��  5     ThemeColorConverter 6*     5     ViewIconConverter 6(     5     ViewIconVisibilityConverter 62   �� 5     ShrinkMainContent .��5     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6-   $
 grid��6�   .\�5       $ 0:0:0.2��6%   $
 0.95Q�67   5     U� 5      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6-   $
 grid��6�   .\�5!       $ 0:0:0.2��6%   $
 0.95Q�67   5"     5#     �� 5$     GrowMainContent .��5%     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�60   $
 grid��6�   .\�5&       $ 0:0:0.2��6+   $ 1Q�6=   5'     U� 5(     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�60   $
 grid��6�   .\�5)       $ 0:0:0.2��6+   $ 1Q�6=   5*     5+     5,     .R�5-  
   � .+�5.     � $
  grid��6   $ Auto,*,Auto��6!   $
3 *,30��6J   $C 0.5,0.5&�6n   z�5/     V� 50     .~�51     �� 52     .+�54     �� #���  6   ._�55     � $3 Auto,*��6   .+�56     �� $��36��6$   $��36��60   $��15,5,2,2q�6;   ��6M   �� *View.IconResourceKey+8M   y�6�   �� *View.IconResourceKey+8M  �� 57     #���  6?   #���  6j   $��	15,15,0,0q�58  ,   #���  6?   $��2��6�   ��57  $   �� *	ViewTitle+58  �   59     5:     � 5;     $
 30,*��6   $��1��69   .+�5<     F� "����        р������    ���	#���  66   �� 5=     #���  6   $��1��6h   5>     �� 5?     $��4q�6   $��1��6�   $��2��6�   $��2��6�   ��6-   �� *View.ViewThemeColor+8M  ��5@     �� 5A     $	I 0,0&�6.   $	J 0,1&�6?   .��5B     � $ 0Q�6+   # �  66   � 5C     $ .5Q�6+   # �   67   � 5D     $ 1Q�6+   # � ! 66   5E     5G     �� 5H     $��1��6#   $��2��60   $��4q�6D   .u�5I     �� $! mainContent��6I   $��0q�6>   ��6%   �� *View+6I   5J       5K     $N 
actionGrid��6f   $��2��6:   $��2��6G   $��4q�6[   O 6"   �� *Model+.+�5L       $��Right=�6P   $��
10,5,10,10q�6l   P 68   �� *Model+��5M     �� 5N     .R�5O  "   �� $Q ToolbarButton��6)   $��2,0,0,0q�6t   R 6@   �� *
Position+��5P  1   �� *	Caption+��6M   �� S 5Q  1   �� *	IsDefault+$ OneWay=�T 6^   �� *
IsCancel+$ OneWay=�5R     ��5T     �� 5U     .R�5V  "   �� $+ 
Horizontal=�6-   5W     5Y     5Z       5[     $U modelStatus��6�   $��Center=�6?   $��Center=�6Z   $��8��6w   $	��300��6�   $��3��6�   $��2��6�   V 6'   �� *Model+2 5\     ��  5]     !ModelStatusToVisibleConverter 6=   5^     .+�5_     � $
W True��6"   y�69   �� $ ModelStatus�$ modelStatus��8M  5`     �� 5a     $	5 fog��6�   $��1��6   $��2��6)   $��2��6:   $��4q�6N   ���	#3FFFFFFF$y�	Collapsed=�6j   6�   5b       5c     $ localViewsHost��6\   $��0q�6.   $}�False��5d  l   #���  5e  .   ��5c  9   �� *
LocalViews+ 5d  .   �� *SelectedLocalViewIndex+$ TwoWay=�X 5f       5g     $Y White��6'   $Z .5Q�65   $[ 0Q�6B   $\ 5Q�6P   $] 0Q�6_   5i     5j     ^ 5k  
   P� 5l     $_ localViewsHost��6   & � y�$' Visible=�6H   K 5m     �� 5n     8�� 6&   L 5p     �� 5q     8�� 6&   . �5s     �� $( mainContent��6    � {�$ False��6G   �� 5t     $( 
actionGrid��6    � {�$ False��6F   �� 5u     $	( fog��6    � y�$ Visible=�6@   5v     5x     �� 5z      5{  
   ��  5|     ThemeColorConverter 6*     5}     ViewIconConverter 6(     5~     ViewIconVisibilityConverter 62   5     .R�5�  
     $` SizeHost��6�   $
3 *,30��6%   $��Center=�6I   $��Center=�6d   $
a True��6�   b 5�     �� 5�     $
��Auto �6    �� 5�     $c SizeHostContentRow��6.   $
��Auto �6    6.   �� 5�     $
��Auto �6    .+�5�     �� #���  6   ._�5�     � $3 Auto,*��6   .+�5�     �� $��36��6    $��36��6,   $��15,5,2,2q�67   ��6I   �� *View.IconResourceKey+8M   y�6�   �� *View.IconResourceKey+8M  �� 5�     #���  6;   #���  6f   $��	15,15,0,0q�5�  ,   #���  6?   $��2��6�   ��5�      �� *	ViewTitle+5�  �   5�     5�     � 5�     $
 30,*��6   $��1��65   .+�5�     F� "����        р������    ���	#���  62   �� 5�     #���  6   $��1��6d   5�     �� 5�     #���  6   $��4q�6b   $��1��6�   $��2��6�   $��2��6�   ��6v   �� *View.ViewThemeColor+8M  6�   �� 5�     $��1��6   $��2��6,   $��4q�6@   .u�5�       $d MainContentView��6y   $��0q�6�   $
}�True��6�   e 6*   �� *View+f 6G   �� $ SizeHost��6�   5�       5�     $��2��66   $��2��6C   $��4q�6W   O 6   �� *Model+.+�5�       $��Right=�6L   $��
10,5,10,10q�6h   P 64   �� *Model+��5�     �� 5�     .R�5�     �� $Q ToolbarButton��6%   $��2,0,0,0q�6p   R 6<   �� *
Position+��5�  1   �� *	Caption+��6M   �� S 5�  1   �� *	IsDefault+$ OneWay=�T 6^   �� *
IsCancel+$ OneWay=�5�     ��5�     �� 5�     .R�5�     �� $+ 
Horizontal=�6)   5�     5�     5�       5�     $U modelStatus��6�   $��Center=�6;   $��Center=�6V   $��8��6s   $	��300��6~   $��3��6�   $��2��6�   V 6#   �� *Model+2 5�     ��  5�     !ModelStatusToVisibleConverter 69   5�     .+�5�     � $
W True��6   y�65   �� $ ModelStatus�$ modelStatus��8M  5�     5�     ^ 5�  
   P� 5�     $_ SizeHost��6N   & �@ SizeStrategy$' UseMaximumSizeAvailable=�6.   . �5�     �� $( SizeHostContentRow��6+    � ��$ * �6K   5�     5�     �� 5�     "   6   .�5�  
   ��  � �� 6(   Z� �� 5�  
    � ��$ Stretch=�60   �� 5�  
    � ��$ Stretch=�6.   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     � $}�False��6   $
, True��60   $	��100��6K   $	��200��6[   $: Local=�6j   $��100,50q�6�   b 5�     �� 5�     $��0 �6,   �� 5�     $��* �6,   .+�5�     �� $< HeaderPanel��6.   $��0��6#   $
= True��6C   $> 1��6V   $? 1��6v   $��	0,-20,0,0q�6�   $y�Hidden=�6�   �� 5�     $; PART_SelectedContentHost��6+   $��1��6M   #��zg 6Z   #��zh 5�  +   #j zi 6W   $��SelectedContent��5�  +   #��z��6K   #, z, 6o   5�     5�     5�     �� 5�  
    �@��ContentTemplate 5�     �� 5�     .R�5�       $` SizeHost��5�  @   $��Center=�5�  1   $��Center=�6N   $}�False��6i   $��20,40q�5�  1   $	��200��6R   b 5�     �� 5�     $
��Auto �6,   �� 5�     $c SizeHostContentRow��6:   $
��Auto �6,   6:   �� 5�     $
��Auto �6,   .+�5�     �� $��3��6!   ���	#CD000000$��-40,-15q�6I   $k 	25,0,25,0��6Z     5�     $l 
headerGrid��64   $��0q�6_   m 6H   �� .+�5�     �� $+ 
Horizontal=�6)   $��Center=�6B   $��
20,0,20,15q�6_   2 5�  "   ��  5�  &   NullToVisibleConverter 6O   5�  #   .+�5�  "   �� $��48��6,   $��48��68   $��	0,0,0,-10q�6�   ��6C   �� $ TitleIconBrush�$ 
headerGrid��y�5�  ,   �� *TitleIconBrush+$ 
headerGrid��8M   �� 5�  "   #���  6(   #��� $ 5�  (   $��Center=�5�  (   ��5�  (   �� $ 
View.Title�5�  (   5�     5�     �� 5�     $n MainContentArea��68   $��1��6+   $��Center=�6Q   .u�5�       $d MainContentView��6�   $��
20,10,20,0q�6�   e 66   �� *View+f 6S   �� $ SizeHost��6�   5�       5�     $U modelStatus��6�   $��Center=�6G   $��Center=�6b   $��8��6   $	��300��6�   $��3��6�   $��2��6�   V 6/   �� *Model+2 5�     ��  5�  "   !ModelStatusToVisibleConverter 6E   5�     .+�5�     � $
W True��6*   y�6A   �� $ ModelStatus�$ modelStatus��8M  5�       5�     $��2��6*   $��
20,20,20,5q�6O   $��Center=�6c   O 67   �� *Model+��6�   �� $ MainContentView��$ ViewContent.ActualWidth�.+�5�       $��Right=�6X   P 6@   �� *Model+��5�  "   �� 5�  &   .R�5�  *   �� $Q ToolbarButton��61   $��2,0,0,0q�6|   R 6H   �� *
Position+��5�  1   �� *	Caption+��6M   �� S 5�  1   �� *	IsDefault+$ OneWay=�T 6^   �� *
IsCancel+$ OneWay=�5�  '   ��5�  "   �� 5�  &   .R�5�  *   �� $+ 
Horizontal=�65   5�  '   5�     5�     5�     ^ 5�     P� 5�     $_ SizeHost��6Z   & �@ SizeStrategy$' UseMaximumSizeAvailable=�6:   . �5�     �� $( SizeHostContentRow��67    � ��$ * �6W   5�     5�     5      5     �� 5     "  ��6   .�5  
   ��  � ��# �  6'   �� 5  
    � ��# � & 6%   �� 5  
    � ��$ 50,10,50,50q�6#   �� 5  
    � ��$	 250��6%   �� 5  
    � ��$	 Top=�6.   �� 5	  
    �@��TextAlignment$ Center=�6*   5
     �� 5     "  ��6   .�5  
   ��  � y�$ Visible=�6'   5     �� 5     "  ��6   .�5  
   ��  � |�$ False��6&   �� 5  
    � �� 6(   Z� �� 5  
    � ��$ 0q�6,   �� 5  
    � }�$ False��6)   �� 5  
    �@K�ZIndex$ 1��6)   5     �� 5     "  ��6   .�5  
   ��  � �� 5     �� 5     " ��6"   .R�5     � $
  grid��6   $
, True��6)   $��5,10,5,0q�6D   $
}�True��6V   $ 48,Auto��6j   .+�5     �� $��Center=�6$   $��Center=�6?   $��36��6\   $��36��6h   $��0q�6s   #��� ) 6~   �� 5     #���  6?   $��0,5,0,0q�6m   $	��100��6~   $9 Center=�5  $   $
��Wrap=�6;   $��Center=�5   $   $��Bottom=�6A   $��1��6\   #���  5!  $   ��5  $   �� *	ViewTitle+5!  $   5"     5#     5%     5&     �� 5(     .R�5)  
   �� #��� * 62   $��5q�5*     $	��Top=�6$   $��Stretch=�6<   ��5)     �� *View+5*  <   5+     5-     