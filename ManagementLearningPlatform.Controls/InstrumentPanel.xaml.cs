using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ManagementSystemForCourses.Controls
{
    /// <summary>
    /// Interaction logic for InstrumentPanel.xaml
    /// </summary>
    public partial class InstrumentPanel : UserControl
    {
        //Dependency Property , Dependency object

        // Value property represents the current value of the instrument panel.
        // It is a dependency property, which means it can be bound to other properties and enables animation, styling, and binding.
        public int Value
        {
            get { return (int)this.GetValue(ValueProperty); }
            set { this.SetValue(ValueProperty, value); }
        }

        // Using a DependencyProperty as the backing store for Value. This enables animation, styling, binding, etc...
        public static readonly DependencyProperty ValueProperty = DependencyProperty.Register(
            "Value",
            typeof(int),
            typeof(InstrumentPanel),
            new PropertyMetadata(default(int), new PropertyChangedCallback(OnPropertyChanged)));

        // Minimum property represents the minimum value of the instrument panel.
        // It is a dependency property, enabling animation, styling, and binding.
        public int Minimum
        {
            get { return (int)GetValue(MinimumProperty); }
            set { SetValue(MinimumProperty, value); }
        }

        // Using a DependencyProperty as the backing store for Minimum. This enables animation, styling, binding, etc...
        public static readonly DependencyProperty MinimumProperty = DependencyProperty.Register(
            "Minimum",
            typeof(int),
            typeof(InstrumentPanel),
            new PropertyMetadata(default(int), new PropertyChangedCallback(OnPropertyChanged)));

        // Maximum property represents the maximum value of the instrument panel.
        // It is a dependency property, enabling animation, styling, and binding.
        public int Maximum
        {
            get { return (int)GetValue(MaximumProperty); }
            set { SetValue(MaximumProperty, value); }
        }

        // Using a DependencyProperty as the backing store for Maximum. This enables animation, styling, binding, etc...
        public static readonly DependencyProperty MaximumProperty = DependencyProperty.Register(
            "Maximum",
            typeof(int),
            typeof(InstrumentPanel),
            new PropertyMetadata(default(int), new PropertyChangedCallback(OnPropertyChanged)));

        // Interval property represents the interval value of the instrument panel.
        // It is a dependency property, enabling animation, styling, and binding.
        public int Interval
        {
            get { return (int)GetValue(IntervalProperty); }
            set { SetValue(IntervalProperty, value); }
        }

        // Using a DependencyProperty as the backing store for Interval. This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IntervalProperty = DependencyProperty.Register(
            "Interval",
            typeof(int),
            typeof(InstrumentPanel),
            new PropertyMetadata(default(int), new PropertyChangedCallback(OnPropertyChanged)));

        // PlateBackground property represents the background brush of the instrument panel.
        // It is a dependency property, enabling animation, styling, and binding.
        public Brush PlateBackground
        {
            get { return (Brush)GetValue(PlateBackgroundProperty); }
            set { SetValue(PlateBackgroundProperty, value); }
        }

        // Using a DependencyProperty as the backing store for PlateBackground. This enables animation, styling, binding, etc...
        public static readonly DependencyProperty PlateBackgroundProperty = DependencyProperty.Register(
            "PlateBackground",
            typeof(Brush),
            typeof(InstrumentPanel),
            new PropertyMetadata(default(Brush)));

        // ScaleTextSize property represents the text size of the scale in the instrument panel.
        // It is a dependency property, enabling animation, styling, and binding.
        public int ScaleTextSize
        {
            get { return (int)GetValue(ScaleTextSizeProperty); }
            set { SetValue(ScaleTextSizeProperty, value); }
        }

        // Using a DependencyProperty as the backing store for ScaleTextSize. This enables animation, styling, binding, etc...
        public static readonly DependencyProperty ScaleTextSizeProperty = DependencyProperty.Register(
            "ScaleTextSize",
            typeof(int),
            typeof(InstrumentPanel),
            new PropertyMetadata(default(int), new PropertyChangedCallback(OnPropertyChanged)));

        // ScaleColor property represents the color of the scale in the instrument panel.
        // It is a dependency property, enabling animation, styling, and binding.
        public Brush ScaleColor
        {
            get { return (Brush)GetValue(ScaleColorProperty); }
            set { SetValue(ScaleColorProperty, value); }
        }

        // Using a DependencyProperty as the backing store for ScaleColor. This enables animation, styling, binding, etc...
        public static readonly DependencyProperty ScaleColorProperty = DependencyProperty.Register(
            "ScaleColor",
            typeof(Brush),
            typeof(InstrumentPanel),
            new PropertyMetadata(default(Brush), new PropertyChangedCallback(OnPropertyChanged)));

        // Method called when a dependency property changes. It triggers the refresh of the instrument panel.
        public static void OnPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            (d as InstrumentPanel).Refresh();
        }

        // Constructor for the InstrumentPanel class.
        public InstrumentPanel()
        {
            InitializeComponent();
            this.SizeChanged += InstrumentPanel_SizeChanged;
        }

        // Event handler for the SizeChanged event of the instrument panel.
        private void InstrumentPanel_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            // Adjust the size of the instrument panel elements based on the new size.
            double minSize = Math.Min(this.RenderSize.Width, this.RenderSize.Height);
            this.backEllipse.Width = minSize;
            this.backEllipse.Height = minSize;
            Refresh();
        }

        // Refreshes the instrument panel.
        private void Refresh()
        {
            double radius = this.backEllipse.Width / 2;
            if (double.IsNaN(radius))
                return;

            this.mainCanvas.Children.Clear();

            // Draw scale lines
            double step = 300.0 / (this.Maximum - this.Minimum);
            for (int i = 0; i < this.Maximum - this.Minimum; ++i)
            {
                Line lineScale = new Line();

                lineScale.X1 = radius - (radius - 13) * Math.Cos((i * step - 45) * Math.PI / 180);
                lineScale.Y1 = radius - (radius - 13) * Math.Sin((i * step - 45) * Math.PI / 180);
                lineScale.X2 = radius - (radius - 8) * Math.Cos((i * step - 45) * Math.PI / 180);
                lineScale.Y2 = radius - (radius - 8) * Math.Sin((i * step - 45) * Math.PI / 180);

                lineScale.Stroke = Brushes.White;
                lineScale.StrokeThickness = 1;

                this.mainCanvas.Children.Add(lineScale);
            }

            // Draw scale values
            double scaleStep = 300.0 / Interval;
            int scaleText = (int)this.Minimum;
            for (int i = 0; i <= Interval; ++i)
            {
                Line lineScale = new Line();
                lineScale.X1 = radius - (radius - 20) * Math.Cos((i * scaleStep - 45) * Math.PI / 180);
                lineScale.Y1 = radius - (radius - 20) * Math.Sin((i * scaleStep - 45) * Math.PI / 180);
                lineScale.X2 = radius - (radius - 8) * Math.Cos((i * scaleStep - 45) * Math.PI / 180);
                lineScale.Y2 = radius - (radius - 8) * Math.Sin((i * scaleStep - 45) * Math.PI / 180);
                lineScale.Stroke = this.ScaleColor;
                lineScale.StrokeThickness = 1;
                this.mainCanvas.Children.Add(lineScale);

                // Draw scale value text
                TextBlock textScale = new TextBlock();
                textScale.Width = 34;
                textScale.TextAlignment = TextAlignment.Center;
                textScale.FontSize = this.ScaleTextSize;
                textScale.Text = (scaleText + (this.Maximum - this.Minimum) / Interval * i).ToString();
                textScale.Foreground = this.ScaleColor;
                Canvas.SetLeft(textScale, radius - (radius - 36) * Math.Cos((i * scaleStep - 45) * Math.PI / 180) - 17);
                Canvas.SetTop(textScale, radius - (radius - 36) * Math.Sin((i * scaleStep - 45) * Math.PI / 180) - 10);
                this.mainCanvas.Children.Add(textScale);

                // Draw the circle
                string sData = "M{0} {1} A{0} {0} 0 1 1 {1} {2}";
                sData = string.Format(sData, radius / 2, radius, radius * 1.5);
                var converter = TypeDescriptor.GetConverter(typeof(Geometry));
                this.circle.Data = (Geometry)converter.ConvertFrom(sData);

                // Rotate the pointer based on the value
                DoubleAnimation da = new DoubleAnimation((this.Value - this.Minimum) * step - 45, new Duration(TimeSpan.FromMilliseconds(200)));
                this.rtPointer.BeginAnimation(RotateTransform.AngleProperty, da);

                // Draw the pointer
                sData = "M{0},{1},{1},{2},{1},{3}";
                sData = string.Format(sData, radius * 0.3, radius, radius - 5, radius + 5);
                this.pointer.Data = (Geometry)converter.ConvertFrom(sData);
            }
        }
    }
}
