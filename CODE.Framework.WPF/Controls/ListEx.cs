// TODO: Clean this file up!

using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Media;
using System.Windows.Threading;
using CODE.Framework.Wpf.Utilities;

namespace CODE.Framework.Wpf.Controls
{
    /// <summary>Special features that can be attached to listboxes</summary>
    public class ListEx : DependencyObject
    {
        /// <summary>This attached property can be used to generically express the content of columns</summary>
        public static readonly DependencyProperty ColumnsProperty = DependencyProperty.RegisterAttached("Columns", typeof(ListColumnsCollection), typeof(ListEx), new FrameworkPropertyMetadata(null) { BindsTwoWayByDefault = false });

        /// <summary>Sets the columns.</summary>
        /// <param name="o">The DependencyObject to set the value on.</param>
        /// <param name="value">The value.</param>
        public static void SetColumns(DependencyObject o, ListColumnsCollection value) => o.SetValue(ColumnsProperty, value);

        /// <summary>Gets the columns.</summary>
        /// <param name="o">The DependencyObject to get the value on.</param>
        public static ListColumnsCollection GetColumns(DependencyObject o) => (ListColumnsCollection)o.GetValue(ColumnsProperty);

        /// <summary>Defines whether header edit controls are to be displayed (if there are any defined)</summary>
        public static readonly DependencyProperty ShowHeaderEditControlsProperty = DependencyProperty.RegisterAttached("ShowHeaderEditControls", typeof(bool), typeof(ListEx), new PropertyMetadata(true));

        /// <summary>Defines whether header edit controls are to be displayed (if there are any defined)</summary>
        public static void SetShowHeaderEditControls(DependencyObject o, bool value) => o.SetValue(ShowHeaderEditControlsProperty, value);

        /// <summary>Defines whether header edit controls are to be displayed (if there are any defined)</summary>
        public static bool GetShowHeaderEditControls(DependencyObject o) => (bool)o.GetValue(ShowHeaderEditControlsProperty);

        /// <summary>Defines whether footer edit controls are to be displayed (if there are any defined)</summary>
        public static readonly DependencyProperty ShowFooterEditControlsProperty = DependencyProperty.RegisterAttached("ShowFooterEditControls", typeof(bool), typeof(ListEx), new PropertyMetadata(true));

        /// <summary>Defines whether footer edit controls are to be displayed (if there are any defined)</summary>
        public static void SetShowFooterEditControls(DependencyObject o, bool value) => o.SetValue(ShowFooterEditControlsProperty, value);

        /// <summary>Defines whether footer edit controls are to be displayed (if there are any defined)</summary>
        public static bool GetShowFooterEditControls(DependencyObject o) => (bool)o.GetValue(ShowFooterEditControlsProperty);

        /// <summary>Defines whether row selection is to be preserved after a re-sort operation</summary>
        public static readonly DependencyProperty PreserveSelectionAfterResortProperty = DependencyProperty.RegisterAttached("PreserveSelectionAfterResort", typeof(bool), typeof(ListEx), new PropertyMetadata(true));

        /// <summary>
        /// Defines whether row selection is to be preserved after a re-sort operation
        /// </summary>
        /// <param name="o">The o.</param>
        /// <param name="value">if set to <c>true</c> [value].</param>
        public static void SetPreserveSelectionAfterResort(DependencyObject o, bool value) => o.SetValue(PreserveSelectionAfterResortProperty, value);

        /// <summary>
        /// Defines whether row selection is to be preserved after a re-sort operation
        /// </summary>
        /// <param name="o">The o.</param>
        /// <returns></returns>
        public static bool GetPreserveSelectionAfterResort(DependencyObject o) => (bool)o.GetValue(PreserveSelectionAfterResortProperty);

        /// <summary>
        /// Setting this property to true on a ListBox automatically loads appropriate templates for the ListBox to support rows and columns
        /// </summary>
        public static readonly DependencyProperty AutoEnableListColumnsProperty = DependencyProperty.RegisterAttached("AutoEnableListColumns", typeof(bool), typeof(ListEx), new PropertyMetadata(false, OnAutoEnableListColumnsChanged));

        /// <summary>
        /// Fires when the AutoEnableListColumns property changed
        /// </summary>
        /// <param name="d">The dependency object (ListBox)</param>
        /// <param name="args">Event args.</param>
        private static void OnAutoEnableListColumnsChanged(DependencyObject d, DependencyPropertyChangedEventArgs args)
        {
            if (!(bool)args.NewValue) return;
            var list = d as ListBox;
            if (list == null) return;

            var dictionaryFound = false;
            foreach (var resource in list.Resources.OfType<ResourceDictionary>())
                foreach (var dictionary in resource.MergedDictionaries)
                    if (dictionary.Source.AbsoluteUri.EndsWith("component/styles/MultiColumnList.xaml"))
                    {
                        dictionaryFound = true;
                        break;
                    }

            if (!dictionaryFound)
                list.Resources.MergedDictionaries.Add(new ResourceDictionary { Source = new Uri("pack://application:,,,/CODE.Framework.Wpf;component/styles/MultiColumnList.xaml", UriKind.Absolute) });

            list.SetResourceReference(FrameworkElement.StyleProperty, "CODE.Framework-MultiColumnList");
        }

        /// <summary>
        /// Setting this property to true on a ListBox automatically loads appropriate templates for the ListBox to support rows and columns
        /// </summary>
        public static void SetAutoEnableListColumns(DependencyObject d, bool value) => d.SetValue(AutoEnableListColumnsProperty, value);

        /// <summary>
        /// Setting this property to true on a ListBox automatically loads appropriate templates for the ListBox to support rows and columns
        /// </summary>
        public static bool GetAutoEnableListColumns(DependencyObject d) => (bool)d.GetValue(AutoEnableListColumnsProperty);

        /// <summary>
        /// Indicates whether the league is to be forced into edit more (if set to true)
        /// </summary>
        public static readonly DependencyProperty IsEditableProperty = DependencyProperty.RegisterAttached("IsEditable", typeof(bool), typeof(ListEx), new PropertyMetadata(false));

        /// <summary>
        /// Indicates whether the league is to be forced into edit more (if set to true)
        /// </summary>
        /// <param name="d">The object to set the value on</param>
        /// <param name="value">True or false</param>
        public static void SetIsEditable(DependencyObject d, bool value) => d.SetValue(IsEditableProperty, value);

        /// <summary>
        /// Indicates whether the league is to be forced into edit more (if set to true)
        /// </summary>
        /// <param name="d">The object to get the value for.</param>
        /// <returns>True or false</returns>
        public static bool GetIsEditable(DependencyObject d) => (bool)d.GetValue(IsEditableProperty);

        /// <summary>
        /// Defines how the list applies auto-filtering
        /// </summary>
        public static readonly DependencyProperty AutoFilterModeProperty = DependencyProperty.Register("AutoFilterMode", typeof(AutoFilterMode), typeof(ListEx), new PropertyMetadata(AutoFilterMode.OneColumnAtATime));

        /// <summary>
        /// Defines how the list applies auto-filtering
        /// </summary>
        /// <param name="d">The object to get the value for.</param>
        /// <param name="value">The new value to be set</param>
        public static void SetAutoFilterMode(DependencyObject d, AutoFilterMode value) => d.SetValue(AutoFilterModeProperty, value);

        /// <summary>
        /// Defines how the list applies auto-filtering
        /// </summary>
        /// <param name="d">The object to get the value for.</param>
        /// <returns>True or false</returns>
        public static AutoFilterMode GetAutoFilterMode(DependencyObject d) => (AutoFilterMode)d.GetValue(AutoFilterModeProperty);

        /// <summary>
        /// For internal use only
        /// </summary>
        [Browsable(false)]
        public static readonly DependencyProperty InAutoFilteringProperty = DependencyProperty.RegisterAttached("InAutoFiltering", typeof(bool), typeof(ListEx), new PropertyMetadata(false));

        /// <summary>
        /// For internal use only
        /// </summary>
        /// <param name="d">The object to get the value for.</param>
        /// <param name="value">The new value to be set</param>
        [Browsable(false)]
        public static void SetInAutoFiltering(DependencyObject d, bool value) => d.SetValue(InAutoFilteringProperty, value);

        /// <summary>
        /// For internal use only
        /// </summary>
        /// <param name="d">The object to get the value for.</param>
        /// <returns>True or false</returns>
        [Browsable(false)]
        public static bool GetInAutoFiltering(DependencyObject d) => (bool)d.GetValue(InAutoFilteringProperty);

        /// <summary>
        /// For internal use only
        /// </summary>
        [Browsable(false)]
        public static readonly DependencyProperty InAutoSortingProperty = DependencyProperty.RegisterAttached("InAutoSorting", typeof(bool), typeof(ListEx), new PropertyMetadata(false));

        /// <summary>
        /// For internal use only
        /// </summary>
        /// <param name="d">The object to get the value for.</param>
        /// <param name="value">The new value to be set</param>
        [Browsable(false)]
        public static void SetInAutoSorting(DependencyObject d, bool value) => d.SetValue(InAutoSortingProperty, value);

        /// <summary>
        /// For internal use only
        /// </summary>
        /// <param name="d">The object to get the value for.</param>
        /// <returns>True or false</returns>
        [Browsable(false)]
        public static bool GetInAutoSorting(DependencyObject d) => (bool)d.GetValue(InAutoSortingProperty);

        /// <summary>Required for internal use only</summary>
        [Browsable(false)] public static readonly DependencyProperty ListEx_InChangeProperty = DependencyProperty.RegisterAttached("ListEx_InChange", typeof(bool), typeof(ListEx), new PropertyMetadata(false));
        /// <summary>Required for internal use only</summary>
        [Browsable(false)] public static readonly DependencyProperty ListEx_SelectionChangedEventWiredUpProperty = DependencyProperty.RegisterAttached("ListEx_SelectionChangedEventWiredUp", typeof(bool), typeof(ListEx), new PropertyMetadata(false));

