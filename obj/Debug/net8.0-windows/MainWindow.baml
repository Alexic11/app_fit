   M S B A M L   `   `   `  ����>  :Fit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Fit.ViewModelsFit.ViewModels  5   	       Fit.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089K GUno.Xaml, Version=255.255.255.255, Culture=neutral, PublicKeyToken=null<x,http://schemas.microsoft.com/winfx/2006/xaml      5   	   Bd2http://schemas.microsoft.com/expression/blend/2008      5   	   Lmc;http://schemas.openxmlformats.org/markup-compatibility/2006      5   	   -vmclr-namespace:Fit.ViewModels      5   	      WindowTitle  � Title#  �   5   	   $	��700��6/   $	��800��6<    � DataContext 5
      #  Fit.ViewModels.LoginViewModel  5   
   .��5      � -   5         �Name$ MainGrid��5      ���#f5f5f5$��20q�62    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��   WelcomeText#���  6   $��28(�5      $
��Bold"�5      $��	0,10,0,30q�5      $��Center=�5      �� 5   
   $��1��6   $	��Top=�6"   $��Center=�6:   $	��300��6W   .+�5      ��   UsernameLabel#���  6   $��14(�6?   �� 5      $��0,5,0,15q�5      $��14(�6(   ��5      �� * SelectedKorisnik.KorisnickoIme+ �� UpdateSourceTrigger$ PropertyChanged=�5   (   �� 5         PasswordLabel#���  6   $��14(�6?   G� 5!      -   5         G�Name$ PasswordBox��5!      $��0,5,0,20q�5"      $��14(�5#      �� 5%        LoginButtonText#���  6   $	��250��5(      $��0,0,0,10q�5)      $��35��5*      ���#007ACC
�������$��SemiBold"�5-      ��5&      �� *LoginCommand+��5'      ��  �� ElementName$ PasswordBox��5-      �� 5/      -   5          RegisterButtonText#���  5/      $	��250��50      $��35��51      ���#4CAF50
�������$��SemiBold"�54      55      �� 58        
ThemeLabel#���  6   $
��Bold"�59      $��16(�5:      $��	0,30,0,10q�5;      $��Center=�5<      �� 5>       �� Orientation$ 
Horizontal=�6   $��Center=�62   $��0,0,0,10q�6O   .+�5?      �� -   5        $��Light��5?      $��90��6?   $	��5,0q�6J   �� 5@      -   5        $
��Dark��5@      $��90��6=   $	��5,0q�6H   �� 5A      -   5        $��Color��5A      $��90��6B   $	��5,0q�6M   5B      �� 5E        LanguageLabel#���  6   $
��Bold"�5F      $��16(�5G      $��	0,20,0,10q�5H      $��Center=�5I      �� 5K      $ 
Horizontal=�6   $��Center=�62   .+�5L      �� -   5        $��Srpski��5L      $	��120��6E   $
��10,0q�6Q   �� 5M      -   5        $��English��5M      $	��120��6F   $
��10,0q�6R   5N      5O      5P      5Q      