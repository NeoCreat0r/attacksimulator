# Attack Simulator - Red Team Demonstration Tool
## 📌 Overview
Attack Simulator is a WPF application designed to demonstrate successful attack scenarios in Windows environments. It visually simulates process injection techniques similar to those used in real-world attacks (like those in Atomic Red Team tests) while providing detailed security context information about the simulated attack.
This tool is ideal for:
* Security awareness training
* Red team demonstrations
* Blue team detection testing
* Understanding process relationships in Windows
## ✨ Features
1. Realistic attack simulation - Spawns calculator as child process (simulating arbitrary code execution)
2. Detailed security context - Displays: Parent and child process information, Process IDs (PIDs), User context and integrity level, System information
3. Educational content - Includes mitigation recommendations
4. Professional UI - Themed like security tools with real-time update
## 🛠️ Technical Details
**Platform**: Windows (WPF .NET application)
**Language**: C#
**Dependencies**: None (pure WPF)
## 🚀 Getting Started
Prerequisites: Windows OS, NET Framework 4.7.2 or later
Installation: Download the latest release and run AttackSimulator.exe
## ⚠️ Disclaimer
**This is a simulation tool for security awareness and training purposes only.**
**It does not perform any actual malicious activities. Use responsibly and only in environments where you have permission to conduct security testing.**
