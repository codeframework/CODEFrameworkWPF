﻿using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

namespace CODE.Framework.Wpf.Theme.Universe.Controls
{
    /// <summary>Simple rendering mechanism to render a standard Newsroom loading animation (circular)</summary>
    public class CircularProgressAnimation : Grid
    {
        /// <summary>Constructor</summary>
        public CircularProgressAnimation()
        {
            ClipToBounds = false;

            IsVisibleChanged += (o, args) =>
            {
                if ((bool)args.NewValue && IsActive) StartAnimation();
                else StopAnimation();
            };
        }

        /// <summary>Defines the number of actual dots in the animation</summary>
        public int DotCount
        {
            get => (int)GetValue(DotCountProperty);
            set => SetValue(DotCountProperty, value);
        }

        /// <summary>Defines the number of actual dots in the animation</summary>
        public static readonly DependencyProperty DotCountProperty = DependencyProperty.Register("DotCount", typeof(int), typeof(CircularProgressAnimation), new UIPropertyMetadata(6, TriggerVisualRefresh));

        /// <summary>Defines the diameter of each dot within the animation</summary>
        public double DotDiameter
        {
            get => (double)GetValue(DotDiameterProperty);
            set => SetValue(DotDiameterProperty, value);
        }

        /// <summary>Defines the diameter of each dot within the animation</summary>
        public static readonly DependencyProperty DotDiameterProperty = DependencyProperty.Register("DotDiameter", typeof(double), typeof(CircularProgressAnimation), new UIPropertyMetadata(6d, TriggerVisualRefresh));

        /// <summary>Brush used to draw each dot</summary>
        public Brush DotBrush
        {
            get => (Brush)GetValue(DotBrushProperty);
            set => SetValue(DotBrushProperty, value);
        }

        /// <summary>Brush used to draw each dot</summary>
        public static readonly DependencyProperty DotBrushProperty = DependencyProperty.Register("DotBrush", typeof(Brush), typeof(CircularProgressAnimation), new UIPropertyMetadata(Brushes.Black, TriggerVisualRefresh));

        /// <summary>Determines the spacing of the individual dots (1 = neutral)</summary>
        public double DotSpaceFactor
        {
            get => (double)GetValue(DotSpaceFactorProperty);
            set => SetValue(DotSpaceFactorProperty, value);
        }

        /// <summary>Determines the spacing of the individual dots (1 = neutral)</summary>
        public static readonly DependencyProperty DotSpaceFactorProperty = DependencyProperty.Register("DotSpaceFactor", typeof(double), typeof(CircularProgressAnimation), new UIPropertyMetadata(1d, TriggerVisualRefresh));

        /// <summary>Sets the speed of the animation (factor 1 = neutral speed, lower factors are faster, larger factors slower, as it increases the time the animation has to perform)(</summary>
        public double DotAnimationSpeedFactor
        {
            get => (double)GetValue(DotAnimationSpeedFactorProperty);
            set => SetValue(DotAnimationSpeedFactorProperty, value);
        }

        /// <summary>Sets the speed of the animation (factor 1 = neutral speed, lower factors are faster, larger factors slower, as it increases the time the animation has to perform)(</summary>
        public static readonly DependencyProperty DotAnimationSpeedFactorProperty = DependencyProperty.Register("DotAnimationSpeedFactor", typeof(double), typeof(CircularProgressAnimation), new UIPropertyMetadata(1d, TriggerVisualRefresh));

        /// <summary>Indicates whether the progress animation is active</summary>
        /// <value>True if active</value>
        /// <remarks>For the progress animation to be displayed, the IsActive must be true, and the control must have its visibility set to visible.</remarks>
        public bool IsActive
        {
            get => (bool)GetValue(IsActiveProperty);
            set => SetValue(IsActiveProperty, value);
        }

        /// <summary>Indicates whether the progress animation is active</summary>
        /// <value>True if active</value>
        /// <remarks>For the progress animation to be displayed, the IsActive must be true, and the control must have its visibility set to visible.</remarks>
        public static readonly DependencyProperty IsActiveProperty = DependencyProperty.Register("IsActive", typeof(bool), typeof(CircularProgressAnimation), new UIPropertyMetadata(false, (s, e) =>
        {
            var progress = s as CircularProgressAnimation;
            if (progress != null && (bool)e.NewValue && progress.Visibility == Visibility.Visible) progress.StartAnimation();
            else if (progress != null) progress.StopAnimation();
        }));

