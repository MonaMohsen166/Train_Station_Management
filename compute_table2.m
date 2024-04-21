function [table2]=compute_table2(table2)
%Mona Ragab Abdel-Moghny Ragbab_(Group1)_(1190490)
DriverID=input('enter your DriverID:  ');
Salaryperhour=input('enter your drivers salary/hour: ');
experinceyears=input('enter experince years: ');
[r,c]=size(table2);
table2(r+1,:)=[DriverID Salaryperhour experinceyears];
end
