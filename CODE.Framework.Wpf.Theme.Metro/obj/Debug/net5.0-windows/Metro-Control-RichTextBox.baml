   M S B A M L   `   `   `  ����M  ICODE.Framework.Wpf, Version=5.0.1.0, Culture=neutral, PublicKeyToken=nullwNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf$CODE.Framework.Wpf.BindingConverters  5      iGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.WpfCODE.Framework.Wpf.Validation  5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType   Metro-Control-RichTextBox �� Property * &CODE.Framework-Application-ThemeBrush1 �� Value / +CODE.Framework-Application-ForegroundBrush2 / +CODE.Framework-Application-BackgroundBrush2  Metro-RichTextBox-Template  FontSize-Normal  DefaultFont �� 
TargetType � 	Resources<    6CODE.Framework.Wpf.BindingConverters.LitBrushConverter  KeyD   >CODE.Framework.Wpf.BindingConverters.TransparentBrushConverter ��Name J� SnapsToDevicePixels �� RelativeSource  LitBrushConverter �� 	Converter	 �� ConverterParameter 	 TransparentBrushConverter
 ��Name F�Name 3
 /CODE.Framework-Application-ValidationErrorBrush3   -CODE.Framework.Wpf.Validation.InputValidation   ErrorMessage � ToolTip �� Triggers P� Property P� Value �� 
TargetName �� BasedOn�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      dBindingConvertersNclr-namespace:CODE.Framework.Wpf.BindingConverters;assembly=CODE.Framework.Wpf  5      OvalGclr-namespace:CODE.Framework.Wpf.Validation;assembly=CODE.Framework.Wpf  5      %>  &	        &	     7  7 	 7  7 	 '�� �    7   �� 5      "  ��6   .�5   
   ��  � ��# �  6(   �� 5   
    � ��$ 2q�6,   �� 5	   
    � ��# �  6'   �� 5
   
    � ��# �  6'   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6%   �� 5   
    � ��# �  6'   5      �� 5      " ��69    5   
   ��   5      LitBrushConverter 62     5      TransparentBrushConverter 6:   5      .R�5   
   � .+�5      �� $ Bd��6   #��z��5      $
 True��5      $y�	Collapsed=�6-   ��5      �� *BorderBrush+ �� *TemplatedParent+8   $		 1.3����5      �� *
Background+ �� *TemplatedParent+8  $		 .90��5   -   �� 5      $	 Bd2��6   #��z��5      $
 True��5      ��5      �� *BorderBrush+ �� *TemplatedParent+8  $	 .8����5      �� *
Background+ �� *TemplatedParent+8  $		 .90��5      �� 5       #��z��6   
������ ._�5!      �� $
 PART_ContentHost��6   # z 69   $��2q�6u   5"      F� 5#      $ errorIndicator��6�   $��12��6   $��12��6   $	��Top=�6*   $��Right=�6B   "����        � �     � �  � 	#��� 
 6y   $y�	Collapsed=�6�   # z 6�   5$       5%   
   P� 5&       � {�$ False��6+   . �5'      �� $ Bd��6/   # � ��6?    � ���� 5(      # � ��6/    � ��5)      P� 5*       �@J�	IsFocused$ False��6+   . �5+      �� $	 Bd2��6/    � y�$ 	Collapsed=�6@   �� 5,      $ Bd��6/    � y�$ Visible=�6?   5-      P� 5.       �@ IsValid$ False��6=   . �5/      �� $ Bd��60   # � 
 6@    � ���� 50      $	 Bd2��60   # � 
 6A    � ���� 51      $ errorIndicator��6/    � y�$ Visible=�6K   52      54      �� 56      "  ��6   8   6%   58      