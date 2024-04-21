clear
table1=[];
table2=[];
table3=[];
table7=[];
th=[];
tm=[];
table8=[];
table9=[];
while 1
    clc
    disp('1.Add rows in table 1 cosisting of trainID and daily trips');
    disp('2.Add rows in table 2 consisting of DriverID salar/hour and experince bonus ');
    disp('3.Add rows in table 3 consisting of DriverID,trainID,departure time in both hours and mins and arrival time');
    disp('4.load a file from excel sheet');
    disp('5.save a file in excel sheet');
    disp('6.display table');
    disp('7.table for compunsation of each driver');
    disp('8.table for monthly salary');
    disp('9.who are the drivers on duty this month and what is their train ID?');
    disp('10.exit')
    yournumber=input('choose a suitable number: ');
    if yournumber==1
        clc
        disp('compute_table1: ');
        table1=compute_table1(table1);
    elseif yournumber==2
        clc
        disp('compute_table2: ')
        table2=compute_table2(table2);
    elseif yournumber==3
        clc
        disp('compute_table3')
        table3=compute_table3(table3);
    elseif yournumber==4
        [table1,table2,table3]=Read_file(table1,table2,table3);
    elseif yournumber==5
        write(table1,table2,table3)
    elseif yournumber==6
        clc
        Show(table1,table2,table3)
    elseif yournumber==7
        clc
        compute_table7(table2,table3);
    elseif yournumber==8
        clc
        table8=compute_table8(table2,table3);
    elseif yournumber==9
        clc
        table9=compute_table9(table2,table3);
    elseif yournumber==10
        clc
        disp('you have reached to an end')
        disp('Have a nice day, GoodBye!')
        break
    end
end


