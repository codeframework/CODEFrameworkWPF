   M S B A M L   `   `   `  ����R  NCODE.Framework.Wpf.Mvvm, Version=5.0.2.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.MvvmCODE.Framework.Wpf.Mvvm  5   	     CODE.Framework.Wpf.TestBench-   'CODE.Framework.Wpf.TestBench.RibbonTest   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   WmvvmFclr-namespace:CODE.Framework.Wpf.Mvvm;assembly=CODE.Framework.Wpf.Mvvm     5   	     � Title$  
RibbonTest��5   	   $	��300��6   $	��700��6)    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5	      $B </CODE.Framework.Wpf.Theme.Workplace;component/ThemeRoot.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��50 �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   .   (CODE.Framework.Wpf.Mvvm.ViewActionRibbon  -   5          Name$ ribbon��5   ;      FirstPageIsSpecial$ False��6     5      3   -CODE.Framework.Wpf.Mvvm.RibbonPageLayoutPanel �� 
TargetType �� BasedOn	 �� Property
 �� Value��%w   '        7 �� 5      "  6   8   .�5      �� !	 �@ GroupTitleForegroundBrush

 ��d�6B   5      5      5      1   +CODE.Framework.Wpf.Mvvm.RibbonPageAsToolbar  5   
   -   5          Name$ toolbar��5   0   $��2��6#   60   5      5      