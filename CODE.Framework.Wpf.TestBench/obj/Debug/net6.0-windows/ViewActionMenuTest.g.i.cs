﻿#pragma checksum "..\..\..\ViewActionMenuTest.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "11159E073E43F75A80E6BCD25CB11E45C65185DC"
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
using CODE.Framework.Wpf.Mvvm;
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


namespace CODE.Framework.Wpf.TestBench {
    
    
    /// <summary>
    /// ViewActionMenuTest
    /// </summary>
    public partial class ViewActionMenuTest : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\..\ViewActionMenuTest.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal CODE.Framework.Wpf.Mvvm.ViewActionMenu menu;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\..\ViewActionMenuTest.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal CODE.Framework.Wpf.Mvvm.ViewActionRibbon ribbon;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\..\ViewActionMenuTest.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal CODE.Framework.Wpf.Mvvm.ViewActionMenuButton button;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.3.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/CODE.Framework.Wpf.TestBench;V1.0.0.0;component/viewactionmenutest.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\ViewActionMenuTest.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.3.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.menu = ((CODE.Framework.Wpf.Mvvm.ViewActionMenu)(target));
            return;
            case 2:
            this.ribbon = ((CODE.Framework.Wpf.Mvvm.ViewActionRibbon)(target));
            return;
            case 3:
            this.button = ((CODE.Framework.Wpf.Mvvm.ViewActionMenuButton)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

