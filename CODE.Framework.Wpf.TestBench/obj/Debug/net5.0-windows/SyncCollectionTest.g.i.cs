﻿#pragma checksum "..\..\..\SyncCollectionTest.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "D54B02BA2533172A7CCB4D8BB1EFF7D6DF75541E"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

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
    /// SyncCollectionTest
    /// </summary>
    public partial class SyncCollectionTest : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/CODE.Framework.Wpf.TestBench;component/synccollectiontest.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\SyncCollectionTest.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 23 "..\..\..\SyncCollectionTest.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.AddItem);
            
            #line default
            #line hidden
            return;
            case 2:
            
            #line 24 "..\..\..\SyncCollectionTest.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.RemoveItem);
            
            #line default
            #line hidden
            return;
            case 3:
            
            #line 25 "..\..\..\SyncCollectionTest.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ResetCollection);
            
            #line default
            #line hidden
            return;
            case 4:
            
            #line 26 "..\..\..\SyncCollectionTest.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Sync1);
            
            #line default
            #line hidden
            return;
            case 5:
            
            #line 27 "..\..\..\SyncCollectionTest.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Unsync1);
            
            #line default
            #line hidden
            return;
            case 6:
            
            #line 28 "..\..\..\SyncCollectionTest.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Sync2);
            
            #line default
            #line hidden
            return;
            case 7:
            
            #line 29 "..\..\..\SyncCollectionTest.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Unsync2);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

