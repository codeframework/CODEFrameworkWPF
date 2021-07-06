using CODE.Framework.Wpf.Layout;
using CODE.Framework.Wpf.Utilities;

namespace CODE.Framework.Wpf.Mvvm
{
    /// <summary>
    /// Base class for views (can be used instead of UserControl)
    /// </summary>
    public class View : SimpleView, IViewInformation
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public View()
        {
            OriginalViewLoadLocation = string.Empty;
            Activated += OnActivated;
        }

        /// <summary>
        /// Called when the view is activated
        /// </summary>
        /// <param name="sender">The sender.</param>
        /// <param name="eventArgs">The <see cref="EventArgs"/> instance containing the event data.</param>
        /// <exception cref="System.NotImplementedException"></exception>
        private void OnActivated(object sender, EventArgs eventArgs)
        {
            if (!MoveFocusToDefaultOnActivate) return;

            var defaultControl = FindExplicitDefaultControl(this);
            if (defaultControl == null) defaultControl = FindDefaultControl(this);
            if (defaultControl != null) FocusHelper.FocusDelayed(defaultControl);
        }

        private FrameworkElement FindDefaultControl(FrameworkElement parent)
        {
            if (parent == null) return null;
            if (parent is Panel panel && panel.Children.Count > 0 && panel.Children[0] is FrameworkElement defaultChild) return defaultChild;
            if (parent is ItemsControl itemsControl && itemsControl.Items.Count > 0 && itemsControl.Items[0] is FrameworkElement defaultChild2) return defaultChild2;
            if (parent is ContentControl contentControl) return contentControl;

            return null;
        }

        private FrameworkElement FindExplicitDefaultControl(FrameworkElement parent)
        {
            if (parent == null) return null;

            if (parent is ItemsControl itemsControl)
                foreach (var item in itemsControl.Items)
                {
                    if (item is not FrameworkElement element) continue;
                    var defaultFocus = GetHasDefaultFocus(element);
                    if (defaultFocus) return element;

                    var childFocus = FindExplicitDefaultControl(element);
                    if (childFocus != null) return childFocus;
                }

            if (parent is Panel panel)
                foreach (var child in panel.Children)
                {
                    if (child is not FrameworkElement element) continue;
                    var defaultFocus = GetHasDefaultFocus(element);
                    if (defaultFocus) return element;

                    var childFocus = FindExplicitDefaultControl(element);
                    if (childFocus != null) return childFocus;
                }

            if (parent is ContentControl contentControl)
            {
                var defaultFocus = GetHasDefaultFocus(contentControl);
                if (defaultFocus) return contentControl;

                if (contentControl.Content != null)
                {
                    var childFocus = FindExplicitDefaultControl(contentControl.Content as FrameworkElement);
                    if (childFocus != null) return childFocus;
                }
            }

            return null;
        }

        /// <summary>Defines whether the control is the one to receive the default focus. Set it to true as an attached property to move focus to that control.</summary>
        /// <remarks>If multiple controls are set to receive the default first focus, the 'last one wins' rule is applied.</remarks>
        /// <example>&lt;TextBox c:Document.HasDefaultFocus="true" &gt;</example>
        public static readonly DependencyProperty HasDefaultFocusProperty = DependencyProperty.RegisterAttached("HasDefaultFocus", typeof(bool), typeof(SimpleView), new PropertyMetadata(false, OnHasDefaultFocusChanged));

