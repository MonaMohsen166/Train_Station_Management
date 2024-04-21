function [table3]=compute_table3(table3)
%Mona Ragab Abdel-Moghny Ragbab_(Group1)_(1190490)
DriverID=input('enter your driver ID: ');
TrainID=input('enter your train ID: ');
 DepartureTimeHour=input('enter your departure time: ');
while DepartureTimeHour>23
    disp('Error! enter within range')
     DepartureTimeHour=input('enter your departure time: ');
end
DepartureTimemins=input('enter your departure in mins');
while DepartureTimemins>59
        disp('Error! enter within in range from 0 to 59')
     DepartureTimemins=input('enter your departure in mins');
end
ath=input('enter your arrival time in hours: ');
while ath>23
            disp('Error! enter within in range from 0 to 23')
            ath=input('enter your arrival time in hours: ');
end
atm=input('enter your arrival time in minutes');
while atm>59
         disp('Error! enter within in range from 0 to 59')
         atm=input('enter your arrival time in minutes');
end
    [r c]=size(table3);
    table3(r+1,:)=[TrainID DriverID DepartureTimeHour DepartureTimemins ath atm];
end