   M S B A M L   `   `   `  ���� J  FAttackSimulator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:AttackSimulatorAttackSimulator       AttackSimulator.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:AttackSimulator       � Title$&   Attack Simulator - RED TEAM DEMO��$	��600��$	��800�� � WindowStartupLocation$ CenterScreen=����	#FF1E1E1E.���  � RowDefinitions �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0�����	#FF2A2A2A �� Padding$ 10q�._���  �� Orientation$ 
Horizontal=�.+��� $$��https://via.placeholder.com/48��$��48��$��48��$��0,0,10,0q��� .+��� $��ATTACK SIMULATOR��$��24(�$
��Bold"����	#FFE51400�� $+��%Red Team Operation Demonstration Tool��$��12(�
��������� $��1�����	#FF252526$��0q�.@��� $��Attack Details��
�������.���� .���� $��10q�.+��� $��Attack Simulation Results�����	#FFE51400���	#FF404040.���� $��5q�.+��� $@��:✔ Attack successful: Calculator spawned as child process��
������$
��Bold"�$��0,0,0,10q��� $_��YThis simulation demonstrates how an attacker could execute arbitrary code on your system.��
�������$
��Wrap=��� $��Process Information��
����������	#FF404040$��0,10,0,0q�.��� $��5q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��Parent Process:��$��0��$��0��
�������$��0,0,5,5q��� -    ��Name$ txtParentProcess��$��0��$��1��
�������$��0,0,0,5q��� $��Child Process:��$��1��$��0��
�������$��0,0,5,5q��� -   $ txtChildProcess��$��1��$��1��
�������$��0,0,0,5q��� $��Process ID:��$��2��$��0��
�������$��0,0,5,5q��� -   $ txtProcessId��$��2��$��1��
�������$��0,0,0,5q��� $��User Context:��$��3��$��0��
�������$��0,0,5,5q��� -   $ txtUserContext��$��3��$��1��
�������$��0,0,0,5q��� $��Integrity Level:��$��4��$��0��
�������$��0,0,5,5q��� -   $ txtIntegrityLevel��$��4��$��1��
�������$��0,0,0,5q��� $��System Information��
����������	#FF404040$��0,10,0,0q�.��� $��5q� �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��Computer Name:��$��0��$��0��
�������$��0,0,5,5q��� -   $ txtComputerName��$��0��$��1��
�������$��0,0,0,5q��� $��OS Version:��$��1��$��0��
�������$��0,0,5,5q��� -   $ txtOsVersion��$��1��$��1��
�������$��0,0,0,5q��� $��Current Time:��$��2��$��0��
�������$��0,0,5,5q��� -   $ txtCurrentTime��$��2��$��1��
�������$��0,0,0,5q��� $��
Mitigation��
�������.���� .���� $��10q�.+��� $��Recommended Mitigations�����	#FFE51400���	#FF404040.���� $��5q�.+��� $9��3To prevent such attacks in production environments:��
�������$
��Wrap=�$��0,0,0,10q��� $��0q�
������ .@��� 
�������.���� $ 
Horizontal=�.+��� $
��• ��$
��Bold"��� $(��"Implement application whitelisting��$
��Wrap=��� 
�������.���� $ 
Horizontal=�.+��� $
��• ��$
��Bold"��� $5��/Use endpoint protection with process monitoring��$
��Wrap=��� 
�������.���� $ 
Horizontal=�.+��� $
��• ��$
��Bold"��� $;��5Follow principle of least privilege for user accounts��$
��Wrap=��� 
�������.���� $ 
Horizontal=�.+��� $
��• ��$
��Bold"��� $?��9Monitor for suspicious parent-child process relationships��$
��Wrap=��� 
�������.���� $ 
Horizontal=�.+��� $
��• ��$
��Bold"��� $7��1Keep systems updated with latest security patches��$
��Wrap=��� $R��LThis is a simulation tool for security awareness and training purposes only.��
�������$��Italic$�$��0,20,0,0q�$
��Wrap=��� $��2�����	#FF2A2A2A$ 10q�._��� $ 
Horizontal=�$��Right=�.+��� -	   $��Simulate Another Attack��$	��150��$��0,0,10,0q��� -
   $��Close��$��80��