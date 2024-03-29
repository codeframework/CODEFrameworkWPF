﻿using CODE.Framework.Wpf.Controls;
using CODE.Framework.Wpf.Mvvm;

namespace CODE.Framework.Wpf.Theme.Zorro.Controls
{
    /// <summary>
    /// Special zoom slider class used by the Geek shell
    /// </summary>
    public class ZorroShellZoomSlider : ZoomSlider
    {
        /// <summary>
        /// Called when the zoom factor changes
        /// </summary>
        protected override void OnZoomFactorChanged() => Shell.Current.DesiredContentZoomFactor = Zoom;
    }
}
