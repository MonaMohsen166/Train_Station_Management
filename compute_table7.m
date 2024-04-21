function [table7]=compute_table7( table2 , table3)
%Mona Ragab Abdel-Moghny Ragab_Group1_1190490
table7(:,1)=table3(:,1);
for j=1:size(table3)
    c=0;
   for i=1:size(table2)
        if table2(i,1)==table3(j,1)
           c=c+1;
           table7(j,3)=table2(i,2);
        end
        table7(j,2)=c*4;
   end
   
        for k=1:size(table2(:,1))
        if table3(j,1)==table2(k,1)
            table7(j,3)=table2(k,2);
        end

        end


   th=table3(j,5)-table3(j,3);
   tm=table3(j,6)-table3(j,4);
if th<0
    th=24+th;
end
if tm<0
    th=th-1;
    tm=tm+60;
end
table7(j,4)=(table7(j,3).*(th+(tm/60)));
end
table7=[table7(:,1) table7(:,2) table7(:,3) table7(:,4)];
while 1
ask=input('do you want to display or on excel on screen E for excel or d for display?', 's');
if ask=='E'
    xlswrite('table7.xlsx',table7)
elseif ask=='d';
fprintf('DriverID  numberoftrips/month   compensationperhour  compenationpertrip\n')
fprintf('%-12.0f   %5.0f   %15.0f  %25.4f \n',table7.');
else disp('wrong')
break
end
end
end
