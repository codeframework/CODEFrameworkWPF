using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using CODE.Framework.Wpf.Mvvm;

namespace CODE.Framework.Wpf.Theme.Wildcat.Classes
{
    /// <summary>
    /// Special version of this control able to handle button positions
    /// </summary>
    public class WildcatActionItemsControl : ActionItemsControl
    {
        /// <summary>
        /// This method is designed to be overridden in subclasses
        /// </summary>
        /// <param name="actions">The actions.</param>
        /// <returns>IEnumerable.</returns>
        protected override IEnumerable OnRepopulateItems(List<IViewAction> actions)
        {
            var newActions = actions.Select(a => new WildcatActionWrapper(a)).ToList();

            if (newActions.Count == 1)
                newActions[0].Position = WildcatButtonPosition.Normal;
            else if (newActions.Count > 1)
            {
                newActions[0].Position = WildcatButtonPosition.First;
                newActions[newActions.Count - 1].Position = WildcatButtonPosition.Last;
            }

            return newActions;
        }
    }

    /// <summary>
    /// Special wrapper used in Wildcat action items
    /// </summary>
    public class WildcatActionWrapper : IViewAction
    {
        private readonly IViewAction _originalAction;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="originalAction"></param>
        public WildcatActionWrapper(IViewAction originalAction)
        {
            _originalAction = originalAction;
            Position = WildcatButtonPosition.Middle;
            originalAction.CanExecuteChanged += (s, e) => CanExecuteChanged?.Invoke(s, e);
        }

        /// <summary>
        /// Button position (whether it is first, middle, or last, which may result in different visual styles)
        /// </summary>
        /// <value>The position.</value>
        public WildcatButtonPosition Position { get; set; }

        /// <summary>
        /// Defines the method to be called when the command is invoked.
        /// </summary>
        /// <param name="parameter">Data used by the command.  If the command does not require data to be passed, this object can be set to null.</param>
        public void Execute(object parameter) => _originalAction.Execute(parameter);

        /// <summary>
        /// Defines the method that determines whether the command can execute in its current state.
        /// </summary>
        /// <param name="parameter">Data used by the command.  If the command does not require data to be passed, this object can be set to null.</param>
        /// <returns>true if this command can be executed; otherwise, false.</returns>
        public bool CanExecute(object parameter) => _originalAction.CanExecute(parameter);

        /// <summary>
        /// Occurs when changes occur that affect whether or not the command should execute.
        /// </summary>
        public event EventHandler CanExecuteChanged;

        /// <summary>
        /// Caption (can be used to display in the UI)
        /// </summary>
        /// <value>The caption.</value>
        public string Caption
        {
            get => _originalAction.Caption;
            set => _originalAction.Caption = value;
        }

        /// <summary>
        /// String identifier to identify an action independent of its caption (and independent of the locale)
        /// </summary>
        /// <value>The identifier.</value>
        public string Id
        {
            get => _originalAction.Id;
            set => _originalAction.Id = value;
        }

        /// <summary>
        /// Indicates whether this action starts a new group
        /// </summary>
        /// <value><c>true</c> if [begin group]; otherwise, <c>false</c>.</value>
        public bool BeginGroup
        {
            get => _originalAction.BeginGroup;
            set => _originalAction.BeginGroup = value;
        }

        /// <summary>
        /// Indicates the group title for items that start a new group
        /// </summary>
        /// <value>The group title.</value>
        public string GroupTitle
        {
            get => _originalAction.GroupTitle;
            set => _originalAction.GroupTitle = value;
        }

        /// <summary>
        /// Is this the default action?
        /// </summary>
        /// <value><c>true</c> if this instance is default; otherwise, <c>false</c>.</value>
        public bool IsDefault
        {
            get => _originalAction.IsDefault;
            set => _originalAction.IsDefault = value;
        }

        /// <summary>
        /// Is this the cancel action?
        /// </summary>
        /// <value><c>true</c> if this instance is cancel; otherwise, <c>false</c>.</value>
        public bool IsCancel
        {
            get => _originalAction.IsCancel;
            set => _originalAction.IsCancel = value;
        }

        /// <summary>
        /// Indicates whether an action is pinned (which is used for different things in different themes)
        /// </summary>
        /// <value><c>true</c> if this instance is pinned; otherwise, <c>false</c>.</value>
        public bool IsPinned
        {
            get => _originalAction.IsPinned;
            set => _originalAction.IsPinned = value;
        }

        /// <summary>
        /// Indicates whether the action is to be considered "checked"
        /// </summary>
        /// <value><c>true</c> if this instance is checked; otherwise, <c>false</c>.</value>
        /// <remarks>Checked actions may be presented in various ways in different themes, such as having a check-mark in menus
        /// Most themes will only respect this property when ViewActionType = Toggle</remarks>
        public bool IsChecked
        {
            get => _originalAction.IsChecked;
            set => _originalAction.IsChecked = value;
        }