        /// <summary>Gets SelectedValueEx</summary>
        /// <param name="d">The object to get the value on</param>
        /// <returns>Value</returns>
        public static object GetSelectedValueEx(DependencyObject d) => d.GetValue(SelectedValueExProperty);

        /// <summary>Sets the SelectedValueEx property</summary>
        /// <param name="d">The object toset the value on</param>
        /// <param name="value">The value.</param>
        public static void SetSelectedValueEx(DependencyObject d, object value) => d.SetValue(SelectedValueExProperty, value);

        /// <summary>SelectedValueEx property</summary>
        public static readonly DependencyProperty SelectedValueExProperty = DependencyProperty.RegisterAttached("SelectedValueEx", typeof(object), typeof(ListEx), new FrameworkPropertyMetadata(null, OnSelectedValueExChanged) { BindsTwoWayByDefault = true });

        /// <summary>
        /// Called when SelectedValueEx changed
        /// </summary>
        /// <param name="d">The dependency object the change happened on</param>
        /// <param name="e">The <see cref="DependencyPropertyChangedEventArgs"/> instance containing the event data.</param>
        private static void OnSelectedValueExChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (!(d is Selector selector)) return;

            if (!selector.IsInitialized && selector.SelectedValue != e.NewValue)
            {
                selector.SelectedValue = e.NewValue; // Still early enough to not worry about UI interactions
                return;
            }
            if (selector.SelectedValue == null && selector.SelectedValue != e.NewValue)
            {
                selector.SelectedValue = e.NewValue; // If the value is null, we can always assign (this is the rule we make... this may have to be adjusted if it isn't what we want).
                return;
            }
            if (selector.SelectedValue != e.NewValue)
            {
                selector.SelectedValue = e.NewValue; // This is what most calls will go to. We only allow updates when it is specifically allowed
                return;
            }
        }

        /// <summary>Gets the confirmation text.</summary>
        /// <param name="d">The object to get the value for.</param>
        /// <returns>Confirmation text</returns>
        public static string GetConfirmationText(DependencyObject d) => (string)d.GetValue(ConfirmationTextProperty);

        /// <summary>Sets the confirmation text.</summary>
        /// <param name="d">The object to set the value on.</param>
        /// <param name="value">Confirmation Text</param>
        /// <returns>Confirmation text</returns>
        public static void SetConfirmationText(DependencyObject d, string value) => d.SetValue(ConfirmationTextProperty, value);

        /// <summary>Backing field for confirmation text property</summary>
        public static readonly DependencyProperty ConfirmationTextProperty = DependencyProperty.RegisterAttached("ConfirmationText", typeof(string), typeof(ListEx), new PropertyMetadata("Are you sure?"));

        /// <summary>Gets the confirmation text messagebox window caption.</summary>
        /// <param name="d">The object to get the value for.</param>
        /// <returns>Confirmation header text</returns>
        public static string GetConfirmationTextCaption(DependencyObject d) => (string)d.GetValue(ConfirmationTextCaptionProperty);

        /// <summary>Sets the confirmation text messagebox window caption.</summary>
        /// <param name="d">The object to set the value on.</param>
        /// <param name="value">Confirmation Text Caption</param>
        /// <returns>Confirmation text caption</returns>
        public static void SetConfirmationTextCaption(DependencyObject d, string value) => d.SetValue(ConfirmationTextCaptionProperty, value);

        /// <summary>Backing field for confirmation text caption</summary>
        public static readonly DependencyProperty ConfirmationTextCaptionProperty = DependencyProperty.RegisterAttached("ConfirmationTextCaption", typeof(string), typeof(ListEx), new PropertyMetadata("Change Value"));

        /// <summary>Toggles whether confirmation is active or not.</summary>
        /// <param name="d">The object to get the value for.</param>
        /// <returns>True or false</returns>
        public static bool GetConfirmationEnabled(DependencyObject d) => (bool)d.GetValue(ConfirmationEnabledProperty);

        /// <summary>Toggles whether confirmation is active or not.</summary>
        /// <param name="d">The object to set the value on.</param>
        /// <param name="value">True or false</param>
        /// <returns>True or false</returns>
        public static void SetConfirmationEnabled(DependencyObject d, bool value) => d.SetValue(ConfirmationEnabledProperty, value);

        /// <summary>Backing field for confirmation active property.</summary>
        public static readonly DependencyProperty ConfirmationEnabledProperty = DependencyProperty.RegisterAttached("ConfirmationEnabled", typeof(bool), typeof(ListEx), new PropertyMetadata(false, OnConfirmationEnabledChanged));

        /// <summary>Confirmation Active change handler</summary>
        /// <param name="d">The dependency object the change happened on.</param>
        /// <param name="e">The <see cref="DependencyPropertyChangedEventArgs" /> instance containing the event data.</param>
        private static void OnConfirmationEnabledChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (!(d is Selector selector)) return;

