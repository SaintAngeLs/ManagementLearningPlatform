using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace ManagementSystemForCourses.Common
{
    public class PasswordHelper
    {
        // PasswordProperty represents the attached property for the password value.
        public static readonly DependencyProperty PasswordProperty =
            DependencyProperty.RegisterAttached(
                "Password",
                typeof(string),
                typeof(PasswordHelper),
                new FrameworkPropertyMetadata("", new PropertyChangedCallback(OnpropertyChanged)));

        // Gets the password value from the specified DependencyObject.
        public static string GetPassword(DependencyObject d)
        {
            return d.GetValue(PasswordProperty).ToString();
        }

        // Sets the password value to the specified DependencyObject.
        public static void SetPassword(DependencyObject d, string value)
        {
            d.SetValue(PasswordProperty, value);
        }

        // AttachProperty represents the attached property for attaching the behavior to a PasswordBox.
        public static readonly DependencyProperty AttachProperty =
            DependencyProperty.RegisterAttached(
                "Attach",
                typeof(bool),
                typeof(PasswordHelper),
                new FrameworkPropertyMetadata(default(bool), new PropertyChangedCallback(OnAttached)));

        // Gets the value of the AttachProperty from the specified DependencyObject.
        public static bool GetAttach(DependencyObject d)
        {
            return (bool)d.GetValue(AttachProperty);
        }

        // Sets the value of the AttachProperty to the specified DependencyObject.
        public static void SetAttach(DependencyObject d, bool value)
        {
            d.SetValue(AttachProperty, value);
        }

        static bool isUpdating = false;

        // PropertyChangedCallback for the PasswordProperty.
        private static void OnpropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            PasswordBox password = d as PasswordBox;
            password.PasswordChanged -= Password_PasswordChanged;
            if (!isUpdating)
                password.Password = e.NewValue?.ToString(); // Set the password value if not updating
            password.PasswordChanged += Password_PasswordChanged;
        }

        // PropertyChangedCallback for the AttachProperty.
        private static void OnAttached(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            PasswordBox password = d as PasswordBox;
            password.PasswordChanged += Password_PasswordChanged;
        }

        // Event handler for the PasswordChanged event of the attached PasswordBox.
        private static void Password_PasswordChanged(object sender, RoutedEventArgs e)
        {
            PasswordBox pass = sender as PasswordBox;
            isUpdating = true;
            SetPassword(pass, pass.Password); // Update the attached password property
            isUpdating = false;
        }
    }
}