        /// <summary>
        /// Indicates the type of the view action
        /// </summary>
        /// <value>The type of the view action.</value>
        public ViewActionTypes ViewActionType
        {
            get => _originalAction.ViewActionType;
            set => _originalAction.ViewActionType = value;
        }

        /// <summary>
        /// Indicates that this view action is selected by default if the theme supports pre-selecting actions in some way (such as showing the page of the ribbon the action is in, or triggering the action in a special Office-style file menu).
        /// </summary>
        /// <value><c>true</c> if this instance is default selection; otherwise, <c>false</c>.</value>
        /// <remarks>If more than one action is flagged as the default selection, then the last one (in instantiation order) 'wins'</remarks>
        public bool IsDefaultSelection
        {
            get => _originalAction.IsDefaultSelection;
            set => _originalAction.IsDefaultSelection = value;
        }

        /// <summary>
        /// Indicates whether or not this action is at all available (often translates directly to being visible or invisible)
        /// </summary>
        /// <value>The availability.</value>
        public ViewActionAvailabilities Availability => _originalAction.Availability;

        /// <summary>
        /// Defines view action visibility (collapsed or hidden items are may be removed from menus or ribbons independent of their availability or can-execute state)
        /// </summary>
        /// <value>The visibility.</value>
        public Visibility Visibility
        {
            get => _originalAction.Visibility;
            set => _originalAction.Visibility = value;
        }

        /// <summary>
        /// Significance of the action
        /// </summary>
        /// <value>The significance.</value>
        public ViewActionSignificance Significance
        {
            get => _originalAction.Significance;
            set => _originalAction.Significance = value;
        }

        /// <summary>
        /// Logical list of categories
        /// </summary>
        /// <value>The categories.</value>
        public List<ViewActionCategory> Categories
        {
            get => _originalAction.Categories;
            set => _originalAction.Categories = value;
        }

        /// <summary>
        /// Sort order for the category
        /// </summary>
        /// <value>The category order.</value>
        public int CategoryOrder => _originalAction.CategoryOrder;

        /// <summary>
        /// Sort order for the action (within a group)
        /// </summary>
        /// <value>The order.</value>
        public int Order => _originalAction.Order;

        /// <summary>
        /// Returns the ID of the first category or an empty string if no categories have been added
        /// </summary>
        /// <value>The first category identifier.</value>
        public string FirstCategoryId => _originalAction.FirstCategoryId;

        /// <summary>
        /// A view model dedicated to this action
        /// </summary>
        /// <value>The action view model.</value>
        public object ActionViewModel
        {
            get => _originalAction.ActionViewModel;
            set => _originalAction.ActionViewModel = value;
        }

        /// <summary>
        /// A view specific to this action
        /// </summary>
        /// <value>The action view.</value>
        public FrameworkElement ActionView
        {
            get => _originalAction.ActionView;
            set => _originalAction.ActionView = value;
        }

        /// <summary>
        /// List of roles with access to this action
        /// </summary>
        /// <value>The user roles.</value>
        public string[] UserRoles
        {
            get => _originalAction.UserRoles;
            set => _originalAction.UserRoles = value;
        }

        /// <summary>
        /// Defines the access key of the action (such as the underlined key in the menu)
        /// </summary>
        /// <value>The access key.</value>
        /// <remarks>Not all themes will pick this setting up</remarks>
        public char AccessKey
        {
            get => _originalAction.AccessKey;
            set => _originalAction.AccessKey = value;
        }

        /// <summary>
        /// Shortcut key
        /// </summary>
        /// <value>The shortcut key.</value>
        /// <remarks>Not all themes will pick this setting up</remarks>
        public Key ShortcutKey
        {
            get => _originalAction.ShortcutKey;
            set => _originalAction.ShortcutKey = value;
        }

        /// <summary>
        /// Modifier for the shortcut key
        /// </summary>
        /// <value>The shortcut modifier keys.</value>
        /// <remarks>Not all themes will pick this setting up</remarks>
        public ModifierKeys ShortcutModifiers
        {
            get => _originalAction.ShortcutModifiers;
            set => _originalAction.ShortcutModifiers = value;
        }

        /// <summary>
        /// Indicates that an action is busy (and thus cannot currently execute)
        /// </summary>
        public bool IsBusy => _originalAction.IsBusy;

        /// <summary>
        /// Indicates how many operations are currently in progress. If it's greater than 0, then the IsBusy flag will should true
        /// </summary>
        public int BusyOperationsInProgress
        {
            get => _originalAction.BusyOperationsInProgress;
            set => _originalAction.BusyOperationsInProgress = value;
        }

        /// <summary>
        /// Indicates that previous CanExecute() results have become invalid and need to be re-evaluated.
        /// </summary>
        /// <exception cref="System.NotImplementedException"></exception>
        /// <remarks>This method should simply fire the CanExecuteChanged event.</remarks>
        public void InvalidateCanExecute() => CanExecuteChanged?.Invoke(this, new EventArgs());
    }
}