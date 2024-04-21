function [table8]=compute_table8(table2 , table3)
%Mona Ragab Abdel-Moghny Ragab_Group1_1190490
table8(:,1)=table3(:,1);
sum=0;
for y=1:size(table3)
    for z=1:size(table2)
        if table2(z,1)==table3(y,1)
            th=table3(y,5)-table3(y,3);
            tm=table3(y,6)-table3(y,4);
            if th<0
               th=24+th;
            end
            if tm<0
              th=th-1;
              tm=tm+60;
            end
            sum=sum+(th+(tm/60));
            table8(y,3)=table2(z,2);
            table8(y,4)=table2(z,3);
        end
        table8(y,2)=sum*4;
        bonus=(1+(table8(y,4)./100));
    end
table8(y,5)=((table8(y,4).*(table8(y,2)).*bonus));
end
table8=[table8(:,1) table8(:,2) table8(:,3) table8(:,4) table8(:,5)];
while 1
ask=input('do you want to display or on excel on screen E for excel or d for display?', 's');
if ask=='E'
    xlswrite('table8.xlsx',table8)
elseif ask=='d';
    fprintf('DriverID   numberofhrs/month   compensation/hr   experincextrabonus    monthlysalary\n')
    fprintf('%-12.0f   %-8.4f   %9.0f  %19.0f%%  %24.3f\n',table8.');
    fprintf('\n')
else disp('wrong')
break
end
end
end