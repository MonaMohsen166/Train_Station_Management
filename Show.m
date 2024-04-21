function Show(table1,table2,table3)
%Mona Ragab Abdel-Moghny Ragab_Group1_1190490
while 1
    disp('to display table1 press 1');
    disp('to display table 2 press 2');
    disp('to display table 3 press 3')
    okay=input('enter table you want to display');
    if okay==1
      fprintf('DriverID  dailytrips \n')
      fprintf('%-12.0f   %-8.0f \n',table1.');
    elseif okay==2
        fprintf('DriverID  commpensationperhour  experinceBonus\n')
        fprintf('%-12.0f   %-8.0f   %9.0f \n',table2.');
    elseif okay==3;
        fprintf('DriverID  TrainID  Departuretimeinhrs    DepartureTimeinmins   ArrivalTimehrs    Arrivaltimemins\n')
        fprintf('%-8.0f   %-5.0f   %9.0f  %18.0f  %17.0f  %17.0f\n',table3.');
    else disp('wrong choice')
        break
    end
end
end