using System.Windows.Media;
using CODE.Framework.Wpf.Interfaces;

namespace CODE.Framework.Wpf.TestBench
{
    /// <summary>
    /// Interaction logic for LazyList.xaml
    /// </summary>
    public partial class LazyList : Window
    {
        public LazyList()
        {
            InitializeComponent();
        }
    }

    public class LazyTestGrid : Grid, ILazyLoad, IHorizontalOffset
    {
        private double _offset;

        public LazyTestGrid()
        {
            MinHeight = 30;
            MinWidth = 100;
            ClipToBounds = false;
            HorizontalAlignment = HorizontalAlignment.Left;
        }
        public bool HasLoaded { get; private set; }
        public void Load()
        {
            HasLoaded = true;
            Children.Add(new TextBlock { Text = Tag.ToString(), Margin = new Thickness(10, 3, 50, 3), Foreground = Brushes.White });
        }

        public double Offset
        {
            get => _offset;
            set
            {
                _offset = value;

                if (Children.Count > 0)
                {
                    if (Children[0] is TextBlock text) text.RenderTransform = new TranslateTransform(value, 0);
                }
            }
        }

        public double ExtentWidth
        {
            get => DesiredSize.Width;
            set { }
        }

        public double ViewPortWidth { get; set; }
    }
}
