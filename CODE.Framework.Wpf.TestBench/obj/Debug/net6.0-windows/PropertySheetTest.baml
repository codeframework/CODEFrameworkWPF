   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.2.0, Culture=neutral, PublicKeyToken=nullaCclr-namespace:CODE.Framework.Wpf.Layout;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Layout  5   	   R NCODE.Framework.Wpf.Mvvm, Version=5.0.2.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.MvvmCODE.Framework.Wpf.Mvvm 5   	     CODE.Framework.Wpf.TestBench4   .CODE.Framework.Wpf.TestBench.PropertySheetTest   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   VlayoutCclr-namespace:CODE.Framework.Wpf.Layout;assembly=CODE.Framework.Wpf     5   	   WmvvmFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.Mvvm     5   	     � Title$  Property Sheet Test��5   	   $	��600��6%   $	��700��62   .��5      �  � ColumnDefinitions 5	   
   �� 5
      �� 5      $��3 �6   �� 5      .+�5   
   -   'CODE.Framework.Wpf.Layout.PropertySheet  -   5           Padding$ 10q�5         HorizontalElementSpacing$ 10Q�6,   .+�5      �� *   $CODE.Framework.Wpf.Layout.SimpleView   
GroupBreak$
 True��6      
GroupTitle$ First Group��64   Test 16_   �� 5      $��Test 1 Text��6   �� 5      Test 2 is longer6*   �� 5      $��Test 2 Text��6   �� 5      Test 36    �� 5      $��Test 3 Text��6   �� 5      $
 True��6   $ Second Group��64   Second Group6f   �� 5      $��Test 1 Text��6   �� 5      Test 2 is longer6*   �� 5      $��Test 2 Text��6   �� 5         IsStandAloneLabel$
 True��6   Label only...6R   �� 5      Test 36    �� 5      $��Test 3 Text��6   �� 5          IsStandAloneEditControl$
 true��6   $��Test 4 Text��6?   �� 5"      Example File:6'   �� 5#      �� 5$      $	��5,0q�6   $	��...��6#      FlowsWithPrevious$
 True��61   �� 5%      $	��5,0q�6   $��??��6#   $
 True��60   �� 5'      	   SpanFullWidth$
	 True��6   $��I span the entire width��64   �� 5)      
One more6"   �� 5*      $
��Okay��6   5+      �� 5-   
   $��Stretch=�6   $��Stretch=�63   $��1��6Q     5/   
   -   5        
  Name$
 PropertySheet��5/      $ 10q�66   $ 10Q�6C   $��2��6�      GroupHeaderRenderer 50      ;   5CODE.Framework.Wpf.Layout.PropertySheetHeaderRenderer  51         
Background
 ��d�   FontSize$ 24Q�6Q      
FontWeight$ Light"�6_      
Foreground
 �����6r   53      54      56      