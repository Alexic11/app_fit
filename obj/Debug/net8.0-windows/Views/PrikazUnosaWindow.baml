   M S B A M L   `   `   `  ����  Fit!    Fit.Views.PrikazUnosaWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089K GUno.Xaml, Version=255.255.255.255, Culture=neutral, PublicKeyToken=null<x,http://schemas.microsoft.com/winfx/2006/xaml      5   	      PrikazUnosaNaslov  � Title#  �   5   	   $	��600��65   $	��900��6B   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5	      $
��Auto �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��0,0,0,10q�6.   .+�5      ��   FilterNazivLabel2#���  6   $��0,0,5,0q�6C   $��Center=�6T   �� 5      $	��150��6   $��0,0,15,0q�6d   ��6"   �� *FilterNaziv+ �� UpdateSourceTrigger$ PropertyChanged=�6d   �� 5        FilterTipObrokaLabel#���  6   $��0,0,5,0q�6F   $��Center=�6W   �� 5      $	��150��6   ��6"   �� *	FilterTip+$ PropertyChanged=�5      &   System.Windows.Controls.DataGrid  5   
   $��1��6      AutoGenerateColumns$ False��5         CanUserAddRows$ False��5         
IsReadOnly$
 True��5      $��0,0,0,10q�5      ��5      �� *FilteredObroci+ �� SelectedItem 5      �� *SelektovaniObrok+ �� Mode$ TwoWay=�	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5        KolonaNaziv2,  &System.Windows.Controls.DataGridColumn
   Header#
 �  6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6M   �� *Naziv+  5        KolonaKalorije#
 �  6%    6O   �� *
Kalorije+  5         KolonaProteini#
 �  6%    6O   �� *
Proteini+  5!        KolonaUH#
 �  6%    6I   �� *Ugljenihidrati+  5"        KolonaMasti#
 �  6%    6L   �� *Masti+  5#        
KolonaMasa#
 �  6%    6K   �� *Masa+  5$       	 KolonaDatumVrijeme#
 � 	 6%    6S   �� *DatumVrijeme+ �� StringFormat$ {0:dd.MM.yyyy HH:mm}��  5%       
 KolonaTipObroka#
 � 
 6%    6P   �� *IdTipObrokaNavigation.Naziv+5'      �� 5*   
   $��2��6     ObrisiObrokBtn#���  6   $��Right=�6k   ��6I   �� *ObrisiCommand+6k   5+      5,      