function table9=compute_table9(table2,table3)
%Mona Ragab Abdel-Moghny Ragab_Group1_1190490
table9(:,1)=table3(:,1);
for n=1:size(table3)
    for m=1:size(table2)
        if table2(m,1)==table3(n,1);
            table9(n,2)=table3(n,2);
        end
    end
end
while 1
ask=input('do you want to display or on excel on screen E for excel or d for display?', 's');
if ask=='E'
    header={'DriverID trainID'};
    xlswrite('table9.xlsx',header)
    xlswrite('table9.xlsx',table9)
elseif ask=='d';
    fprintf('DriverID  TrainID\n')
    fprintf('%-8.0f   %-5.0f\n',table9.');
else disp('wrong')
    break
end
end
end