﻿using System.Collections.Specialized;
using System.ComponentModel;

namespace CODE.Framework.Wpf.Utilities
{
    /// <summary>
    /// Resource dictionary with CollectionChanged functionality
    /// </summary>
    public class ObservableResourceDictionary : ResourceDictionary, ISupportInitialize
    {
        /// <summary>
        /// Occurs when an item is added, removed, changed, moved, or the entire list is refreshed.
        /// </summary>
        public event NotifyCollectionChangedEventHandler CollectionChanged;

        /// <summary>
        /// Clears this instance.
        /// </summary>
        public new void Clear()
        {
            base.Clear();
            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Reset));
        }

        /// <summary>
        /// Adds the specified key/value pair.
        /// </summary>
        /// <param name="key">The key.</param>
        /// <param name="value">The value.</param>
        public new void Add(object key, object value)
        {
            base.Add(key, value);
            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Add, new List<object> { value }, new List<object>()));
        }

        /// <summary>
        /// Removes the specified key.
        /// </summary>
        /// <param name="key">The key.</param>
        public new void Remove(object key)
        {
            var removedItem = this[key];
            base.Remove(key);
            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Add, new List<object>(), new List<object> { removedItem }));
        }

        /// <summary>
        /// Ends the initialize.
        /// </summary>
        public new void EndInit()
        {
            base.EndInit();
            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Add, Values));
        }
    }
}
