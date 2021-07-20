using System.Linq;
using System.Windows.Input;
using CODE.Framework.Wpf.Layout;

namespace CODE.Framework.Wpf.Mvvm
{
    /// <summary>Content presenter specific to hosting views</summary>
    public class ViewContentControl : ContentControl
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ViewContentControl"/> class.
        /// </summary>
        public ViewContentControl()
        {
            VerticalContentAlignment = VerticalAlignment.Stretch;
            HorizontalAlignment = HorizontalAlignment.Stretch;
        }

        /// <summary>Custom view content property used to host a view</summary>
        public object ViewContent
        {
            get => GetValue(ViewContentProperty);
            set => SetValue(ViewContentProperty, value);
        }

        /// <summary>Custom view content property used to host a view</summary>
        public static readonly DependencyProperty ViewContentProperty = DependencyProperty.Register("ViewContent", typeof(object), typeof(ViewContentControl), new UIPropertyMetadata(null, ViewContentPropertyChanged));

        /// <summary>Handler for view content changes</summary>
        /// <param name="d">Source object</param>
        /// <param name="e">Event arguments</param>
        private static void ViewContentPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            var ui = e.NewValue as UIElement;
            if (d is not ViewContentControl content) return;

            content.Content = ui;
            SetSizeStrategyOnHost(ui, content);

            if (ui == null) return;
            if (ui.InputBindings.Count < 1) return;

            if (ui is not FrameworkElement parent) return;
            while (parent.Parent != null)
            {
                if (parent.Parent is FrameworkElement newParent) parent = newParent;
                else break;
            }
            foreach (InputBinding binding in ui.InputBindings)
            {
                if (binding is not KeyBinding keyBinding) continue;

                var found = parent.InputBindings.OfType<KeyBinding>().Any(keyBinding2 => keyBinding2.Key == keyBinding.Key && keyBinding2.Modifiers == keyBinding.Modifiers);
                if (!found)
                    parent.InputBindings.Add(keyBinding);
            }
        }

        /// <summary>Attached property to set the view's host object that is size strategy aware</summary>
        public FrameworkElement SizeStrategyHost
        {
            get => (FrameworkElement)GetValue(SizeStrategyHostProperty);
            set => SetValue(SizeStrategyHostProperty, value);
        }

        /// <summary>Attached property to set the view's host object that is size strategy aware</summary>
        /// <remarks>This attached property can be attached to any UI Element to define a view size strategy aware object </remarks>
        public static readonly DependencyProperty SizeStrategyHostProperty = DependencyProperty.Register("SizeStrategyHost", typeof(FrameworkElement), typeof(ViewContentControl), new PropertyMetadata(null, SizeStrategyHostPropertyChanged));

        /// <summary>Handler for view content changes</summary>
        /// <param name="d">Source object</param>
        /// <param name="e">Event arguments</param>
        private static void SizeStrategyHostPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (d is not ViewContentControl content) return;
            SetSizeStrategyOnHost(content.ViewContent as View, content);
        }

        /// <summary>Sets the size strategy on host.</summary>
        /// <param name="view">The view.</param>
        /// <param name="viewContent">Content of the view.</param>
        private static void SetSizeStrategyOnHost(DependencyObject view, ViewContentControl viewContent)
        {
            if (view == null) return;
            if (viewContent == null) return;

            var host = viewContent.SizeStrategyHost;
            if (host == null) return;
            if (host is not SizeStrategyAwareGrid gridHost) return;

            gridHost.SizeStrategy = SimpleView.GetSizeStrategy(view);
        }
    }

    /// <summary>Grid class that is aware of size strategies</summary>
    public class SizeStrategyAwareGrid : Grid
    {
        /// <summary>Defines the size strategy employed by this grid</summary>
        public ViewSizeStrategies SizeStrategy
        {
            get => (ViewSizeStrategies)GetValue(SizeStrategyProperty);
            set => SetValue(SizeStrategyProperty, value);
        }

        /// <summary>Defines the size strategy employed by this grid</summary>
        public static readonly DependencyProperty SizeStrategyProperty = DependencyProperty.Register("SizeStrategy", typeof(ViewSizeStrategies), typeof(SizeStrategyAwareGrid), new UIPropertyMetadata(ViewSizeStrategies.UseMinimumSizeRequired, OnSizeStrategyChanged));

        private static void OnSizeStrategyChanged(DependencyObject d, DependencyPropertyChangedEventArgs args)
        {
            if (d is not SizeStrategyAwareGrid grid) return;

            if (grid.SizeStrategy == ViewSizeStrategies.UseMaximumSizeAvailable)
            {
                grid.VerticalAlignment = VerticalAlignment.Stretch;
                grid.HorizontalAlignment = HorizontalAlignment.Stretch;
            }
            else
            {
                grid.VerticalAlignment = VerticalAlignment.Center;
                grid.HorizontalAlignment = HorizontalAlignment.Center;
            }

            grid.InvalidateMeasure();
            grid.InvalidateArrange();
            grid.InvalidateVisual();
        }
    }
}
