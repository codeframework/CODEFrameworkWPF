   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.2.0, Culture=neutral, PublicKeyToken=nullaCclr-namespace:CODE.Framework.Wpf.Layout;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Layout  5   	   R NCODE.Framework.Wpf.Mvvm, Version=5.0.2.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.MvvmCODE.Framework.Wpf.Mvvm 5   	     CODE.Framework.Wpf.TestBench/   )CODE.Framework.Wpf.TestBench.EditFormTest   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   QlCclr-namespace:CODE.Framework.Wpf.Layout;assembly=CODE.Framework.Wpf     5   	   WmvvmFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.Mvvm     5   	   -   5          � Title$  EditFormTest��5   	   $	��800��6   $
��1400��6+    � 	Resources 5       �� MergedDictionaries �� Source �� 
TargetType �� BasedOn �� Property �� Value�� 5	   
    5
      �� 5      $S M/CODE.Framework.Wpf.Theme.Workplace;component/Workplace-Control-Calendar.xaml?�6%   �� 5      $U O/CODE.Framework.Wpf.Theme.Workplace;component/Workplace-Control-DatePicker.xaml?�6%   �� 5      $R L/CODE.Framework.Wpf.Theme.Workplace;component/Workplace-Control-TextBox.xaml?�6%   �� 5      $T N/CODE.Framework.Wpf.Theme.Workplace;component/Workplace-Control-ScrollBar.xaml?�6%   �� 5      $P J/CODE.Framework.Wpf.Theme.Workplace;component/Workplace-Icon-Standard.xaml?�6%   �� 5      $? 9/CODE.Framework.Wpf.Theme.Workplace;component/Colors.xaml?�6%   �� 5      $> 8/CODE.Framework.Wpf.Theme.Workplace;component/Fonts.xaml?�6%   %}   '��       7���� 5      " ��6   8   .�5      ��  � ��$ 0q�6+   �� 5       � ��$ 0q�6,   5      5      .��5      (   "CODE.Framework.Wpf.Layout.EditForm  -   5          Name$ edit1��5      $��20q�6   	   GroupHeaderFontSize$	 20Q�5      
   GroupHeaderFontWeight$
 Light"�5      !   GroupHeaderForegroundBrush
 �  ��   GroupHeaderTopSpacing$ 25Q�5         GroupHeaderBottomSpacing$ 15Q�5          GroupBackgroundBrush �	#2532CD32   GroupBorderWidth$ 0Q�5#         GroupBorderMargin$
 20,5q�5$         RenderGroupBackground$
 True��5%         MinColumnSpacing$ 25Q�5&          MinEditControlLeftSpacing$ 10Q�5'         LabelPosition$
 Left=�5(         VerticalSpacing$ 10Q�5)         ColumnSpacing$	 100Q�5*         LayoutElasticity$ Layout=�5+         GroupBorderBrush 5"      Z� .+�5-   
   �� *   $CODE.Framework.Wpf.Layout.SimpleView   IsStandAloneEditControl$
 True��6   .��6<   	Check 16E   �� 5.   
   $
 True��6   .��6<   	Check 26E   �� 5/   
   $
 True��6   .��6<   	Check 36E   �� 52   
   $
 True��6   .��6<   Check 5 long6J   �� 54   
      ColumnBreak$
 True��6   First Name:6>   �� 55   
      WidthEx$ 25Q�6   �� 56   
      IsStandAloneLabel$
 True��6   Stand-alone label...6M   �� 57   
   .��6   Middle Name:6   �� 58   
   $ 25Q�6   �� 59   
   
Last Name:6    �� 5:   
   $ 25Q�6   �� 5<   
      
GroupBreak$
 True��6      
GroupTitle$ Hidden Group��60   $y�	Collapsed=�6T   	Hidden 1:6v   �� 5=   
   $ 25Q�6   $y�	Collapsed=�6)   �� 5>   
   $y�	Collapsed=�6   	Hidden 2:66   �� 5?   
   $ 25Q�6   $y�	Collapsed=�6)   �� 5A   
   $
 True��6   $ Phone Numbers��60   
Phone 1:6_   �� 5B   
   $ 25Q�6   �� 5C   
   
Phone 2:6   �� 5D   
   $ 25Q�6   �� 5E   
   
Phone 3:6   �� 5F   
   $ 25Q�6   �� 5H   
   $
 True��6   $ Address��60   
Address:6Y   �� 5I   
   $ 30Q�6   �� 5J   
   $ 50Q�6   $
 True��6)   �� 5K   
   City, State, ZIP:6'   �� 5L   
   $ 20Q�6   �� 5M   
   $ 3Q�6      FlowsWithPrevious$
 True��6(   �� 5N   
   $ 5Q�6   $
 True��6(   �� 5P   
   $
 True��6   $ Alternate Contact��61   First Name:6g   �� 5Q   
   $ 20Q�6   �� 5R   
   
Last Name:6    �� 5S   
   $ 20Q�6   �� 5U   
   $
 True��6   $ More Numbers��60   
Phone 1:6^   �� 5V   
   $ 15Q�6   �� 5W   
   
Phone 2:6   �� 5X   
   $ 15Q�6   �� 5Z   
   $
 True��6   $ Phone Numbers��60   
Phone 1:6_   �� 5[   
   $ 15Q�6   �� 5]   
   $
 True��6   $ Alternate Contact��61   First Name:6g   �� 5^   
   $ 20Q�6   �� 5_   
   Middle Name:6"   �� 5`   
   $ 20Q�6   �� 5a   
   
Last Name:6    �� 5b   
   $ 20Q�6   �� 5d   
   $
 True��6   $ More Phone Numbers��60   
Phone 1:6d   �� 5e   
   $ 15Q�6   �� 5f   
   
Phone 2:6   �� 5g   
   $ 15Q�6   �� 5i   
   $
 True��6   
Phone 1:6:   �� 5j   
   $ 15Q�6   �� 5k   
   
Phone 1:6   �� 5l   
   $ 15Q�6   �� 5m   
   
Phone 1:6   �� 5n   
   $ 15Q�6   �� 5p   
   
Some Date:6    (  "System.Windows.Controls.DatePicker  5q   
   $ 15Q�6   5t      5u      