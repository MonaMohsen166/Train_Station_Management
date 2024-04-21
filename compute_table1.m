function [table1]=compute_table1(table1)
%Mona Ragab Abdel-Moghny Ragbab_(Group1)_(1190490) 
trainID=input('Enter trainID : ');
dailytrips=input('Enter number of trips/day : ');
[r c]=size(table1);
table1(r+1,:)=[trainID dailytrips];
end