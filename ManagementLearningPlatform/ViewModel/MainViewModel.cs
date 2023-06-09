﻿using ManagementSystemForCourses.Common;
using ManagementSystemForCourses.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ManagementSystemForCourses.View
{
    public class MainViewModel : NotifyBase
    {
        // Define properties for user information, search text, and main content
        public UserModel UserInfo { get; set; }

        private string _searchText;
        public string SearchText
        {
            get { return _searchText; }

            set { _searchText = value; this.DoNotify(); }
        }
        private FrameworkElement _mainContent;

        public FrameworkElement MainContent
        {
            get { return _mainContent; }

            set { _mainContent = value; this.DoNotify(); }
        }

        // Define command for navigation change
        public CommandBase NavChangedCommand { get; set; }


        public MainViewModel()
        {
            // Initialize user information, navigation command, and default main content
            UserInfo = new UserModel();

            this.NavChangedCommand = new CommandBase();
            this.NavChangedCommand.DoExecute = new Action<object>(DoNavChanged);
            this.NavChangedCommand.DoCanExecute = new Func<object, bool>((o) => true);

            DoNavChanged("FirstPageView");
        }

        private void DoNavChanged(object obj)
        {
            // Using reflection to get the specified page type

            Type type = Type.GetType("ManagementSystemForCourses.View." + obj.ToString());
            ConstructorInfo cti = type.GetConstructor(System.Type.EmptyTypes);
            this.MainContent = (FrameworkElement)cti.Invoke(null);
        }



    }
}
