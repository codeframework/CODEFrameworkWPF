using System.Linq;
using System.Windows;
using System.Windows.Documents;

namespace CODE.Framework.Wpf.Documents
{
    /// <summary>
    /// Section class that can be populated from HTML
    /// </summary>
    public class HtmlSection : Section
    {
        /// <summary>HTML string (fragment with limited HTML support)</summary>
        public string Html
        {
            get => (string)GetValue(HtmlProperty);
            set => SetValue(HtmlProperty, value);
        }

        /// <summary>HTML string (fragment with limited HTML support)</summary>
        public static readonly DependencyProperty HtmlProperty = DependencyProperty.Register("Html", typeof(string), typeof(HtmlSection), new UIPropertyMetadata("", RepopulateBlocks));

        /// <summary>Second (optional) HTML string (fragment with limited HTML support)</summary>
        public string Html2
        {
            get => (string)GetValue(Html2Property);
            set => SetValue(Html2Property, value);
        }

        /// <summary>HTML string (fragment with limited HTML support)</summary>
        public static readonly DependencyProperty Html2Property = DependencyProperty.Register("Html2", typeof(string), typeof(HtmlSection), new UIPropertyMetadata("", RepopulateBlocks));

        /// <summary>Style assigned to the HTML2 content</summary>
        public Style Style2
        {
            get => (Style)GetValue(Style2Property);
            set => SetValue(Style2Property, value);
        }

        /// <summary>Style assigned to the HTML2 content</summary>
        public static readonly DependencyProperty Style2Property = DependencyProperty.Register("Style2", typeof(Style), typeof(HtmlSection), new UIPropertyMetadata(null, RepopulateBlocks));

        /// <summary>Block UI positioned at the leading left/top edge of the first paragraph</summary>
        public BlockUIContainer LeadingBlock
        {
            get => (BlockUIContainer)GetValue(LeadingBlockProperty);
            set => SetValue(LeadingBlockProperty, value);
        }

        /// <summary>Block UI positioned at the leading left/top edge of the first paragraph</summary>
        public static readonly DependencyProperty LeadingBlockProperty = DependencyProperty.Register("LeadingBlock", typeof(BlockUIContainer), typeof(HtmlSection), new UIPropertyMetadata(null, RepopulateBlocks));

        /// <summary>Width allocated for the leading block</summary>
        public double LeadingBlockWidth
        {
            get => (double)GetValue(LeadingBlockWidthProperty);
            set => SetValue(LeadingBlockWidthProperty, value);
        }

        /// <summary>Width allocated for the leading block</summary>
        public static readonly DependencyProperty LeadingBlockWidthProperty = DependencyProperty.Register("LeadingBlockWidth", typeof(double), typeof(HtmlSection), new UIPropertyMetadata(100d, RepopulateBlocks));

        /// <summary>Leading HTML string (fragment with limited HTML support)</summary>
        public string LeadingParagraphHtml
        {
            get => (string)GetValue(LeadingParagraphHtmlProperty);
            set => SetValue(LeadingParagraphHtmlProperty, value);
        }

        /// <summary>Leading HTML string (fragment with limited HTML support)</summary>
        public static readonly DependencyProperty LeadingParagraphHtmlProperty = DependencyProperty.Register("LeadingParagraphHtml", typeof(string), typeof(HtmlSection), new UIPropertyMetadata("", RepopulateBlocks));

        /// <summary>Trailing HTML string (fragment with limited HTML support)</summary>
        public string TrailingParagraphHtml
        {
            get => (string)GetValue(TrailingParagraphHtmlProperty);
            set => SetValue(TrailingParagraphHtmlProperty, value);
        }

        /// <summary>Trailing HTML string (fragment with limited HTML support)</summary>
        public static readonly DependencyProperty TrailingParagraphHtmlProperty = DependencyProperty.Register("TrailingParagraphHtml", typeof(string), typeof(HtmlSection), new UIPropertyMetadata("", RepopulateBlocks));

        /// <summary>Defines whether spaces are trimmed off at the start of the paragraph</summary>
        public bool TrimLeadingParagraphSpaces
        {
            get => (bool)GetValue(TrimLeadingParagraphSpacesProperty);
            set => SetValue(TrimLeadingParagraphSpacesProperty, value);
        }

        /// <summary>Defines whether spaces are trimmed off at the start of the paragraph</summary>
        public static readonly DependencyProperty TrimLeadingParagraphSpacesProperty = DependencyProperty.Register("TrimLeadingParagraphSpaces", typeof(bool), typeof(HtmlSection), new UIPropertyMetadata(true, RepopulateBlocks));

        /// <summary>Defines whether spaces are trimmed off at the start of the paragraph</summary>
        public bool TrimLeadingParagraphTabs
        {
            get => (bool)GetValue(TrimLeadingParagraphTabsProperty);
            set => SetValue(TrimLeadingParagraphTabsProperty, value);
        }

        /// <summary>Defines whether spaces are trimmed off at the start of the paragraph</summary>
        public static readonly DependencyProperty TrimLeadingParagraphTabsProperty = DependencyProperty.Register("TrimLeadingParagraphTabs", typeof(bool), typeof(HtmlSection), new UIPropertyMetadata(true, RepopulateBlocks));

        /// <summary>Re-creates the actual paragraph inlines based on the HTML as well as leading and trailing inlines</summary>
        /// <param name="source">Special Paragraph object</param>
        /// <param name="e">Event arguments</param>
        private static void RepopulateBlocks(DependencyObject source, DependencyPropertyChangedEventArgs e)
        {
            if (source is not HtmlSection section) return;

            section.Blocks.Clear();
            var blocks = section.Html.ToBlocks(section.LeadingParagraphHtml, section.TrailingParagraphHtml, section.TrimLeadingParagraphSpaces, section.TrimLeadingParagraphTabs).ToList();
            if (blocks.Count > 0)
            {
                section.Blocks.AddRange(blocks);

                if (section.LeadingBlock != null)
                {
                    if (section.Blocks.FirstBlock is not Paragraph paragraph)
                    {
                        paragraph = new Paragraph();
                        section.Blocks.Add(paragraph);
                    }

                    var figure = new Figure
                    {
                        HorizontalAnchor = FigureHorizontalAnchor.ColumnLeft,
                        VerticalAnchor = FigureVerticalAnchor.ParagraphTop,
                        Width = new FigureLength(section.LeadingBlockWidth),
                        Margin = new Thickness(0),
                        Padding = new Thickness(0)
                    };
                    figure.Blocks.Add(section.LeadingBlock);
                    if (paragraph.Inlines.FirstInline != null) paragraph.Inlines.InsertBefore(paragraph.Inlines.FirstInline, figure);
                    else paragraph.Inlines.Add(figure);
                }
            }

            if (!string.IsNullOrEmpty(section.Html2))
            {
                var blocks2 = section.Html2.ToBlocks(string.Empty, string.Empty, section.TrimLeadingParagraphSpaces, section.TrimLeadingParagraphTabs).ToList();
                if (blocks2.Count > 0)
                    section.Blocks.AddRange(blocks2);

                if (section.Style2 != null)
                    foreach (var block in blocks2)
                        block.Style = section.Style2;
            }
        }
    }
}