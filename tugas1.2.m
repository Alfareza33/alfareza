clc
clear 

function y=f(x)
y=(-0.10597)+(1.671*10.^-4*x)+(9.7215*10.^-8*x.^2)-(9.58388*10.^-11*x.^3)+(1.9520*10.^-14*x.^4);
end
 
x = linspace(0,1200);
y = f(x);
plot(x,y)
grid on
hold on
xlabel ( 'Nilai X')
ylabel ( 'Nilai Y')
 
a = -1;
b = 0;
itermaks = 100;
toleransi = 1e-2;
 
for j = 1:itermaks
    p = (a+b)/2;
    if abs(f(p)) < toleransi
        break;
    end
    if f(p)*f(a) > 0
        a = p;
    else
        b = p;
    end
end
 
plot (p,f(p),'ro')
nilai_T=p
jumlah_iterasi = j
