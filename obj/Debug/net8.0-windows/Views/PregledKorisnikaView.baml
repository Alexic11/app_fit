   M S B A M L   `   `   `  ����>  :Fit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Fit.ViewModelsFit.ViewModels  5   	   $    Fit.Views.PregledKorisnikaView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089K GUno.Xaml, Version=255.255.255.255, Culture=neutral, PublicKeyToken=null<x,http://schemas.microsoft.com/winfx/2006/xaml      5   	   -vmclr-namespace:Fit.ViewModels      5   	      UserOverviewTitle  � Title#  �   5   	   $	��450��5   	   $	��700��5   	   ���#f5f5f5 � WindowStartupLocation$ CenterScreen=�5	   	    � DataContext 5      .   (Fit.ViewModels.PregledKorisnikaViewModel  5   
   .��5      � $��20q�6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   &   System.Windows.Controls.DataGrid  $��0��6      AutoGenerateColumns$ False��5         
IsReadOnly$
 True��5         CanUserAddRows$ False��5         SelectionMode$ Single=�5         HeadersVisibility$ Column=�5      	   GridLinesVisibility$	 
Horizontal=�5      
   RowBackground

 �����   AlternatingRowBackground �#eaeaea���#cccccc$��1q�5"         ColumnHeaderHeight$ 40Q�5#         	RowHeight$ 35Q�5$      $��14(�5%      
���   �$��0,0,0,10q�5'         HorizontalGridLinesBrush �#D3D3D3   VerticalGridLinesBrush �#D3D3D3
�������$	��400��5+      $	��Top=�5,      ��5      �� *	Korisnici+ �� SelectedItem 5      �� *SelektovaniKorisnik+ �� Mode$ TwoWay=� � 	Resources 5.      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value)  #System.Windows.Controls.DataGridRow �� Triggers P� Property P� Value��%(  '        '  9    �� 50      "  6   .�51      ��  � �� �#007ACC63   �� 52       � ��
 �����63   �� 53       � ��$
 Bold"�63   �� 54       � ��$ Center=�6C   �� 55       � ��$ 15(�61   �� 56       � ��$ 0,0,1,1q�68   �� 57       � �� �#005A9E64   58      �� 5;      "  6   .�5<      ��  �@J�SnapsToDevicePixels$
 True��6<   �� 5=       �@=�ErrorTemplate 6A   Z� �� 5>       � ��
 ���� 63   �� 5?       � ��$ 0q�68    5@      P� 5A       �@J�IsMouseOver$
 True��69   . �5B      ��  � �� �#CCE5FF6;   5C      P� 5D       �@ 
IsSelected$
 True��68   . �5E      ��  � �� �#3399FF6;   �� 5F       � ��
 �����6;   5G      5I      5J         Columns 5L      0  *System.Windows.Controls.DataGridTextColumn  5M        FirstNameHeader,  &System.Windows.Controls.DataGridColumn   Header# �  6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6P   �� *Ime+  5N        LastNameHeader# �  6%    6O   �� *	Prezime+  5O        UsernameHeader# �  6%    6O   �� *KorisnickoIme+  5P        
RoleHeader# �  6%    6K   �� *IdRoleNavigation.Naziv+5R      �� 5U   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��Right=�6;   $��0,10,0,0q�6W   .+�5V      ��   	AddButton#���  6   $��90��5W      $��35��6    $��5q�6,   ���#4CAF50
�������$��SemiBold"�5Y      
������  � Cursor$
 Hand��5Z      ��5[      �� *DodajCommand+�� 5]        
EditButton#���  6   $��90��5^      $��35��6    $��5q�6,   ���#FF9800
�������$��SemiBold"�5`      
������ $
 Hand��5a      ��5b      �� *IzmijeniCommand+�� 5d        DeleteButton#���  6   $��90��5e      $��35��6    $��5q�6,   ���#F44336
�������$��SemiBold"�5g      
������ $
 Hand��5h      ��5i      �� *ObrisiCommand+5j      5k      5l      