function  [table1,table2,table3]=Read_file(table1,table2,table3)
%Mona Ragab Abdel-Moghny Ragbab_(Group1)_(1190490)
while 1
    disp('1.table1')
    disp('2.table2')
    disp('3.table3')
    choice=input('if you wish, you may enter the table you want to load');
    if choice==1  
        disp('table 1') 
        filename=input('enter your excel file name', 's');
        table1=xlsread(filename);
    elseif choice==2
        disp('table 2')
        filename=input('enter your excel file name', 's' );
        table2=xlsread(filename);
    elseif choice==3
        disp('table 3')
        filename=input('enter your excel file name', 's' );
        table3=xlsread(filename);
    else disp('invalid')
        break
    end
end
end