        private static void OnHasDefaultFocusChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (!(e.NewValue is bool)) return;
            var hasFocus = (bool)e.NewValue;
            if (!hasFocus) return;
            if (d is FrameworkElement element)
                Controller.ExecuteAfterNextViewOpen(r => FocusHelper.FocusDelayed(element));
        }

        /// <summary>Defines whether the control is the one to receive the default focus. Set it to true as an attached property to move focus to that control.</summary>
        /// <remarks>If multiple controls are set to receive the default first focus, the 'last one wins' rule is applied.</remarks>
        /// <example>&lt;TextBox c:Document.HasDefaultFocus="true" &gt;</example>
        public static bool GetHasDefaultFocus(DependencyObject obj) => (bool)obj.GetValue(HasDefaultFocusProperty);

        /// <summary>Defines whether the control is the one to receive the default focus. Set it to true as an attached property to move focus to that control.</summary>
        /// <remarks>If multiple controls are set to receive the default first focus, the 'last one wins' rule is applied.</remarks>
        /// <example>&lt;TextBox c:Document.HasDefaultFocus="true" &gt;</example>
        public static void SetHasDefaultFocus(DependencyObject obj, bool value) => obj.SetValue(HasDefaultFocusProperty, value);

        /// <summary>
        /// Indicates whether the focus should be moved to the default control when the view gets activated
        /// </summary>
        /// <value><c>true</c> if [move focus to default on activate]; otherwise, <c>false</c>.</value>
        public bool MoveFocusToDefaultOnActivate
        {
            get => (bool)GetValue(MoveFocusToDefaultOnActivateProperty);
            set => SetValue(MoveFocusToDefaultOnActivateProperty, value);
        }

        /// <summary>
        /// Indicates whether the focus should be moved to the default control when the view gets activated
        /// </summary>
        public static readonly DependencyProperty MoveFocusToDefaultOnActivateProperty = DependencyProperty.Register("MoveFocusToDefaultOnActivate", typeof(bool), typeof(View), new PropertyMetadata(false));

        /// <summary>
        /// Defines a standard icon to be used
        /// </summary>
        /// <value>The standard icon.</value>
        /// <remarks>This automatically sets the associated icon resource key</remarks>
        public StandardIcons StandardIcon
        {
            get => (StandardIcons)GetValue(StandardIconProperty);
            set => SetValue(StandardIconProperty, value);
        }

        /// <summary>
        /// Defines a standard icon to be used
        /// </summary>
        /// <value>The standard icon.</value>
        /// <remarks>This automatically sets the associated icon resource key</remarks>
        public static readonly DependencyProperty StandardIconProperty = DependencyProperty.Register("StandardIcon", typeof(StandardIcons), typeof(View), new PropertyMetadata(StandardIcons.None, OnStandardIconChanged));

        /// <summary>
        /// Handles the StandardIconChanged event event.
        /// </summary>
        /// <param name="d">The object the icon is set on.</param>
        /// <param name="e">The <see cref="DependencyPropertyChangedEventArgs"/> instance containing the event data.</param>
        private static void OnStandardIconChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (d is not View view) return;
            SetIconResourceKey(view, StandardIconHelper.GetStandardIconKeyFromEnum(view.StandardIcon));
        }

        /// <summary>
        /// Defines the standard layout style to be used for this view.
        /// </summary>
        /// <value>The standard layout.</value>
        /// <remarks>This automatically assigns a dynamic resource link to the specified layout style</remarks>
        public StandardLayouts StandardLayout
        {
            get => (StandardLayouts)GetValue(StandardLayoutProperty); 
            set => SetValue(StandardLayoutProperty, value);
        }

        /// <summary>
        /// Defines the standard layout style to be used for this view.
        /// </summary>
        /// <value>The standard layout.</value>
        /// <remarks>This automatically assigns a dynamic resource link to the specified layout style</remarks>
        public static readonly DependencyProperty StandardLayoutProperty = DependencyProperty.Register("StandardLayout", typeof(StandardLayouts), typeof(View), new PropertyMetadata(StandardLayouts.None, OnStandardLayoutChanged));

        private static void OnStandardLayoutChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (d is not View view) return;
            if (view.StandardLayout == StandardLayouts.None) return; // We do not un-assign anything, since we do not want to interfere with other settings
            view.SetResourceReference(StyleProperty, StandardLayoutHelper.GetStandardLayoutKeyFromEnum(view.StandardLayout));
        }
    }
}