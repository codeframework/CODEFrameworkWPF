﻿#pragma checksum "..\..\..\..\Tools\ViewVisualizer.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "48A86553D65CEF287A1F6177FC498FCCCCD77FDB"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using CODE.Framework.Wpf.Controls;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace CODE.Framework.Wpf.Mvvm.Tools {
    
    
    /// <summary>
    /// ViewVisualizer
    /// </summary>
    public partial class ViewVisualizer : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 28 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox viewList;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ScrollViewer ContentScroll;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Shapes.Rectangle ViewRectangle;
        
        #line default
        #line hidden
        
        
        #line 83 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ColorDropDown;
        
        #line default
        #line hidden
        
        
        #line 90 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox ShadowCheck;
        
        #line default
        #line hidden
        
        
        #line 92 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal CODE.Framework.Wpf.Controls.ZoomSlider ScaleSlider;
        
        #line default
        #line hidden
        
        
        #line 123 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TreeView styleTree;
        
        #line default
        #line hidden
        
        
        #line 148 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TreeView propertyTree;
        
        #line default
        #line hidden
        
        
        #line 168 "..\..\..\..\Tools\ViewVisualizer.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TreeView modelPropTree;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.2.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/CODE.Framework.Wpf.Mvvm;V5.0.2.0;component/tools/viewvisualizer.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Tools\ViewVisualizer.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.2.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.viewList = ((System.Windows.Controls.ListBox)(target));
            return;
            case 2:
            this.ContentScroll = ((System.Windows.Controls.ScrollViewer)(target));
            return;
            case 3:
            this.ViewRectangle = ((System.Windows.Shapes.Rectangle)(target));
            return;
            case 4:
            this.ColorDropDown = ((System.Windows.Controls.ComboBox)(target));
            
            #line 83 "..\..\..\..\Tools\ViewVisualizer.xaml"
            this.ColorDropDown.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.ShadowCheck = ((System.Windows.Controls.CheckBox)(target));
            
            #line 90 "..\..\..\..\Tools\ViewVisualizer.xaml"
            this.ShadowCheck.Checked += new System.Windows.RoutedEventHandler(this.CheckBox_Checked);
            
            #line default
            #line hidden
            
            #line 90 "..\..\..\..\Tools\ViewVisualizer.xaml"
            this.ShadowCheck.Unchecked += new System.Windows.RoutedEventHandler(this.CheckBox_Checked);
            
            #line default
            #line hidden
            return;
            case 6:
            this.ScaleSlider = ((CODE.Framework.Wpf.Controls.ZoomSlider)(target));
            
            #line 92 "..\..\..\..\Tools\ViewVisualizer.xaml"
            this.ScaleSlider.MouseDoubleClick += new System.Windows.Input.MouseButtonEventHandler(this.ScaleSlider_MouseDoubleClick);
            
            #line default
            #line hidden
            return;
            case 7:
            
            #line 103 "..\..\..\..\Tools\ViewVisualizer.xaml"
            ((System.Windows.Controls.TreeView)(target)).SelectedItemChanged += new System.Windows.RoutedPropertyChangedEventHandler<object>(this.TreeView_SelectedItemChanged);
            
            #line default
            #line hidden
            return;
            case 8:
            this.styleTree = ((System.Windows.Controls.TreeView)(target));
            return;
            case 9:
            this.propertyTree = ((System.Windows.Controls.TreeView)(target));
            return;
            case 10:
            this.modelPropTree = ((System.Windows.Controls.TreeView)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

