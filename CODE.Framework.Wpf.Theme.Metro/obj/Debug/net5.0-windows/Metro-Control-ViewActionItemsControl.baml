   M S B A M L   `   `   `  ����R  NCODE.Framework.Wpf.Mvvm, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.MvvmCODE.Framework.Wpf.Mvvm  5      M ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullaCclr-namespace:CODE.Framework.Wpf.Layout;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Layout 5      Y UCODE.Framework.Wpf.Theme.Metro, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullk:clr-namespace:CODE.Framework.Wpf.Theme.Metro.StandardViews,CODE.Framework.Wpf.Theme.Metro.StandardViews 5      _4clr-namespace:CODE.Framework.Wpf.Theme.Metro.Classes&CODE.Framework.Wpf.Theme.Metro.Classes 5      a5clr-namespace:CODE.Framework.Wpf.Theme.Metro.Controls'CODE.Framework.Wpf.Theme.Metro.Controls 5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   Metro-ActionTile-Normal  � FocusVisualStyle �� 
TargetType � 	Resources  Key �� TargetProperty �� 
TargetName9   3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value �Name J� RenderTransformOrigin=  7CODE.Framework.Wpf.Theme.Metro.StandardViews.TileNarrow + 'CODE.Framework-Metro-TileSelectionBrush 4 0CODE.Framework-Metro-TileSelectionCheckMarkBrush	 ��Name
 �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value N� EnterActions 	 Press N� ExitActions  Release ! Metro-ActionTile-Normal1ImageC  =CODE.Framework.Wpf.Theme.Metro.StandardViews.TileNarrow1Image  Metro-ActionTile-Tiny;  5CODE.Framework.Wpf.Theme.Metro.StandardViews.TileTiny  Metro-ActionTile-Tiny1ImageA  ;CODE.Framework.Wpf.Theme.Metro.StandardViews.TileTiny1Image 	 Metro-ActionTile-Wide;  5CODE.Framework.Wpf.Theme.Metro.StandardViews.TileWide 
 Metro-ActionTile-Wide1ImageA  ;CODE.Framework.Wpf.Theme.Metro.StandardViews.TileWide1Image   Metro-ActionTile-Wide5ImagesB  <CODE.Framework.Wpf.Theme.Metro.StandardViews.TileWide5Images  Metro-ActionTile-WideSquareA  ;CODE.Framework.Wpf.Theme.Metro.StandardViews.TileWideSquare % !Metro-ActionTile-WideSquare1ImageG	  ACODE.Framework.Wpf.Theme.Metro.StandardViews.TileWideSquare1Image & "Metro-ActionTile-WideSquare5ImagesH
  BCODE.Framework.Wpf.Theme.Metro.StandardViews.TileWideSquare5Images  Metro-ActionTile-CustomView4   .CODE.Framework.Wpf.Mvvm.ViewActionItemsControl �� 
TargetType ( $Metro-Control-ViewActionItemsControlK  ECODE.Framework.Wpf.Theme.Metro.Classes.ViewActionTileTemplateSelector   NormalTileTemplate   NormalTile1ImageTemplate   TinyTileTemplate   TinyTile1ImageTemplate   WideTileTemplate   WideTile1ImageTemplate   WideTile5ImagesTemplate   WideSquareTileTemplate#   WideSquareTile1ImageTemplate$   WideSquareTile5ImagesTemplate   CustomViewTileTemplate*  $CODE.Framework.Wpf.Layout.MetroTiles   RenderHeaders   ContentTopLeftPadding?  9CODE.Framework.Wpf.Theme.Metro.Controls.MetroScrollViewer  �� PanningMode! �� BasedOn�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      OmvvmFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.Mvvm  5      NlayoutCclr-namespace:CODE.Framework.Wpf.Layout;assembly=CODE.Framework.Wpf  5      LstandardViews:clr-namespace:CODE.Framework.Wpf.Theme.Metro.StandardViews  5      @classes4clr-namespace:CODE.Framework.Wpf.Theme.Metro.Classes  5      Bcontrols5clr-namespace:CODE.Framework.Wpf.Theme.Metro.Controls  5      %cK  &	        7  7  &	 '    7  7  &	 N    7  7  &	 u    7  7  &		 �    7  7  &	
 �#    7  7  &	 �*    7  7  &	 2    7  7  &	 89    7  7  &	 _@    7  7  &	 �G    &	 H    7   7  7  7  7 	 7 
 7  7  7  7  7  '  ?J    7  �� 5	      .R�5
   
   �� ��6   �� *.+  6'   Z� ��5      �� 5      " ��6"    5      ���� 5      	Press .��5      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5   "      $ 0:0:0.1��67   $
 0.97Q�6I   5      U� 5      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5   "      $ 0:0:0.1��67   $
 0.97Q�6I   5      5      �� 5      Release .��5      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5   "      $ 0:0:0.1��67   $ 1Q�6I   5      U� 5      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5   "      $ 0:0:0.1��67   $ 1Q�6I   5      5      5      .R�5      � $
 grid��6   $ 0.5,0.5&�6)   z�5       V� 5!      .~�5"   "   �� 5#      .+�5%        � 5&      y�6   �� *IsChecked_Visible+.+�5'      F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5(      "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5)      �� 5*      $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5+      
 5,      P� 5-       �@J�IsMouseOver$
 True��69   . �5.      �� $ border��6;    � y�$ Visible=�6O   5/      P� 50       �@J�IsKeyboardFocusWithin$
 True��6C   . �51      �� $ border��6;    � y�$ Visible=�6O   52      P� 53       � ��$
 True��67    54      �� 55   "   8��  62    57      �� 58   "   8�� 62   5:      5<      5>      5?      �� 5A      .R�5B   
   �� ��6   �� *.+  6'   Z� ��5C      �� 5D      " ��6"    5E      ���� 5F      	Press .��5G      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5H   "      $ 0:0:0.1��67   $
 0.97Q�6I   5I      U� 5J      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5K   "      $ 0:0:0.1��67   $
 0.97Q�6I   5L      5M      �� 5N      Release .��5O      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5P   "      $ 0:0:0.1��67   $ 1Q�6I   5Q      U� 5R      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5S   "      $ 0:0:0.1��67   $ 1Q�6I   5T      5U      5V      .R�5W      � $
 grid��6   $ 0.5,0.5&�6)   z�5X      V� 5Y      .~�5Z   "   �� 5[      .+�5]        � 5^      y�6   �� *IsChecked_Visible+.+�5_      F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5`      "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5a      �� 5b      $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5c      
 5d      P� 5e       �@J�IsMouseOver$
 True��69   . �5f      �� $ border��6;    � y�$ Visible=�6O   5g      P� 5h       �@J�IsKeyboardFocusWithin$
 True��6C   . �5i      �� $ border��6;    � y�$ Visible=�6O   5j      P� 5k       � ��$
 True��67    5l      �� 5m   "   8��  62    5o      �� 5p   "   8�� 62   5r      5t      5v      5w      �� 5y      .R�5z   
   �� ��6   �� *.+  6'   Z� ��5{      �� 5|      " ��6"    5}      ���� 5~      	Press .��5      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $
 0.97Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $
 0.97Q�6I   5�      5�      �� 5�      Release .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $ 1Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $ 1Q�6I   5�      5�      5�      .R�5�      � $
 grid��6   $ 0.5,0.5&�6)   z�5�      V� 5�      .~�5�   "   �� 5�      .+�5�        � 5�      y�6   �� *IsChecked_Visible+.+�5�      F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5�      "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5�      �� 5�      $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5�      
 5�      P� 5�       �@J�IsMouseOver$
 True��69   . �5�      �� $ border��6;    � y�$ Visible=�6O   5�      P� 5�       �@J�IsKeyboardFocusWithin$
 True��6C   . �5�      �� $ border��6;    � y�$ Visible=�6O   5�      P� 5�       � ��$
 True��67    5�      �� 5�   "   8��  62    5�      �� 5�   "   8�� 62   5�      5�      5�      5�      �� 5�      .R�5�   
   �� ��6   �� *.+  6'   Z� ��5�      �� 5�      " ��6"    5�      ���� 5�      	Press .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $
 0.97Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $
 0.97Q�6I   5�      5�      �� 5�      Release .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $ 1Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $ 1Q�6I   5�      5�      5�      .R�5�      � $
 grid��6   $ 0.5,0.5&�6)   z�5�      V� 5�      .~�5�   "   �� 5�      .+�5�        � 5�      y�6   �� *IsChecked_Visible+.+�5�      F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5�      "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5�      �� 5�      $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5�      
 5�      P� 5�       �@J�IsMouseOver$
 True��69   . �5�      �� $ border��6;    � y�$ Visible=�6O   5�      P� 5�       �@J�IsKeyboardFocusWithin$
 True��6C   . �5�      �� $ border��6;    � y�$ Visible=�6O   5�      P� 5�       � ��$
 True��67    5�      �� 5�   "   8��  62    5�      �� 5�   "   8�� 62   5�      5�      5�      5�      �� 5�      .R�5�   
   �� ��6   �� *.+  6'   Z� ��5�      �� 5�      " ��6"    5�      ���� 5�      	Press .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $
 0.97Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $
 0.97Q�6I   5�      5�      �� 5�      Release .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $ 1Q�6I   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�   "      $ 0:0:0.1��67   $ 1Q�6I   5�      5�      5�      .R�5�      � $
 grid��6   $ 0.5,0.5&�6)   z�5      V� 5     .~�5  "   �� 5     .+�5       � 5     y�6   �� *IsChecked_Visible+.+�5     F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5     "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5	     �� 5
     $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5     
 5     P� 5      �@J�IsMouseOver$
 True��69   . �5     �� $ border��6;    � y�$ Visible=�6O   5     P� 5      �@J�IsKeyboardFocusWithin$
 True��6C   . �5     �� $ border��6;    � y�$ Visible=�6O   5     P� 5      � ��$
 True��67    5     �� 5  "   8��  62    5     �� 5  "   8�� 62   5     5     5     5     �� 5!     .R�5"  
   �� ��6   �� *.+  6'   Z� ��5#     �� 5$     " ��6"    5%     ���� 5&     	Press .��5'     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5(  "      $ 0:0:0.1��67   $
 0.97Q�6I   5)     U� 5*     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5+  "      $ 0:0:0.1��67   $
 0.97Q�6I   5,     5-     �� 5.     Release .��5/     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�50  "      $ 0:0:0.1��67   $ 1Q�6I   51     U� 52     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�53  "      $ 0:0:0.1��67   $ 1Q�6I   54     55     56     .R�57     � $
 grid��6   $ 0.5,0.5&�6)   z�58     V� 59     .~�5:  "   �� 5;     .+�5=       � 5>     y�6   �� *IsChecked_Visible+.+�5?     F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5@     "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5A     �� 5B     $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5C     
 5D     P� 5E      �@J�IsMouseOver$
 True��69   . �5F     �� $ border��6;    � y�$ Visible=�6O   5G     P� 5H      �@J�IsKeyboardFocusWithin$
 True��6C   . �5I     �� $ border��6;    � y�$ Visible=�6O   5J     P� 5K      � ��$
 True��67    5L     �� 5M  "   8��  62    5O     �� 5P  "   8�� 62   5R     5T     5V     5W     �� 5Y     .R�5Z  
   �� ��6   �� *.+  6'   Z� ��5[     �� 5\     " ��6"    5]     ���� 5^     	Press .��5_     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5`  "      $ 0:0:0.1��67   $
 0.97Q�6I   5a     U� 5b     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5c  "      $ 0:0:0.1��67   $
 0.97Q�6I   5d     5e     �� 5f     Release .��5g     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5h  "      $ 0:0:0.1��67   $ 1Q�6I   5i     U� 5j     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5k  "      $ 0:0:0.1��67   $ 1Q�6I   5l     5m     5n     .R�5o     � $
 grid��6   $ 0.5,0.5&�6)   z�5p     V� 5q     .~�5r  "   �� 5s     .+�5u       � 5v     y�6   �� *IsChecked_Visible+.+�5w     F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5x     "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5y     �� 5z     $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5{     
 5|     P� 5}      �@J�IsMouseOver$
 True��69   . �5~     �� $ border��6;    � y�$ Visible=�6O   5     P� 5�      �@J�IsKeyboardFocusWithin$
 True��6C   . �5�     �� $ border��6;    � y�$ Visible=�6O   5�     P� 5�      � ��$
 True��67    5�     �� 5�  "   8��  62    5�     �� 5�  "   8�� 62   5�     5�     5�     5�     �� 5�     .R�5�  
   �� ��6   �� *.+  6'   Z� ��5�     �� 5�     " ��6"    5�     ���� 5�     	Press .��5�     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�  "      $ 0:0:0.1��67   $
 0.97Q�6I   5�     U� 5�     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�  "      $ 0:0:0.1��67   $
 0.97Q�6I   5�     5�     �� 5�     Release .��5�     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�  "      $ 0:0:0.1��67   $ 1Q�6I   5�     U� 5�     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�  "      $ 0:0:0.1��67   $ 1Q�6I   5�     5�     5�     .R�5�     � $
 grid��6   $ 0.5,0.5&�6)   z�5�     V� 5�     .~�5�  "   �� 5�     .+�5�       � 5�     y�6   �� *IsChecked_Visible+.+�5�     F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5�     "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5�     �� 5�     $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5�     
 5�     P� 5�      �@J�IsMouseOver$
 True��69   . �5�     �� $ border��6;    � y�$ Visible=�6O   5�     P� 5�      �@J�IsKeyboardFocusWithin$
 True��6C   . �5�     �� $ border��6;    � y�$ Visible=�6O   5�     P� 5�      � ��$
 True��67    5�     �� 5�  "   8��  62    5�     �� 5�  "   8�� 62   5�     5�     5�     5�     �� 5�     .R�5�  
   �� ��6   �� *.+  6'   Z� ��5�     �� 5�     " ��6"    5�     ���� 5�     	Press .��5�     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�  "      $ 0:0:0.1��67   $
 0.97Q�6I   5�     U� 5�     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�  "      $ 0:0:0.1��67   $
 0.97Q�6I   5�     5�     �� 5�     Release .��5�     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5�  "      $ 0:0:0.1��67   $ 1Q�6I   5�     U� 5�     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5�  "      $ 0:0:0.1��67   $ 1Q�6I   5�     5�     5�     .R�5�     � $
 grid��6   $ 0.5,0.5&�6)   z�5�     V� 5�     .~�5�  "   �� 5�     .+�5�     	  � 5�     y�6   �� *IsChecked_Visible+.+�5�     F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5�     "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5�     �� 5�     $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5�     
 5�     P� 5�      �@J�IsMouseOver$
 True��69   . �5�     �� $ border��6;    � y�$ Visible=�6O   5�     P� 5�      �@J�IsKeyboardFocusWithin$
 True��6C   . �5�     �� $ border��6;    � y�$ Visible=�6O   5�     P� 5�      � ��$
 True��67    5�     �� 5�  "   8��  62    5�     �� 5�  "   8�� 62   5�     5�     5�     5�     �� 5     .R�5  
   �� ��6   �� *.+  6'   Z� ��5     �� 5     " ��6"    5     ���� 5     	Press .��5     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5  "      $ 0:0:0.1��67   $
 0.97Q�6I   5	     U� 5
     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5  "      $ 0:0:0.1��67   $
 0.97Q�6I   5     5     �� 5     Release .��5     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6<   $
 grid��6�   .\�5  "      $ 0:0:0.1��67   $ 1Q�6I   5     U� 5     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6<   $
 grid��6�   .\�5  "      $ 0:0:0.1��67   $ 1Q�6I   5     5     5     .R�5     � $
 grid��6   $ 0.5,0.5&�6)   z�5     V� 5     .~�5  "   �� 5     .+�5     
  � 5     y�6   �� *IsChecked_Visible+.+�5     F� "����        р�C    р�C��C	#���  6<   $	��Top=�6}   $��Right=�6�   F� 5      "����    �ا р�[ @f���� ��j 	$��3��6<   #���  6Q   $��Right=�6�   $	��Top=�6�   $��0,1,3,0q�6�   5!     �� 5"     $	 border��6!   #���  61   $��3q�6y   $y�	Collapsed=�6�   5#     
 5$     P� 5%      �@J�IsMouseOver$
 True��69   . �5&     �� $ border��6;    � y�$ Visible=�6O   5'     P� 5(      �@J�IsKeyboardFocusWithin$
 True��6C   . �5)     �� $ border��6;    � y�$ Visible=�6O   5*     P� 5+      � ��$
 True��67    5,     �� 5-  "   8��  62    5/     �� 50  "   8�� 62   52     54     56     57     �� 59     .R�5:  
   � $
 grid��6   $ 0.5,0.5&�6   .+�5;     �� ��6   �� *
ActionView+5<     5=     �� 5?     "  6   .�5@  
   ��  � �� 5A       5B     8   8  8  8  8  8  8  8  8  8 	 8 
 5L  9   5N     �� 5O  
    � �� 5P     �� 5Q     .R�5R       $
 True��6(   $	 0,0��6=   $
��Left=�6Y   $	��Top=�6t   5S     5U     �� 5V  
    � �� 5W     �� 5X     "  6"   .R�5Y       $��Disabled=�61   $
��Auto=�6X   $  HorizontalOnly=�6}   $��Stretch=�5Z  1   $
��Left=�6T   $��Stretch=�5[  1   $��Stretch=�6M   .��5\     �� 5]     5^     5`     5a     �� 5c     "  6   8!   65   5e     