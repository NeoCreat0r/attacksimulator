using System;
using System.Diagnostics;
using System.Security.Principal;
using System.Windows;
using System.Windows.Threading;

namespace AttackSimulator
{
    public partial class MainWindow : Window
    {
        private Process childProcess;

        public MainWindow()
        {
            InitializeComponent();
            Loaded += OnLoaded;
        }

        private void OnLoaded(object sender, RoutedEventArgs e)
        {
            // Simulate the attack by launching calculator
            SimulateAttack();

            // Display system information
            DisplaySystemInfo();

            // Start a timer to update the current time
            var timer = new DispatcherTimer
            {
                Interval = TimeSpan.FromSeconds(1)
            };
            timer.Tick += (s, args) => txtCurrentTime.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            timer.Start();
        }

        private void SimulateAttack()
        {
            try
            {
                // Launch calculator as the "malicious" process
                childProcess = Process.Start("calc.exe");

                // Display process information
                txtParentProcess.Text = $"{Process.GetCurrentProcess().ProcessName} (PID: {Process.GetCurrentProcess().Id})";
                txtChildProcess.Text = $"calc.exe (PID: {childProcess.Id})";
                txtProcessId.Text = childProcess.Id.ToString();

                // Get user context
                var identity = WindowsIdentity.GetCurrent();
                txtUserContext.Text = identity.Name;

                // Get integrity level (simplified)
                txtIntegrityLevel.Text = GetIntegrityLevel();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Attack simulation failed: {ex.Message}", "Error",
                    MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private string GetIntegrityLevel()
        {
            // This is a simplified version - in a real app you'd use Windows API calls
            var principal = new WindowsPrincipal(WindowsIdentity.GetCurrent());

            if (principal.IsInRole(WindowsBuiltInRole.Administrator))
                return "High (Administrator)";
            if (principal.IsInRole(WindowsBuiltInRole.User))
                return "Medium (User)";
            if (principal.IsInRole(WindowsBuiltInRole.Guest))
                return "Low (Guest)";

            return "Unknown";
        }

        private void DisplaySystemInfo()
        {
            txtComputerName.Text = Environment.MachineName;
            txtOsVersion.Text = $"{Environment.OSVersion.VersionString} (64-bit: {Environment.Is64BitOperatingSystem})";
            txtCurrentTime.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }

        private void OnSimulateAnotherAttack(object sender, RoutedEventArgs e)
        {
            // Kill previous child process if still running
            try
            {
                if (childProcess != null && !childProcess.HasExited)
                {
                    childProcess.Kill();
                }
            }
            catch { /* ignore */ }

            // Simulate a new attack
            SimulateAttack();
        }

        private void OnClose(object sender, RoutedEventArgs e)
        {
            // Clean up child process
            try
            {
                if (childProcess != null && !childProcess.HasExited)
                {
                    childProcess.Kill();
                }
            }
            catch { /* ignore */ }

            Close();
        }
    }
}