            if (!(bool)selector.GetValue(ListEx_SelectionChangedEventWiredUpProperty))
            {
                selector.SelectionChanged += (s, e2) =>
                {
                    if (!(e2.Source is Selector selector2)) return;

                    if (GetConfirmationActive(selector))
                    {
                        if (!(bool)selector2.GetValue(ListEx_InChangeProperty) && selector2.IsInitialized && selector2.SelectedValue != null && e2.RemovedItems.Count > 0)
                        {
                            if (MessageBox.Show(GetConfirmationText(selector2), GetConfirmationTextCaption(selector2), MessageBoxButton.YesNo) != MessageBoxResult.Yes)
                            {
                                if (e2.RemovedItems.Count > 0)
                                {
                                    var removedIndex = -1;
                                    foreach (var item in selector2.Items)
                                    {
                                        removedIndex++;
                                        if (item == e2.RemovedItems[0])
                                        {
                                            e2.Handled = true;
                                            selector2.SetValue(ListEx_InChangeProperty, true);
                                            selector2.SelectedIndex = removedIndex;
                                            selector2.SetValue(ListEx_InChangeProperty, false);
                                        }
                                    }
                                }
                            }
                            else
                            {
                                e2.Handled = true;
                                SetSelectedValueEx(selector2, selector2.SelectedValue);
                            }
                        }
                    }
                    else
                    {
                        e2.Handled = true;
                        SetSelectedValueEx(selector2, selector2.SelectedValue);
                    }
                };

                selector.SetValue(ListEx_SelectionChangedEventWiredUpProperty, true); // We want to make sure we only have a single event handler for each dependency object this gets set on
            }
        }

        /// <summary>Toggles whether confirmation is active or not.</summary>
        /// <param name="d">The object to get the value for.</param>
        /// <returns>True or false</returns>
        public static bool GetConfirmationActive(DependencyObject d) => (bool)d.GetValue(ConfirmationActiveProperty);

        /// <summary>Toggles whether confirmation is active or not.</summary>
        /// <param name="d">The object to set the value on.</param>
        /// <param name="value">True or false</param>
        /// <returns>True or false</returns>
        public static void SetConfirmationActive(DependencyObject d, bool value) => d.SetValue(ConfirmationActiveProperty, value);

        /// <summary>Backing field for confirmation active property.</summary>
        public static readonly DependencyProperty ConfirmationActiveProperty = DependencyProperty.RegisterAttached("ConfirmationActive", typeof(bool), typeof(ListEx), new PropertyMetadata(true));
    }

    /// <summary>
    /// Defines the auto-filter mode of a list
    /// </summary>
    public enum AutoFilterMode
    {
        /// <summary>
        /// Filtering one column at a time. When a column is filtered while another column already
        /// has a filter applied, the old filter is removed
        /// </summary>
        OneColumnAtATime,

        /// <summary>
        /// Allows for filters on multiple columns at once. All the filters are combined with 
        /// an AND operation.
        /// </summary>
        AllColumnsAnd,

        /// <summary>
        /// Allows for filters on multiple columns at once. All the filters are combined with 
        /// an OR operation.
        /// </summary>
        AllColumnsOr
    }

    /// <summary>Observable collection of generic list columns</summary>
    [Serializable]
    public class ListColumnsCollection : ObservableCollection<ListColumn>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ListColumnsCollection"/> class.
        /// </summary>
        public ListColumnsCollection() => CollectionChanged += TriggerDelayedCollectionChanged;

        /// <summary>
        /// Acts very similar to CollectionChanged, but fires 25ms delayed, and only fires once
        /// when a lot of CollectionChanged events fire within a tight loop.
        /// </summary>
        public event NotifyCollectionChangedEventHandler CollectionChangedDelayed;

        private DispatcherTimer _delayTimer;
        private bool _showHeaders = true;
        private bool _showFooters;
        private bool _allowColumnMove = true;
        private ListGridLineMode _showGridLines = ListGridLineMode.Never;
        private string _editModeBindingPath;
        private DataTemplate _detailTemplate;
        private string _detailExpandedPath;
        private bool _detailSpansFullWidth = true;
        private string _defaultDisplayBindingPath = "Text1";

        private void TriggerDelayedCollectionChanged(object sender, NotifyCollectionChangedEventArgs args)
        {
            if (CollectionChangedDelayed == null) return; // No point in firing it

            // This timer fires with a delay of 25ms. This means that if this method gets called often on a tight loop, 
            // it will always reset the timer so it only fires once the last call happened and 25ms have gone by.
            if (_delayTimer == null)
                _delayTimer = new DispatcherTimer(TimeSpan.FromMilliseconds(25), DispatcherPriority.Normal, (s, e) =>
                {
                    _delayTimer.IsEnabled = false;
                    var handler = CollectionChangedDelayed;
                    if (handler != null)
                        handler(sender, args);
                }, Application.Current.Dispatcher)
                { IsEnabled = false };
            else
                _delayTimer.IsEnabled = false; // Resets the timer

            // Triggering the next timer run
            _delayTimer.IsEnabled = true;
        }

        /// <summary>
        /// Path to a boolean source that defines whether a row is editable or not
        /// </summary>
        public string EditModeBindingPath
        {
            get => _editModeBindingPath;
            set
            {
                if (value == _editModeBindingPath) return;
                _editModeBindingPath = value;
                NotifyChanged("EditModeBindingPath");
            }
        }

        /// <summary>
        /// Defines whether and when grid lines shall be displayed
        /// </summary>
        public ListGridLineMode ShowGridLines
        {
            get => _showGridLines;
            set
            {
                if (value == _showGridLines) return;
                _showGridLines = value;
                NotifyChanged("ShowGridLines");
            }
        }

        /// <summary>
        /// Defines whether columns can be moved/dragged to change positions
        /// </summary>
        public bool AllowColumnMove
        {
            get => _allowColumnMove;
            set
            {
                if (value == _allowColumnMove) return;
                _allowColumnMove = value;
                NotifyChanged("AllowColumnMove");
            }
        }

        /// <summary>
        /// Indicates whether or not column headers are desired
        /// </summary>
        public bool ShowHeaders
        {
            get => _showHeaders;
            set
            {
                if (value == _showHeaders) return;
                _showHeaders = value;
                NotifyChanged("ShowHeaders");
            }
        }

        /// <summary>
        /// Indicates whether or not column headers are desired
        /// </summary>
        public bool ShowFooters
        {
            get => _showFooters;
            set
            {
                if (value == _showFooters) return;
                _showFooters = value;
                NotifyChanged("ShowFooters");
            }
        }

        /// <summary>Template used for a potential detail area</summary>
        public DataTemplate DetailTemplate
        {
            get => _detailTemplate;
            set
            {
                _detailTemplate = value;
                NotifyChanged("DetailTemplate");
            }
        }

        /// <summary>
        /// Defines whether the detail area is auto-assigned the full width available in the list (true),
        /// or whether the controls in the detail template define their own width (false).
        /// </summary>
        public bool DetailSpansFullWidth
        {
            get => _detailSpansFullWidth;
            set
            {
                _detailSpansFullWidth = value;
                NotifyChanged("DetailSpansFullWidth");
            }
        }

        /// <summary>
        /// Path to a boolean property that indicates whether the detail area is expanded or not
        /// </summary>
        public string DetailExpandedPath
        {
            get => _detailExpandedPath;
            set
            {
                _detailExpandedPath = value;
                NotifyChanged("DetailExpandedPath");
            }
        }

        /// <summary>
        /// Binding path to a field that represents the entire row. Typically the same binding path as the first column in the list.
        /// </summary>
        public string DefaultDisplayBindingPath
        {
            get => _defaultDisplayBindingPath;
            set
            {
                _defaultDisplayBindingPath = value;
                NotifyChanged("DefaultDisplayBindingPath");
            }
        }

        /// <summary>
        /// Can be used to indicate a property changed
        /// </summary>
        /// <param name="propertyName">Name of the changed property (or empty string to indicate a refresh of all properties)</param>
        protected virtual void NotifyChanged(string propertyName = "")
        {
            OnPropertyChanged(new PropertyChangedEventArgs(propertyName));

            var handler = PropertyChangedPublic;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

        /// <summary>
        /// Public version of property changed, which only happens for the properties defined in this class directly.
        /// </summary>
        /// <remarks>Requires since the default implementation is protected</remarks>
        public event PropertyChangedEventHandler PropertyChangedPublic;
    }

    /// <summary>
    /// An abstract definition of a column
    /// </summary>
    public class ListColumn : DependencyObject
    {
        /// <summary>Column Header</summary>
        public object Header
        {
            get => GetValue(HeaderProperty);
            set => SetValue(HeaderProperty, value);
        }

        /// <summary>Column Header</summary>
        public static readonly DependencyProperty HeaderProperty = DependencyProperty.Register("Header", typeof(object), typeof(ListColumn), new UIPropertyMetadata(null));

        /// <summary>Column Footer</summary>
        public object Footer
        {
            get => GetValue(FooterProperty);
            set => SetValue(FooterProperty, value);
        }

        /// <summary>Column Footer</summary>
        public static readonly DependencyProperty FooterProperty = DependencyProperty.Register("Footer", typeof(object), typeof(ListColumn), new UIPropertyMetadata(null));

        /// <summary>Column Footer</summary>
        public string FooterBindingPath
        {
            get => (string)GetValue(FooterBindingPathProperty);
            set => SetValue(FooterBindingPathProperty, value);
        }

        /// <summary>Column Footer</summary>
        public static readonly DependencyProperty FooterBindingPathProperty = DependencyProperty.Register("FooterBindingPath", typeof(string), typeof(ListColumn), new UIPropertyMetadata(null));

        /// <summary>Defines whether a header label (text) shall be displayed</summary>
        /// <value>True (default) or false</value>
        public bool ShowColumnHeaderText
        {
            get => (bool)GetValue(ShowColumnHeaderTextProperty);
            set => SetValue(ShowColumnHeaderTextProperty, value);
        }

        /// <summary>Defines whether a header label (text) shall be displayed</summary>
        /// <value>True (default) or false</value>
        public static readonly DependencyProperty ShowColumnHeaderTextProperty = DependencyProperty.Register("ShowColumnHeaderText", typeof(bool), typeof(ListColumn), new PropertyMetadata(true));

        /// <summary>Defines whether a footer label (text) shall be displayed</summary>
        /// <value>True (default) or false</value>
        public bool ShowColumnFooterText
        {
            get => (bool)GetValue(ShowColumnFooterTextProperty);
            set => SetValue(ShowColumnFooterTextProperty, value);
        }

        /// <summary>Defines whether a footer label (text) shall be displayed</summary>
        /// <value>True (default) or false</value>
        public static readonly DependencyProperty ShowColumnFooterTextProperty = DependencyProperty.Register("ShowColumnFooterText", typeof(bool), typeof(ListColumn), new PropertyMetadata(true));

        /// <summary>Defines whether a header edit control (textbox) shall be displayed</summary>
        /// <value>True or false (default)</value>
        public bool ShowColumnHeaderEditControl
        {
            get => (bool)GetValue(ShowColumnHeaderEditControlProperty);
            set => SetValue(ShowColumnHeaderEditControlProperty, value);
        }

        /// <summary>Defines whether a header edit control (textbox) shall be displayed</summary>
        /// <value>True or false (default)</value>
        public static readonly DependencyProperty ShowColumnHeaderEditControlProperty = DependencyProperty.Register("ShowColumnHeaderEditControl", typeof(bool), typeof(ListColumn), new PropertyMetadata(false));

        /// <summary>Defines whether a footer edit control (textbox) shall be displayed</summary>
        /// <value>True or false (default)</value>
        public bool ShowColumnFooterEditControl
        {
            get => (bool)GetValue(ShowColumnFooterEditControlProperty);
            set => SetValue(ShowColumnFooterEditControlProperty, value);
        }

        /// <summary>Defines whether a footer edit control (textbox) shall be displayed</summary>
        /// <value>True or false (default)</value>
        public static readonly DependencyProperty ShowColumnFooterEditControlProperty = DependencyProperty.Register("ShowColumnFooterEditControl", typeof(bool), typeof(ListColumn), new PropertyMetadata(false));

        /// <summary>Binding path for a column header edit control</summary>
        /// <value>The column header edit control binding path.</value>
        public string ColumnHeaderEditControlBindingPath
        {
            get => (string)GetValue(ColumnHeaderEditControlBindingPathProperty);
            set => SetValue(ColumnHeaderEditControlBindingPathProperty, value);
        }

        /// <summary>Binding path for a column header edit control</summary>
        /// <value>The column header edit control binding path.</value>
        public static readonly DependencyProperty ColumnHeaderEditControlBindingPathProperty = DependencyProperty.Register("ColumnHeaderEditControlBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Binding path for a column footer edit control</summary>
        /// <value>The column footer edit control binding path.</value>
        public string ColumnFooterEditControlBindingPath
        {
            get => (string)GetValue(ColumnFooterEditControlBindingPathProperty);
            set => SetValue(ColumnFooterEditControlBindingPathProperty, value);
        }

        /// <summary>Binding path for a column footer edit control</summary>
        /// <value>The column footer edit control binding path.</value>
        public static readonly DependencyProperty ColumnFooterEditControlBindingPathProperty = DependencyProperty.Register("ColumnFooterEditControlBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Binding update trigger for a column header edit control</summary>
        /// <value>The column header edit control update trigger.</value>
        public UpdateSourceTrigger ColumnHeaderEditControlUpdateTrigger
        {
            get => (UpdateSourceTrigger)GetValue(ColumnHeaderEditControlUpdateTriggerProperty);
            set => SetValue(ColumnHeaderEditControlUpdateTriggerProperty, value);
        }

        /// <summary>Binding update trigger for a column header edit control</summary>
        /// <value>The column header edit control update trigger.</value>
        public static readonly DependencyProperty ColumnHeaderEditControlUpdateTriggerProperty = DependencyProperty.Register("ColumnHeaderEditControlUpdateTrigger", typeof(UpdateSourceTrigger), typeof(ListColumn), new PropertyMetadata(UpdateSourceTrigger.Default));

        /// <summary>Binding update trigger for a column footer edit control</summary>
        /// <value>The column footer edit control update trigger.</value>
        public UpdateSourceTrigger ColumnFooterEditControlUpdateTrigger
        {
            get => (UpdateSourceTrigger)GetValue(ColumnFooterEditControlUpdateTriggerProperty);
            set => SetValue(ColumnFooterEditControlUpdateTriggerProperty, value);
        }

        /// <summary>Binding update trigger for a column footer edit control</summary>
        /// <value>The column footer edit control update trigger.</value>
        public static readonly DependencyProperty ColumnFooterEditControlUpdateTriggerProperty = DependencyProperty.Register("ColumnFooterEditControlUpdateTrigger", typeof(UpdateSourceTrigger), typeof(ListColumn), new PropertyMetadata(UpdateSourceTrigger.Default));

        /// <summary>Watermark text for a potential header control</summary>
        /// <value>The column header edit control watermark text.</value>
        public string ColumnHeaderEditControlWatermarkText
        {
            get => (string)GetValue(ColumnHeaderEditControlWatermarkTextProperty);
            set => SetValue(ColumnHeaderEditControlWatermarkTextProperty, value);
        }

        /// <summary>Watermark text for a potential header control</summary>
        /// <value>The column header edit control watermark text.</value>
        public static readonly DependencyProperty ColumnHeaderEditControlWatermarkTextProperty = DependencyProperty.Register("ColumnHeaderEditControlWatermarkText", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Watermark text for a potential footer control</summary>
        /// <value>The column footer edit control watermark text.</value>
        public string ColumnFooterEditControlWatermarkText
        {
            get => (string)GetValue(ColumnFooterEditControlWatermarkTextProperty);
            set => SetValue(ColumnFooterEditControlWatermarkTextProperty, value);
        }

        /// <summary>Watermark text for a potential footer control</summary>
        /// <value>The column footer edit control watermark text.</value>
        public static readonly DependencyProperty ColumnFooterEditControlWatermarkTextProperty = DependencyProperty.Register("ColumnFooterEditControlWatermarkText", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Column Width</summary>
        public GridLength Width
        {
            get => (GridLength)GetValue(WidthProperty);
            set => SetValue(WidthProperty, value);
        }

        /// <summary>Column Width</summary>
        public static readonly DependencyProperty WidthProperty = DependencyProperty.Register("Width", typeof(GridLength), typeof(ListColumn), new UIPropertyMetadata(new GridLength(100d), OnWidthChanged));

        /// <summary>
        /// Fires when the column width changes
        /// </summary>
        /// <param name="d">Column object</param>
        /// <param name="args">Event arguments</param>
        private static void OnWidthChanged(DependencyObject d, DependencyPropertyChangedEventArgs args)
        {
            var column = d as ListColumn;
            if (column == null) return;

            if (column.WidthChanged != null)
                column.WidthChanged(column, new EventArgs());
        }

        /// <summary>
        /// Occurs when the column width changes
        /// </summary>
        public event EventHandler WidthChanged;

        /// <summary>For internal use only</summary>
        public double ActualWidth
        {
            get => (double)GetValue(ActualWidthProperty);
            set => SetValue(ActualWidthProperty, value);
        }

        /// <summary>For internal use only</summary>
        public static readonly DependencyProperty ActualWidthProperty = DependencyProperty.Register("ActualWidth", typeof(double), typeof(ListColumn), new PropertyMetadata(-1d));

        /// <summary>Path the column is bound to</summary>
        public string BindingPath
        {
            get => (string)GetValue(BindingPathProperty);
            set => SetValue(BindingPathProperty, value);
        }

        /// <summary>Path expression the column is bound to (used as a standard binding expression into each item's data context</summary>
        public static readonly DependencyProperty BindingPathProperty = DependencyProperty.Register("BindingPath", typeof(string), typeof(ListColumn), new UIPropertyMetadata(""));

        /// <summary>Binding path used for edit control (if empty, the regular BindingPath property applies)</summary>
        /// <value>The edit control binding path.</value>
        public string EditControlBindingPath
        {
            get => (string)GetValue(EditControlBindingPathProperty);
            set => SetValue(EditControlBindingPathProperty, value);
        }

        /// <summary>Binding path used for edit control (if empty, the regular BindingPath property applies)</summary>
        /// <value>The edit control binding path.</value>
        public static readonly DependencyProperty EditControlBindingPathProperty = DependencyProperty.Register("EditControlBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Defines when the binding of edit controls triggers an update</summary>
        /// <value>The edit control update source trigger.</value>
        public UpdateSourceTrigger EditControlUpdateSourceTrigger
        {
            get => (UpdateSourceTrigger)GetValue(EditControlUpdateSourceTriggerProperty);
            set => SetValue(EditControlUpdateSourceTriggerProperty, value);
        }

        /// <summary>Defines when the binding of edit controls triggers an update</summary>
        /// <value>The edit control update source trigger.</value>
        public static readonly DependencyProperty EditControlUpdateSourceTriggerProperty = DependencyProperty.Register("EditControlUpdateSourceTrigger", typeof(UpdateSourceTrigger), typeof(ListColumn), new PropertyMetadata(UpdateSourceTrigger.Default));

        /// <summary>Binding StringFormat for the edit control binding</summary>
        /// <value>The edit control string format.</value>
        public string EditControlStringFormat
        {
            get => (string)GetValue(EditControlStringFormatProperty);
            set => SetValue(EditControlStringFormatProperty, value);
        }

        /// <summary>Binding StringFormat for the edit control binding</summary>
        /// <value>The edit control string format.</value>
        public static readonly DependencyProperty EditControlStringFormatProperty = DependencyProperty.Register("EditControlStringFormat", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Item template used for the column</summary>
        public DataTemplate ItemTemplate
        {
            get => (DataTemplate)GetValue(ItemTemplateProperty);
            set => SetValue(ItemTemplateProperty, value);
        }

        /// <summary>Item template used for the column</summary>
        public static readonly DependencyProperty ItemTemplateProperty = DependencyProperty.Register("ItemTemplate", typeof(DataTemplate), typeof(ListColumn), new UIPropertyMetadata(null));

        /// <summary>Template used for column headers</summary>
        public ControlTemplate HeaderTemplate
        {
            get => (ControlTemplate)GetValue(HeaderTemplateProperty);
            set => SetValue(HeaderTemplateProperty, value);
        }

        /// <summary>Template used for column headers</summary>
        public static readonly DependencyProperty HeaderTemplateProperty = DependencyProperty.Register("HeaderTemplate", typeof(ControlTemplate), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Template used for column footers</summary>
        public ControlTemplate FooterTemplate
        {
            get => (ControlTemplate)GetValue(FooterTemplateProperty);
            set => SetValue(FooterTemplateProperty, value);
        }

        /// <summary>Template used for column footers</summary>
        public static readonly DependencyProperty FooterTemplateProperty = DependencyProperty.Register("FooterTemplate", typeof(ControlTemplate), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Defines whether the column is resizable</summary>
        public bool IsResizable
        {
            get => (bool)GetValue(IsResizableProperty);
            set => SetValue(IsResizableProperty, value);
        }

        /// <summary>Defines whether the column is resizable</summary>
        public static readonly DependencyProperty IsResizableProperty = DependencyProperty.Register("IsResizable", typeof(bool), typeof(ListColumn), new UIPropertyMetadata(true));

        /// <summary>Defines whether a vertical header line shall be shown to indicate the size of the header</summary>
        /// <value><c>true</c> if line is to be displayed; otherwise, <c>false</c>.</value>
        public bool ShowHeaderGridLine
        {
            get => (bool)GetValue(ShowHeaderGridLineProperty);
            set => SetValue(ShowHeaderGridLineProperty, value);
        }

        /// <summary>Defines whether a vertical header line shall be shown to indicate the size of the header</summary>
        /// <value><c>true</c> if line is to be displayed; otherwise, <c>false</c>.</value>
        public static readonly DependencyProperty ShowHeaderGridLineProperty = DependencyProperty.Register("ShowHeaderGridLine", typeof(bool), typeof(ListColumn), new PropertyMetadata(true));

        /// <summary>Style to be used for header grid lines</summary>
        /// <value>The header grid line style.</value>
        /// <remarks>Header grid line objects are Border objects that wrap the entire header</remarks>
        public Style HeaderGridLineStyle
        {
            get => (Style)GetValue(HeaderGridLineStyleProperty);
            set => SetValue(HeaderGridLineStyleProperty, value);
        }

        /// <summary>Style to be used for header grid lines</summary>
        /// <value>The header grid line style.</value>
        /// <remarks>Header grid line objects are Border objects that wrap the entire header</remarks>
        public static readonly DependencyProperty HeaderGridLineStyleProperty = DependencyProperty.Register("HeaderGridLineStyle", typeof(Style), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Binding path to bind a header click command</summary>
        /// <remarks>Note that standard binding would not be applicable int his case, since column headers do not exist within the visual tree structure that would provide the standard data context</remarks>
        public string HeaderClickCommandBindingPath
        {
            get => (string)GetValue(HeaderClickCommandBindingPathProperty);
            set => SetValue(HeaderClickCommandBindingPathProperty, value);
        }

        /// <summary>Binding path to bind a header click command</summary>
        /// <remarks>Note that standard binding would not be applicable int his case, since column headers do not exist within the visual tree structure that would provide the standard data context</remarks>
        public static readonly DependencyProperty HeaderClickCommandBindingPathProperty = DependencyProperty.Register("HeaderClickCommandBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Binding path to bind a footer click command</summary>
        /// <remarks>Note that standard binding would not be applicable int his case, since column footers do not exist within the visual tree structure that would provide the standard data context</remarks>
        public string FooterClickCommandBindingPath
        {
            get => (string)GetValue(FooterClickCommandBindingPathProperty);
            set => SetValue(FooterClickCommandBindingPathProperty, value);
        }

        /// <summary>Binding path to bind a footer click command</summary>
        /// <remarks>Note that standard binding would not be applicable int his case, since column headers do not exist within the visual tree structure that would provide the standard data context</remarks>
        public static readonly DependencyProperty FooterClickCommandBindingPathProperty = DependencyProperty.Register("FooterClickCommandBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Background brush for individual cells</summary>
        /// <value>The cell background.</value>
        /// <remarks>Only applies for columns without item templates. Note that in order to data bind individual row background colors, the CellBackgroundBindingPath property has to be used.</remarks>
        public Brush CellBackground
        {
            get => (Brush)GetValue(CellBackgroundProperty);
            set => SetValue(CellBackgroundProperty, value);
        }

        /// <summary>Background brush for individual cells</summary>
        /// <value>The cell background.</value>
        /// <remarks>Only applies for columns without item templates. Note that in order to data bind individual row background colors, the CellBackgroundBindingPath property has to be used.</remarks>
        public static readonly DependencyProperty CellBackgroundProperty = DependencyProperty.Register("CellBackground", typeof(Brush), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Defines a binding path for individual cell background colors.</summary>
        /// <value>The cell background binding path.</value>
        /// <remarks>It is not possible to just bind the CellBackground property using standard WPF binding, as that would bind the generic definition of the cell, not each actual cell in the list. Using the binding path property, a new binding to the path will be created for each item.</remarks>
        public string CellBackgroundBindingPath
        {
            get => (string)GetValue(CellBackgroundBindingPathProperty);
            set => SetValue(CellBackgroundBindingPathProperty, value);
        }

        /// <summary>Defines a binding path for individual cell background colors.</summary>
        /// <value>The cell background binding path.</value>
        /// <remarks>It is not possible to just bind the CellBackground property using standard WPF binding, as that would bind the generic definition of the cell, not each actual cell in the list. Using the binding path property, a new binding to the path will be created for each item.</remarks>
        public static readonly DependencyProperty CellBackgroundBindingPathProperty = DependencyProperty.Register("CellBackgroundBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Defines the background opacity of the cell</summary>
        /// <value>The cell background opacity.</value>
        /// <remarks>Only applies if the CellBackground property is not null.</remarks>
        public double CellBackgroundOpacity
        {
            get => (double)GetValue(CellBackgroundOpacityProperty);
            set => SetValue(CellBackgroundOpacityProperty, value);
        }

        /// <summary>Defines the background opacity of the cell</summary>
        /// <value>The cell background opacity.</value>
        /// <remarks>Only applies if the CellBackground property is not null</remarks>
        public static readonly DependencyProperty CellBackgroundOpacityProperty = DependencyProperty.Register("CellBackgroundOpacity", typeof(double), typeof(ListColumn), new PropertyMetadata(1d));

        /// <summary>
        /// Defines the foreground color for the cell
        /// </summary>
        public Brush CellForeground
        {
            get => (Brush)GetValue(CellForegroundProperty);
            set => SetValue(CellForegroundProperty, value);
        }

        /// <summary>
        /// Defines the foreground color for the cell
        /// </summary>
        public static readonly DependencyProperty CellForegroundProperty = DependencyProperty.Register("CellForeground", typeof(Brush), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Defines a binding path for individual cell foreground colors.</summary>
        /// <value>The cell foreground binding path.</value>
        /// <remarks>It is not possible to just bind the CellForeground property using standard WPF binding, as that would bind the generic definition of the cell, not each actual cell in the list. Using the binding path property, a new binding to the path will be created for each item.</remarks>
        public string CellForegroundBindingPath
        {
            get => (string)GetValue(CellForegroundBindingPathProperty);
            set => SetValue(CellForegroundBindingPathProperty, value);
        }

        /// <summary>Defines a binding path for individual cell foreground colors.</summary>
        /// <value>The cell foreground binding path.</value>
        /// <remarks>It is not possible to just bind the CellForeground property using standard WPF binding, as that would bind the generic definition of the cell, not each actual cell in the list. Using the binding path property, a new binding to the path will be created for each item.</remarks>
        public static readonly DependencyProperty CellForegroundBindingPathProperty = DependencyProperty.Register("CellForegroundBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Defines which type of control the column should be using</summary>
        /// <value>The column controls.</value>
        /// <remarks>Only applies for columns without item templates</remarks>
        public ListColumnControls ColumnControl
        {
            get => (ListColumnControls)GetValue(ColumnControlProperty);
            set => SetValue(ColumnControlProperty, value);
        }

        /// <summary>Defines which type of control the column should be using</summary>
        /// <value>The column controls.</value>
        /// <remarks>Only applies for columns without item templates</remarks>
        public static readonly DependencyProperty ColumnControlProperty = DependencyProperty.Register("ColumnControl", typeof(ListColumnControls), typeof(ListColumn), new PropertyMetadata(ListColumnControls.Auto));

        /// <summary>
        /// Binding path for the IsEnabled property of a contained control
        /// </summary>
        /// <value>The column control is enabled binding path.</value>
        public string ColumnControlIsEnabledBindingPath
        {
            get => (string)GetValue(ColumnControlIsEnabledBindingPathProperty);
            set => SetValue(ColumnControlIsEnabledBindingPathProperty, value);
        }

        /// <summary>
        /// Binding path for the IsEnabled property of a contained control
        /// </summary>
        public static readonly DependencyProperty ColumnControlIsEnabledBindingPathProperty = DependencyProperty.Register("ColumnControlIsEnabledBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>
        /// Binding path for a double-click command/view-action associated with a contained control
        /// </summary>
        /// <value>The double click command binding path.</value>
        public string DoubleClickCommandBindingPath
        {
            get => (string)GetValue(DoubleClickCommandBindingPathProperty);
            set => SetValue(DoubleClickCommandBindingPathProperty, value);
        }

        /// <summary>
        /// Binding path for a double-click command/view-action associated with a contained control
        /// </summary>
        public static readonly DependencyProperty DoubleClickCommandBindingPathProperty = DependencyProperty.Register("DoubleClickCommandBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Content alignment for cell content</summary>
        /// <value>The cell content alignment.</value>
        public ListColumnContentAlignment CellContentAlignment
        {
            get => (ListColumnContentAlignment)GetValue(CellContentAlignmentProperty);
            set => SetValue(CellContentAlignmentProperty, value);
        }

        /// <summary>Vertical content alignment for cell content</summary>
        public static readonly DependencyProperty CellContentAlignmentProperty = DependencyProperty.Register("CellContentAlignment", typeof(ListColumnContentAlignment), typeof(ListColumn), new PropertyMetadata(ListColumnContentAlignment.Default));

        /// <summary>Vertical content alignment for cell content</summary>
        /// <value>The vertical cell content alignment.</value>
        public ListColumnContentVerticalAlignment CellContentVerticalAlignment
        {
            get => (ListColumnContentVerticalAlignment)GetValue(CellContentVerticalAlignmentProperty);
            set => SetValue(CellContentVerticalAlignmentProperty, value);
        }

        /// <summary>Content alignment for cell content</summary>
        public static readonly DependencyProperty CellContentVerticalAlignmentProperty = DependencyProperty.Register("CellContentVerticalAlignment", typeof(ListColumnContentVerticalAlignment), typeof(ListColumn), new PropertyMetadata(ListColumnContentVerticalAlignment.Default));

        /// <summary>Text alignment for simple text headers</summary>
        public TextAlignment HeaderTextAlignment
        {
            get => (TextAlignment)GetValue(HeaderTextAlignmentProperty);
            set => SetValue(HeaderTextAlignmentProperty, value);
        }

        /// <summary>Text alignment for simple text headers</summary>
        public static readonly DependencyProperty HeaderTextAlignmentProperty = DependencyProperty.Register("HeaderTextAlignment", typeof(TextAlignment), typeof(ListColumn), new PropertyMetadata(TextAlignment.Left));

        /// <summary>Text alignment for simple text footers</summary>
        public TextAlignment FooterTextAlignment
        {
            get => (TextAlignment)GetValue(FooterTextAlignmentProperty);
            set => SetValue(FooterTextAlignmentProperty, value);
        }

        /// <summary>Text alignment for simple text headers</summary>
        public static readonly DependencyProperty FooterTextAlignmentProperty = DependencyProperty.Register("FooterTextAlignment", typeof(TextAlignment), typeof(ListColumn), new PropertyMetadata(TextAlignment.Left));

        /// <summary>
        /// Gets or sets the header foreground color/brush.
        /// </summary>
        /// <value>The header foreground.</value>
        /// <remarks>Ignored when initially null</remarks>
        public Brush HeaderForeground
        {
            get => (Brush)GetValue(HeaderForegroundProperty);
            set => SetValue(HeaderForegroundProperty, value);
        }

        /// <summary>
        /// Gets or sets the header foreground color/brush.
        /// </summary>
        public static readonly DependencyProperty HeaderForegroundProperty = DependencyProperty.Register("HeaderForeground", typeof(Brush), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>
        /// Gets or sets the footer foreground color/brush.
        /// </summary>
        /// <value>The footer foreground.</value>
        /// <remarks>Ignored when initially null</remarks>
        public Brush FooterForeground
        {
            get => (Brush)GetValue(FooterForegroundProperty);
            set => SetValue(FooterForegroundProperty, value);
        }

        /// <summary>
        /// Gets or sets the footer foreground color/brush.
        /// </summary>
        public static readonly DependencyProperty FooterForegroundProperty = DependencyProperty.Register("FooterForeground", typeof(Brush), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Binding path expression used for the list (such as a combobox) of a text list hosted control</summary>
        /// <value>The text list item source binding path.</value>
        public string TextListItemsSourceBindingPath
        {
            get => (string)GetValue(TextListItemsSourceBindingPathProperty);
            set => SetValue(TextListItemsSourceBindingPathProperty, value);
        }

        /// <summary>Binding path expression used for the list (such as a combobox) of a text list hosted control</summary>
        /// <value>The text list item source binding path.</value>
        public static readonly DependencyProperty TextListItemsSourceBindingPathProperty = DependencyProperty.Register("TextListItemsSourceBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Columns for text lists (drop-downs)</summary>
        public ListColumnsCollection TextListColumns
        {
            get => (ListColumnsCollection)GetValue(TextListColumnsProperty);
            set => SetValue(TextListColumnsProperty, value);
        }

        /// <summary>Columns for text lists (drop-downs)</summary>
        public static readonly DependencyProperty TextListColumnsProperty = DependencyProperty.Register("TextListColumns", typeof(ListColumnsCollection), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Display member binding path path expression used for the list (such as a combobox) of a text list hosted control</summary>
        /// <value>The text list display member path.</value>
        public string TextListDisplayMemberPath
        {
            get => (string)GetValue(TextListDisplayMemberPathProperty);
            set => SetValue(TextListDisplayMemberPathProperty, value);
        }

        /// <summary>Display member binding path path expression used for the list (such as a combobox) of a text list hosted control</summary>
        /// <value>The text list display member path.</value>
        public static readonly DependencyProperty TextListDisplayMemberPathProperty = DependencyProperty.Register("TextListDisplayMemberPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Selected value binding path path expression used for the list (such as a combobox) of a text list hosted control</summary>
        /// <value>The text list selected value path.</value>
        public string TextListSelectedValuePath
        {
            get => (string)GetValue(TextListSelectedValuePathProperty);
            set => SetValue(TextListSelectedValuePathProperty, value);
        }

        /// <summary>Selected value binding path path expression used for the list (such as a combobox) of a text list hosted control</summary>
        /// <value>The text list selected value path.</value>
        public static readonly DependencyProperty TextListSelectedValuePathProperty = DependencyProperty.Register("TextListSelectedValuePath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Defines an (optional) style that can be applied to image previews when the column control is set to ImageWithPreview</summary>
        /// <value>The image preview style.</value>
        /// <remarks>The base object for the preview is an Image element</remarks>
        public Style ImagePreviewStyle
        {
            get => (Style)GetValue(ImagePreviewStyleProperty);
            set => SetValue(ImagePreviewStyleProperty, value);
        }

        /// <summary>Defines an (optional) style that can be applied to image previews when the column control is set to ImageWithPreview</summary>
        /// <value>The image preview style.</value>
        /// <remarks>The base object for the preview is an Image element</remarks>
        public static readonly DependencyProperty ImagePreviewStyleProperty = DependencyProperty.Register("ImagePreviewStyle", typeof(Style), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Padding for the cell's content</summary>
        /// <value>The cell padding.</value>
        public Thickness CellPadding
        {
            get => (Thickness)GetValue(CellPaddingProperty);
            set => SetValue(CellPaddingProperty, value);
        }

        /// <summary>Padding for the cell's content</summary>
        /// <value>The cell padding.</value>
        public static readonly DependencyProperty CellPaddingProperty = DependencyProperty.Register("CellPadding", typeof(Thickness), typeof(ListColumn), new PropertyMetadata(new Thickness(0d)));

        /// <summary>Cell content width. If set, forces the cell to explicitly take on a certain width. (This can be especially useful for images)</summary>
        /// <value>The width of the cell content.</value>
        public double CellContentWidth
        {
            get => (double)GetValue(CellContentWidthProperty);
            set => SetValue(CellContentWidthProperty, value);
        }

        /// <summary>Cell content width. If set, forces the cell to explicitly take on a certain width. (This can be especially useful for images)</summary>
        /// <value>The width of the cell content.</value>
        public static readonly DependencyProperty CellContentWidthProperty = DependencyProperty.Register("CellContentWidth", typeof(double), typeof(ListColumn), new PropertyMetadata(double.NaN));

        /// <summary>Cell content height. If set, forces the cell to explicitly take on a certain height. (This can be especially useful for images)</summary>
        /// <value>The height of the cell content.</value>
        public double CellContentHeight
        {
            get => (double)GetValue(CellContentHeightProperty);
            set => SetValue(CellContentHeightProperty, value);
        }

        /// <summary>Cell content height. If set, forces the cell to explicitly take on a certain height. (This can be especially useful for images)</summary>
        /// <value>The height of the cell content.</value>
        public static readonly DependencyProperty CellContentHeightProperty = DependencyProperty.Register("CellContentHeight", typeof(double), typeof(ListColumn), new PropertyMetadata(double.NaN));

        /// <summary>Defines the edit mode for the cell</summary>
        /// <value>The edit mode.</value>
        public ListRowEditMode EditMode
        {
            get => (ListRowEditMode)GetValue(EditModeProperty);
            set => SetValue(EditModeProperty, value);
        }

        /// <summary>Defines the edit mode for the cell</summary>
        /// <value>The edit mode.</value>
        public static readonly DependencyProperty EditModeProperty = DependencyProperty.Register("EditMode", typeof(ListRowEditMode), typeof(ListColumn), new PropertyMetadata(ListRowEditMode.ReadOnly));

        /// <summary>Style used for text edit textboxes</summary>
        /// <value>The edit text box style.</value>
        public Style EditTextBoxStyle
        {
            get => (Style)GetValue(EditTextBoxStyleProperty);
            set => SetValue(EditTextBoxStyleProperty, value);
        }

        /// <summary>Style used for text edit textboxes</summary>
        /// <value>The edit text box style.</value>
        public static readonly DependencyProperty EditTextBoxStyleProperty = DependencyProperty.Register("EditTextBoxStyle", typeof(Style), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Style used for checkmark edit checkboxes</summary>
        /// <value>The edit checkmark style.</value>
        public Style EditCheckmarkStyle
        {
            get => (Style)GetValue(EditCheckmarkStyleProperty);
            set => SetValue(EditCheckmarkStyleProperty, value);
        }

        /// <summary>Style used for checkmark edit checkboxes</summary>
        /// <value>The edit checkmark style.</value>
        public static readonly DependencyProperty EditCheckmarkStyleProperty = DependencyProperty.Register("EditCheckmarkStyle", typeof(Style), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Style used for tex list edit controls</summary>
        /// <value>The edit text list style.</value>
        public Style EditTextListStyle
        {
            get => (Style)GetValue(EditTextListStyleProperty);
            set => SetValue(EditTextListStyleProperty, value);
        }

        /// <summary>Style used for tex list edit controls</summary>
        /// <value>The edit text list style.</value>
        public static readonly DependencyProperty EditTextListStyleProperty = DependencyProperty.Register("EditTextListStyle", typeof(Style), typeof(ListColumn), new PropertyMetadata(null));

        /// <summary>Defines the brushed to be used to draw grid lines</summary>
        /// <value>The grid line brush.</value>
        public Brush GridLineBrush
        {
            get => (Brush)GetValue(GridLineBrushProperty);
            set => SetValue(GridLineBrushProperty, value);
        }

        /// <summary>Defines the brushed to be used to draw grid lines</summary>
        /// <value>The grid line brush.</value>
        public static readonly DependencyProperty GridLineBrushProperty = DependencyProperty.Register("GridLineBrush", typeof(Brush), typeof(ListColumn), new PropertyMetadata(new SolidColorBrush(Colors.Silver)));

        /// <summary>Collection of event commands associated with the control that is used to display cell data in read-only fashion</summary>
        /// <value>The read only control event commands collection.</value>
        public EventCommandsCollection ReadOnlyControlEventCommands
        {
            get => (EventCommandsCollection)GetValue(ReadOnlyControlEventCommandsProperty);
            set => SetValue(ReadOnlyControlEventCommandsProperty, value);
        }

        /// <summary>Collection of event commands associated with the control that is used to display cell data in read-only fashion</summary>
        /// <value>The read only control event commands collection.</value>
        public static readonly DependencyProperty ReadOnlyControlEventCommandsProperty = DependencyProperty.Register("ReadOnlyControlEventCommands", typeof(EventCommandsCollection), typeof(ListColumn), new PropertyMetadata(new EventCommandsCollection()));

        /// <summary>Collection of event commands associated with the control that is used to display cell data for editing</summary>
        /// <value>The read only control event commands collection.</value>
        public EventCommandsCollection WriteControlEventCommands
        {
            get => (EventCommandsCollection)GetValue(WriteControlEventCommandsProperty);
            set => SetValue(WriteControlEventCommandsProperty, value);
        }

        /// <summary>Collection of event commands associated with the control that is used to display cell data for editing</summary>
        /// <value>The read only control event commands collection.</value>
        public static readonly DependencyProperty WriteControlEventCommandsProperty = DependencyProperty.Register("WriteControlEventCommands", typeof(EventCommandsCollection), typeof(ListColumn), new PropertyMetadata(new EventCommandsCollection()));

        /// <summary>Collection of event commands associated with the header control</summary>
        /// <value>The header event commands.</value>
        public EventCommandsCollection HeaderEventCommands
        {
            get => (EventCommandsCollection)GetValue(HeaderEventCommandsProperty);
            set => SetValue(HeaderEventCommandsProperty, value);
        }

        /// <summary>Collection of event commands associated with the header control</summary>
        /// <value>The header event commands.</value>
        public static readonly DependencyProperty HeaderEventCommandsProperty = DependencyProperty.Register("HeaderEventCommands", typeof(EventCommandsCollection), typeof(ListColumn), new PropertyMetadata(new EventCommandsCollection()));

        /// <summary>Collection of event commands associated with the footer control</summary>
        /// <value>The footer event commands.</value>
        public EventCommandsCollection FooterEventCommands
        {
            get => (EventCommandsCollection)GetValue(FooterEventCommandsProperty);
            set => SetValue(FooterEventCommandsProperty, value);
        }

        /// <summary>Collection of event commands associated with the footer control</summary>
        /// <value>The footer event commands.</value>
        public static readonly DependencyProperty FooterEventCommandsProperty = DependencyProperty.Register("FooterEventCommands", typeof(EventCommandsCollection), typeof(ListColumn), new PropertyMetadata(new EventCommandsCollection()));

        /// <summary>Column sort order indicator</summary>
        /// <value>The sort order indicator.</value>
        /// <remarks>Note that setting this value does NOT actually sort the bound data unless AutoSort = true. It simply creates a visual indicator showing that the column is sorted.</remarks>
        public SortOrder SortOrder
        {
            get => (SortOrder)GetValue(SortOrderProperty);
            set => SetValue(SortOrderProperty, value);
        }

        /// <summary>Column sort order indicator</summary>
        /// <value>The sort order indicator.</value>
        /// <remarks>Note that setting this value does NOT actually sort the bound data unless AutoSort = true. It simply creates a visual indicator showing that the column is sorted.</remarks>
        public static readonly DependencyProperty SortOrderProperty = DependencyProperty.Register("SortOrder", typeof(SortOrder), typeof(ListColumn), new PropertyMetadata(SortOrder.Unsorted));

        /// <summary>Indicates whether the list should automatically support sorting by this column</summary>
        public bool AutoSort
        {
            get => (bool)GetValue(AutoSortProperty);
            set => SetValue(AutoSortProperty, value);
        }

        /// <summary>Indicates whether the list should automatically support sorting by this column</summary>
        public static readonly DependencyProperty AutoSortProperty = DependencyProperty.Register("AutoSort", typeof(bool), typeof(ListColumn), new PropertyMetadata(false));

        /// <summary>Indicates whether the list should automatically support filtering by this column</summary>
        public bool AutoFilter
        {
            get => (bool)GetValue(AutoFilterProperty);
            set => SetValue(AutoFilterProperty, value);
        }

        /// <summary>Indicates whether the list should automatically support filtering by this column</summary>
        public static readonly DependencyProperty AutoFilterProperty = DependencyProperty.Register("AutoFilter", typeof(bool), typeof(ListColumn), new PropertyMetadata(false));

        /// <summary>
        /// Indicates the mode of the filter operation
        /// </summary>
        public FilterMode FilterMode
        {
            get => (FilterMode)GetValue(FilterModeProperty);
            set => SetValue(FilterModeProperty, value);
        }

        /// <summary>
        /// Indicates the mode of the filter operation
        /// </summary>
        public static readonly DependencyProperty FilterModeProperty = DependencyProperty.Register("FilterMode", typeof(FilterMode), typeof(ListColumn), new PropertyMetadata(FilterMode.ContainedString));

        /// <summary>Binding path for a dynamically set sort order</summary>
        /// <value>The sort order binding path.</value>
        public string SortOrderBindingPath
        {
            get => (string)GetValue(SortOrderBindingPathProperty);
            set => SetValue(SortOrderBindingPathProperty, value);
        }

        /// <summary>
        /// Gets or sets the filter text.
        /// </summary>
        /// <value>The filter text.</value>
        public string FilterText
        {
            get => (string)GetValue(FilterTextProperty);
            set => SetValue(FilterTextProperty, value);
        }

        /// <summary>
        /// The filter text property
        /// </summary>
        public static readonly DependencyProperty FilterTextProperty = DependencyProperty.Register("FilterText", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Binding path for a dynamically set sort order</summary>
        /// <remarks>Overrules the Tooltip property.</remarks>
        /// <value>The sort order binding path.</value>
        public static readonly DependencyProperty SortOrderBindingPathProperty = DependencyProperty.Register("SortOrderBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Binding path for a hardcoded tooltip of the control inside a column</summary>
        /// <remarks>Overrules the Tooltip property.</remarks>
        /// <value>The tooltip.</value>
        public string ToolTip
        {
            get => (string)GetValue(ToolTipProperty);
            set => SetValue(ToolTipProperty, value);
        }

        /// <summary>Binding path for a hardcoded tooltip of the control inside a column</summary>
        /// <remarks>If TooltipBindingPath is set, it overrules this property</remarks>
        /// <value>The tooltip.</value>
        public static readonly DependencyProperty ToolTipProperty = DependencyProperty.Register("ToolTip", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Binding path for a dynamically set tooltip of the control inside a column</summary>
        /// <remarks>If TooltipBindingPath is set, it overrules this property</remarks>
        /// <value>The tooltip binding path.</value>
        public string ToolTipBindingPath
        {
            get => (string)GetValue(ToolTipBindingPathProperty);
            set => SetValue(ToolTipBindingPathProperty, value);
        }

        /// <summary>Binding path for a dynamically set tooltip of the control inside a column</summary>
        /// <value>The tooltip binding path.</value>
        public static readonly DependencyProperty ToolTipBindingPathProperty = DependencyProperty.Register("ToolTipBindingPath", typeof(string), typeof(ListColumn), new PropertyMetadata(""));

        /// <summary>Initial delay (in milliseconds) before tooltips show up</summary>
        public int ToolTipInitialShowDelay
        {
            get => (int)GetValue(ToolTipInitialShowDelayProperty);
            set => SetValue(ToolTipInitialShowDelayProperty, value);
        }

        /// <summary>Initial delay (in milliseconds) before tooltips show up</summary>
        public static readonly DependencyProperty ToolTipInitialShowDelayProperty = DependencyProperty.Register("ToolTipInitialShowDelay", typeof(int), typeof(ListColumn), new PropertyMetadata(int.MinValue));

        /// <summary>Tooltip display duration (in milliseconds)</summary>
        public int ToolTipShowDuration
        {
            get => (int)GetValue(ToolTipShowDurationProperty);
            set => SetValue(ToolTipShowDurationProperty, value);
        }

        /// <summary>Tooltip display duration (in milliseconds)</summary>
        public static readonly DependencyProperty ToolTipShowDurationProperty = DependencyProperty.Register("ToolTipShowDuration", typeof(int), typeof(ListColumn), new PropertyMetadata(int.MinValue));

        /// <summary>Tooltip placement</summary>
        public PlacementMode ToolTipPlacement
        {
            get => (PlacementMode)GetValue(ToolTipPlacementProperty);
            set => SetValue(ToolTipPlacementProperty, value);
        }

        /// <summary>Tooltip placement</summary>
        public static readonly DependencyProperty ToolTipPlacementProperty = DependencyProperty.Register("ToolTipPlacement", typeof(PlacementMode), typeof(ListColumn), new PropertyMetadata(PlacementMode.Mouse));

        /// <summary>Indicates whether the column is considered to be "frozen"</summary>
        /// <remarks>Frozen status usually indicates that all frozen columns are kept visible on the left side of the listbox. Note that different controls and styles may interpret this property differently.</remarks>
        public bool IsFrozen
        {
            get => (bool)GetValue(IsFrozenProperty);
            set => SetValue(IsFrozenProperty, value);
        }

        /// <summary>Indicates whether the column is considered to be "frozen"</summary>
        /// <remarks>Frozen status usually indicates that all frozen columns are kept visible on the left side of the listbox. Note that different controls and styles may interpret this property differently.</remarks>
        public static readonly DependencyProperty IsFrozenProperty = DependencyProperty.Register("IsFrozen", typeof(bool), typeof(ListColumn), new PropertyMetadata(false));

        /// <summary>
        /// Gets or sets the visible of the column.
        /// </summary>
        /// <value>The visible.</value>
        public Visibility Visibility
        {
            get => (Visibility)GetValue(VisibilityProperty);
            set => SetValue(VisibilityProperty, value);
        }

        /// <summary>
        /// Template for control header edit controls
        /// </summary>
        public DataTemplate ColumnHeaderEditControlTemplate
        {
            get => (DataTemplate)GetValue(ColumnHeaderEditControlTemplateProperty);
            set => SetValue(ColumnHeaderEditControlTemplateProperty, value);
        }

        /// <summary>
        /// Template for control header edit controls
        /// </summary>
        public static readonly DependencyProperty ColumnHeaderEditControlTemplateProperty = DependencyProperty.Register("ColumnHeaderEditControlTemplate", typeof(DataTemplate), typeof(ListEx), new PropertyMetadata(null));

        /// <summary>
        /// Template for control footer edit controls
        /// </summary>
        public DataTemplate ColumnFooterEditControlTemplate
        {
            get => (DataTemplate)GetValue(ColumnFooterEditControlTemplateProperty);
            set => SetValue(ColumnFooterEditControlTemplateProperty, value);
        }

        /// <summary>
        /// Template for control footer edit controls
        /// </summary>
        public static readonly DependencyProperty ColumnFooterEditControlTemplateProperty = DependencyProperty.Register("ColumnFooterEditControlTemplate", typeof(DataTemplate), typeof(ListEx), new PropertyMetadata(null));

        /// <summary>For internal use only</summary>
        [Browsable(false)]
        public FrameworkElement UtilizedHeaderEditControl { get; set; }

        /// <summary>For internal use only</summary>
        [Browsable(false)]
        public FrameworkElement UtilizedFooterEditControl { get; set; }

        /// <summary>
        /// Gets or sets the column header edit control data context.
        /// </summary>
        /// <value>The column header edit control data context.</value>
        public object ColumnHeaderEditControlDataContext { get; set; }

        /// <summary>
        /// Gets or sets the column footer edit control data context.
        /// </summary>
        /// <value>The column footer edit control data context.</value>
        public object ColumnFooterEditControlDataContext { get; set; }

        /// <summary>
        /// Gets or sets the visible of the column.
        /// </summary>
        public static readonly DependencyProperty VisibilityProperty = DependencyProperty.Register("Visibility", typeof(Visibility), typeof(ListColumn), new PropertyMetadata(Visibility.Visible, OnVisibilityChanged));

        /// <summary>
        /// Occurs when the visibility of the column changes
        /// </summary>
        /// <param name="d">ListColumn</param>
        /// <param name="args">Event args</param>
        private static void OnVisibilityChanged(DependencyObject d, DependencyPropertyChangedEventArgs args)
        {
            if (!(d is ListColumn column)) return;
            column.VisibilityChanged?.Invoke(column, new EventArgs());
        }

        /// <summary>
        /// Occurs when the column width changes
        /// </summary>
        public event EventHandler VisibilityChanged;

        /// <summary>
        /// Sets the actual width if the new value is indeed significantly different from the original color (more than 1/10th of a pixel difference).
        /// </summary>
        /// <param name="actualWidth">The actual width.</param>
        public void SetActualWidth(double actualWidth)
        {
            if (actualWidth > 0 && Math.Abs(ActualWidth - actualWidth) > .01)
                ActualWidth = actualWidth;
        }

        /// <summary>
        /// Occurs when a control is added to a smart data template for a specific cell
        /// </summary>
        public event EventHandler<CellControlCreatedEventArgs> CellControlCreated;

        /// <summary>
        /// Raises the cell control created event.
        /// </summary>
        /// <param name="control">The created control.</param>
        protected internal void RaiseCellControlCreated(FrameworkElement control) => CellControlCreated?.Invoke(this, new CellControlCreatedEventArgs(control));
    }

    /// <summary>
    /// Event arguments for the CellControlCreated event
    /// </summary>
    public class CellControlCreatedEventArgs : EventArgs
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CellControlCreatedEventArgs"/> class.
        /// </summary>
        /// <param name="control">The control.</param>
        public CellControlCreatedEventArgs(FrameworkElement control) => Control = control;

        /// <summary>
        /// Reference to the added control
        /// </summary>
        /// <value>
        /// The control.
        /// </value>
        public FrameworkElement Control { get; }
    }

    /// <summary>
    /// Supported list column controls
    /// </summary>
    public enum ListColumnControls
    {
        /// <summary>
        /// Data templates automatically pick the control they feel is most appropriate
        /// </summary>
        Auto,

        /// <summary>
        /// Text element
        /// </summary>
        Text,

        /// <summary>
        /// Check mark (check box)
        /// </summary>
        Checkmark,

        /// <summary>
        /// Text element populated from a list of possible values (typically expressed as a drop down list in edit mode)
        /// </summary>
        TextList,

        /// <summary>
        /// Image
        /// </summary>
        Image
    }

    /// <summary>Content alignment options for list columns</summary>
    public enum ListColumnContentAlignment
    {
        /// <summary>Default content alignment for each control</summary>
        Default,

        /// <summary>Content is left aligned</summary>
        Left,

        /// <summary>Content is center aligned</summary>
        Center,

        /// <summary>Content is right aligned</summary>
        Right,

        /// <summary>Stretch across entire width</summary>
        Stretch
    }

    /// <summary>Vertical content alignment options for list columns</summary>
    public enum ListColumnContentVerticalAlignment
    {
        /// <summary>Default content alignment for each control</summary>
        Default,

        /// <summary>Content is top aligned</summary>
        Top,

        /// <summary>Content is center aligned</summary>
        Center,

        /// <summary>Content is bottom aligned</summary>
        Bottom,

        /// <summary>Stretch across entire width</summary>
        Stretch
    }

    /// <summary>
    /// Row edit mode for multi-column lists
    /// </summary>
    public enum ListRowEditMode
    {
        /// <summary>All cells are read-only</summary>
        ReadOnly,

        /// <summary>All cells are read/write</summary>
        ReadWriteAll,

        /// <summary>Mode is set on a row-by-row basis manually by means of a binding (true/false)</summary>
        Manual
    }

    /// <summary>
    /// Defines when grid lines should be displayed in a list with columns
    /// </summary>
    public enum ListGridLineMode
    {
        /// <summary>Never show grid lines</summary>
        Never,

        /// <summary>Always show grid lines</summary>
        Always,

        /// <summary>Only show grid lines when the cell is being edited</summary>
        EditOnly
    }

    /// <summary>
    /// Filter mode
    /// </summary>
    public enum FilterMode
    {
        /// <summary>
        /// Filter searches for a contained string
        /// </summary>
        ContainedString,

        /// <summary>
        /// Filter searches for an exact start of the string
        /// </summary>
        StartsWithString,

        /// <summary>
        /// String must be an exact match
        /// </summary>
        ExactMatchString,

        /// <summary>
        /// Filter attempts to match an exact number (and supports greater than and less than)
        /// </summary>
        Number
    }

    // TODO: Bring this back!

    ///// <summary>
    ///// This settings serializer can be used to serialize list column information
    ///// </summary>
    ///// <seealso cref="CODE.Framework.Core.Utilities.ISettingsSerializer" />
    //public class ListColumnsSettingsSerializer : ISettingsSerializer
    //{
    //    /// <summary>
    //    /// Serializes the state object and returns the state as JSON
    //    /// </summary>
    //    /// <param name="stateObject">Object to serialize</param>
    //    /// <returns>State JSON</returns>
    //    public string SerializeToJson(object stateObject)
    //    {
    //        if (!(stateObject is ListColumnsCollection columns)) return string.Empty;

    //        var jsonBuilder = new JsonBuilder();

    //        foreach (var column in columns)
    //        {
    //            var columnIdentifier = column.BindingPath;
    //            if (string.IsNullOrEmpty(columnIdentifier))
    //                columnIdentifier = column.Header.ToString().Replace(" ", "");
    //            if (string.IsNullOrEmpty(columnIdentifier))
    //                columnIdentifier = column.EditControlBindingPath;
    //            if (string.IsNullOrEmpty(columnIdentifier))
    //                columnIdentifier = column.SortOrderBindingPath;
    //            if (string.IsNullOrEmpty(columnIdentifier)) continue;
    //            jsonBuilder.Append("Column-" + columnIdentifier + "-Width", column.Width);
    //            jsonBuilder.Append("Column-" + columnIdentifier + "-SortOrder", column.SortOrder);
    //        }

    //        var json = jsonBuilder.ToString();
    //        return json;
    //    }

    //    /// <summary>
    //    /// Deserializes the provides JSON state and updates the state object with the settings
    //    /// </summary>
    //    /// <param name="stateObject">Object to set the persisted state on.</param>
    //    /// <param name="state">State information (JSON)</param>
    //    public void DeserializeFromJson(object stateObject, string state)
    //    {
    //        var columns = stateObject as ListColumnsCollection;
    //        if (columns == null) return;
    //        if (string.IsNullOrEmpty(state)) return;

    //        // First, we need to see what all the columns are we have, what the order is, and whether we have to re-sort
    //        var columnOrders = new List<string>();
    //        JsonHelper.QuickParse(state, (n, v) =>
    //        {
    //            var nameParts = n.Split('-');
    //            if (nameParts.Length != 3) return;
    //            var columnIdentifier = nameParts[1];
    //            if (!columnOrders.Contains(columnIdentifier)) columnOrders.Add(columnIdentifier);
    //        });
    //        var mustSort = false;
    //        if (columns.Count != columnOrders.Count)
    //            mustSort = true;
    //        else
    //            for (var columnCounter = 0; columnCounter < columns.Count; columnCounter++)
    //                if (columnOrders[columnCounter] != columns[columnCounter].BindingPath)
    //                {
    //                    mustSort = true;
    //                    break;
    //                }

    //        if (mustSort)
    //        {
    //            var tempCollection = new List<ListColumn>();
    //            tempCollection.AddRange(columns);
    //            columns.Clear();

    //            // We add all the columns we have in the ordered source
    //            foreach (var columnIdentifier in columnOrders)
    //            {
    //                var column = tempCollection.FirstOrDefault(c => c.BindingPath == columnIdentifier);
    //                if (column == null)
    //                    column = tempCollection.FirstOrDefault(c => c.Header.ToString() == columnIdentifier);
    //                if (column == null)
    //                    column = tempCollection.FirstOrDefault(c => c.EditControlBindingPath == columnIdentifier);
    //                if (column == null)
    //                    column = tempCollection.FirstOrDefault(c => c.SortOrderBindingPath == columnIdentifier);
    //                if (column != null) columns.Add(column);
    //            }

    //            // We remove all the columns we already used from the ordered source
    //            foreach (var column in columns)
    //                if (tempCollection.Contains(column))
    //                    tempCollection.Remove(column);
    //            // If there are any unused columns left, we add them add the end (this could happen if the column collection is different now from what it was when the state was saved)
    //            foreach (var column in tempCollection) columns.Add(column);
    //        }

    //        // We are now ready to set individual settings on the columns
    //        JsonHelper.QuickParse(state, (n, v) =>
    //        {
    //            var nameParts = n.Split('-');
    //            if (nameParts.Length != 3) return;
    //            var columnIdentifier = nameParts[1];
    //            var column = columns.FirstOrDefault(c => c.BindingPath == columnIdentifier);
    //            if (column == null)
    //                column = columns.FirstOrDefault(c => c.Header.ToString() == columnIdentifier);
    //            if (column == null)
    //                column = columns.FirstOrDefault(c => c.EditControlBindingPath == columnIdentifier);
    //            if (column == null)
    //                column = columns.FirstOrDefault(c => c.SortOrderBindingPath == columnIdentifier);
    //            if (column != null)
    //                switch (nameParts[2])
    //                {
    //                    case "Width":

    //                        if (v.EndsWith("*"))
    //                            if (v.Length == 1)
    //                            {
    //                                column.Width = new GridLength(1, GridUnitType.Star);
    //                            }
    //                            else
    //                            {
    //                                var v2 = v.Substring(0, v.Length - 1);
    //                                SafeDoubleParse(v2, d => { column.Width = new GridLength(d, GridUnitType.Star); });
    //                            }
    //                        else if (v.ToLower() == "auto")
    //                            column.Width = new GridLength(1, GridUnitType.Auto);
    //                        else
    //                            SafeDoubleParse(v, d => { column.Width = new GridLength(d); });

    //                        break;

    //                    case "SortOrder":
    //                        switch (v)
    //                        {
    //                            case "0":
    //                            case "Unsorted":
    //                                if (column.SortOrder != SortOrder.Unsorted) column.SortOrder = SortOrder.Unsorted;
    //                                break;
    //                            case "1":
    //                            case "Ascending":
    //                                if (column.SortOrder != SortOrder.Ascending) column.SortOrder = SortOrder.Ascending;
    //                                break;
    //                            case "2":
    //                            case "Descending":
    //                                if (column.SortOrder != SortOrder.Descending) column.SortOrder = SortOrder.Descending;
    //                                break;
    //                        }

    //                        break;
    //                }
    //        });
    //    }

    //    private static void SafeDoubleParse(string value, Action<double> callback)
    //    {
    //        if (double.TryParse(value, out var realValue))
    //            callback(realValue);
    //    }

    //    /// <summary>
    //    /// Returns true if the provided serializer can handle the object in question
    //    /// </summary>
    //    /// <param name="stateObject">Object containing the state</param>
    //    /// <param name="id">ID of the setting that is to be persisted</param>
    //    /// <param name="scope">Scope of the setting</param>
    //    /// <returns>True if the serializer can handle the provided object</returns>
    //    public bool CanHandle(object stateObject, string id, SettingScope scope) => stateObject is ListColumnsCollection;

    //    /// <summary>
    //    /// Can be used to suggest a file name for the setting, in case the handler is file-based
    //    /// </summary>
    //    /// <param name="stateObject">Object containing the state</param>
    //    /// <param name="id">ID of the setting that is to be persisted</param>
    //    /// <param name="scope">Scope of the setting</param>
    //    /// <returns>File name, or string.Empty if no default is suggested</returns>
    //    public string GetSuggestedFileName(object stateObject, string id, SettingScope scope) => id + ".ListColumns.json";

    //    /// <summary>
    //    /// If set to true, this serializer will be invoked, even if other serializers have already
    //    /// handled the process
    //    /// </summary>
    //    /// <value>True or False</value>
    //    public bool UseInAdditionToOtherAppliedSerializers => true;
    //}
}