        /// <summary>
        /// Defines the delay (in milliseconds) before the progress animation appears when activated
        /// </summary>
        public int StartDelay
        {
            get => (int)GetValue(StartDelayProperty);
            set => SetValue(StartDelayProperty, value);
        }
        /// <summary>
        /// Defines the delay (in milliseconds) before the progress animation appears when activated
        /// </summary>
        public static readonly DependencyProperty StartDelayProperty = DependencyProperty.Register("StartDelay", typeof(int), typeof(CircularProgressAnimation), new PropertyMetadata(0));

        /// <summary>Triggers a re-creation of all the child elements that make up the animation</summary>
        /// <param name="o">Dependency Object</param>
        /// <param name="e">Event arguments</param>
        private static void TriggerVisualRefresh(DependencyObject o, DependencyPropertyChangedEventArgs e)
        {
            if (o is not CircularProgressAnimation o2 || !o2.IsActive) return;
            o2.CreateVisuals(o2.DotCount);
            o2.StartAnimation();
        }

        /// <summary>Creates the actual visual elements that make up the animation</summary>
        /// <param name="circleCount">Number of circles to use in the animation</param>
        private void CreateVisuals(int circleCount)
        {
            Children.Clear();
            _storyboards.Clear();

            for (var counter = 0; counter < circleCount; counter++)
            {
                var grid = new Grid { RenderTransformOrigin = new Point(.5, .5), RenderTransform = new RotateTransform() };
                var ellipse = new Ellipse
                {
                    Height = DotDiameter,
                    Width = DotDiameter,
                    Fill = DotBrush,
                    HorizontalAlignment = HorizontalAlignment.Left,
                    VerticalAlignment = VerticalAlignment.Center
                };
                grid.Children.Add(ellipse);
                Children.Add(grid);

                var a1 = new DoubleAnimationUsingKeyFrames { RepeatBehavior = RepeatBehavior.Forever, BeginTime = TimeSpan.FromMilliseconds((DotSpaceFactor * 175 * counter) + StartDelay) };
                Storyboard.SetTargetProperty(a1, new PropertyPath("(UIElement.RenderTransform).(RotateTransform.Angle)"));
                Storyboard.SetTarget(a1, grid);
                var storyboard = new Storyboard();
                storyboard.Children.Add(a1);
                a1.KeyFrames.Add(new EasingDoubleKeyFrame(0d, KeyTime.FromTimeSpan(new TimeSpan(0))));
                a1.KeyFrames.Add(new EasingDoubleKeyFrame(180d, KeyTime.FromTimeSpan(new TimeSpan((long)(12500000 * DotAnimationSpeedFactor)))));
                a1.KeyFrames.Add(new EasingDoubleKeyFrame(360d, KeyTime.FromTimeSpan(new TimeSpan((long)(16500000 * DotAnimationSpeedFactor)))));
                var a2 = new DoubleAnimationUsingKeyFrames { RepeatBehavior = new RepeatBehavior(1), BeginTime = TimeSpan.FromMilliseconds((DotSpaceFactor * 175 * counter) + StartDelay) };
                Storyboard.SetTargetProperty(a2, new PropertyPath("(UIElement.Opacity)"));
                Storyboard.SetTarget(a2, ellipse);
                storyboard.Children.Add(a2);
                a2.KeyFrames.Add(new EasingDoubleKeyFrame(1d, KeyTime.FromTimeSpan(new TimeSpan(0))));
                _storyboards.Add(storyboard);
            }
        }

        /// <summary>
        /// Starts the animation.
        /// </summary>
        public void StartAnimation()
        {
            if (_animationInStartMode) return; // Preventing accidental recursive calls

            _animationInStartMode = true;
            CreateVisuals(DotCount);
            foreach (var sb in _storyboards) sb.Begin();
            if (!IsActive) IsActive = true;
            _animationInStartMode = false;
        }

        /// <summary>Internal field used to prevent recursive calls</summary>
        private bool _animationInStartMode;

        /// <summary>
        /// Stops the animation.
        /// </summary>
        public void StopAnimation()
        {
            foreach (var sb in _storyboards) 
                sb.Stop();
        }

        private readonly List<Storyboard> _storyboards = new List<Storyboard>();
    }
}
