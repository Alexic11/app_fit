   M S B A M L   `   `   `  ����  Fit'    !Fit.Views.PregledAktivnostiWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089K GUno.Xaml, Version=255.255.255.255, Culture=neutral, PublicKeyToken=null<x,http://schemas.microsoft.com/winfx/2006/xaml      5   	      PregledAktivnostiNaslov  � Title#  �   5   	   $	��600��6;   $	��900��6H   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5	      $��* �6   �� 5
      $
��Auto �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��0,0,0,10q�6.   .+�5      ��   FilterNazivLabel#���  6   $��0,0,5,0q�6B   $��Center=�6S   �� 5      $	��150��6   $��0,0,15,0q�6d   ��6"   �� *FilterNaziv+ �� UpdateSourceTrigger$ PropertyChanged=�6d   �� 5        FilterTipLabel#���  6   $��0,0,5,0q�6@   $��Center=�6Q   �� 5      $	��150��6   ��6"   �� *	FilterTip+$ PropertyChanged=�5      &   System.Windows.Controls.DataGrid  5   
   $��1��6      AutoGenerateColumns$ False��5         CanUserAddRows$ False��5         
IsReadOnly$
 True��5      $��0,0,0,10q�5      ��5      �� *FilteredAktivnosti+ �� SelectedItem 5      �� *SelektovanaAktivnost+ �� Mode$ TwoWay=�	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5        KolonaNaziv,  &System.Windows.Controls.DataGridColumn
   Header#
 �  6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6L   �� *Naziv+  5         KolonaTrajanje#
 �  6%    6O   �� *TrajanjeUMinutama+  5!        KolonaDatum#
 �  6%    6L   �� *DatumVrijeme+ �� StringFormat$ {0:dd.MM.yyyy HH:mm}��  5"        	KolonaTip#
 �  6%    6J   �� *" IdTipaAktivnostiNavigation.Naziv+5$      �� 5'   
   $��2��6     	ObrisiBtn#���  6   $��Right=�6f   ��6D   �� *ObrisiCommand+6f   5(      5)      