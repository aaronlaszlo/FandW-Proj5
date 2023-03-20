%Aaron Rosen - A20198898 - March242022
%Fields & Waves II - Project 5 - BVP 1 - Infinite Trough

syms y k x z

Io = 10; %Voltage Potential (V)
b = 1; %trough height (m)





    



prompt = "Set N ----> ";
N = input(prompt);
func1 = (4.*Io)./((2.*k-1).*pi);
func2 = exp((-(2.*k-1).*pi.*x)./b);
func3 = sin(((2.*k-1).*pi.*y)./b);
WG = symsum((func1.*func2.*func3), k, 1, N); %phi(x,y)
%WG = symsum((((4*Io)/((2*k-1)*pi))*exp(-((2*k-1)*pi*x)/b)*sin(((2*k-1)*pi*y)/b)), k, 1, N); 
figure
fsurf(WG, [0 2 0 1]);


WGX = -1.*gradient(WG) %E(x,y)
WGXofX = -1.*gradient(WG, x) %E(x)
WGXofY = -1.*gradient(WG, y) %E(y)
WGXofZ = -1.*gradient(WG, z) %E(z) to show not in direction of propagation
figure 
fsurf(WGX, [0 2 0 1]);
figure
fsurf(WGXofX, [0 2 0 1]);
figure
fsurf(WGXofY, [0 2 0 1]);
figure
fsurf(norm(WGX), [0 2 0 1]); %|E(x,y)|




   


