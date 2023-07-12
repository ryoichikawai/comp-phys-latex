clear all;

N=101;
h=1/(N-1);
x=[0:N-1]*h;

a = [32,16,8,4,2,1,1/2,1/4,1/8];
for i=1:9
       y=a(i)*x.^2;
    if i< 5
        p=plot(x,y);
    elseif i>5
        p=plot(x,y,'--');
    else
        p=plot(x,y);
        set(p,'linewidth',2)
    end
    hold on
end

b = [-0.8 -0.6 -0.4 -0.2 0.0 0.2 0.4 0.6 0.8];
for i=1:9
    for j=1:N
        x(j)=b(i)+h*(j-1);
    end
    y=sqrt(x-b(i));
    if i< 6
        p=plot(x,y);
        set(p,'color','red');
    elseif i>6
        p=plot(x,y,'--');
        set(p,'color','red');
    else
        p=plot(x,y);
        set(p,'linewidth',2,'color','red');
    end
    hold on
end

xlabel(texlabel('x_1'),'fontsize',14)
ylabel(texlabel('x_2'),'fontsize',14)
axis([0 1 0 1])
axis square
hold off
