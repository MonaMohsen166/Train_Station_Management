function  write(table1,table2,table3)
%Mona Ragab Abdel-Moghny Ragbab_(Group1)_(1190490) 
while 1
    disp('1.table1')
    disp('2.table2')
    disp('3.table3')
     choose=input('enter your choice');
    if choose==1
        disp('1.table1')
        file=input('enter file name: ', 's');
        xlswrite(file,table1);
    elseif choose==2
        disp('2.table2')
        file=input('enter your filename', 's');  
       xlswrite(file,table2);
    else choose=3;
        disp('3.table3')
        file=input('enter your filename', 's');
        xlswrite(file,table3);
        break
    end
end
end
