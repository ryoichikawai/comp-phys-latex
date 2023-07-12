fid=fopen('improper_integral.dat','w')

    
for i=1:199
    x(i)=0.01+0.005*(i-1);
    y1(i) = 1/((x(i)+1)*sqrt(x(i)));
    y2(i)=1/sqrt(x(i));
    dy(i)=y2(i)-y1(i);
    fprintf(fid,'%7f %20.8e %20.8e %20.8e\n',x(i),y1(i),y2(i),dy(i));
end

p=plot(x,y1,x,y2,x,dy);
set(p(1),'Color','black','LineWidth',2);
set(p(2),'Color','blue','LineWidth',2);
set(p(3),'Color','red','LineWidth',2);


fclose(fid)
