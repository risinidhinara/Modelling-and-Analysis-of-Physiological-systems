
%Defining matrix A and boundray conditions

% electrical constants and derived quantities for typical 
% mammalian dendrite

% Dimensions of compartments

d1 = 75e-4; 			% cm
d21 = 30e-4; 			% cm
d22 = 15e-4; 			% cm
% d21 = 47.2470e-4;       % E9 cm
% d22 = d21;               % E9 cm

l1 = 1.5;			% dimensionless
l21 = 3.0;			% dimensionless
l22 = 3.0;			% dimensionless

% Electrical properties of compartments

Rm = 6e3;			% Ohms cm^2
Rc = 90;			% Ohms cm
Rs = 1e6;			% Ohms

c1 = 2*(Rc*Rm)^(1/2)/pi;

rl1 = c1*d1^(-3/2);		% Ohms
rl21 = c1*d21^(-3/2);		% Ohms
rl22 = c1*d22^(-3/2);		% Ohms


% Applied current

iapp = 1e-9; 	% Amps

% Coefficient matrices

A = [1 -1 0 0 0 0;
     0 0 exp(-l21) exp(l21) 0 0;
     0 0 0 0 exp(-l22) exp(l22);
     exp(-l1) exp(l1) -exp(-l1) -exp(l1) 0 0;
     0 0 exp(-l1) exp(l1) -exp(-l1) -exp(l1);
     -exp(-l1) exp(l1) rl1*exp(-l1)/rl21 -rl1*exp(l1)/rl21 rl1*exp(-l1)/rl22 -rl1*exp(-l1)/rl22];

b = [rl1*iapp 0 0 0 0 0]';


%% Question 3 
% 
% 
% Calculating Values of coefficients
% 
% 

x=A\b;
display(x);
%% 
% Values of coefficients
%A1= 0.0007
%B1= 0.0000
%A21= 0.0011
%B21= -0.0000
%A22= 0.0011
%B22= -0.0000
% 
%Plotting the steady state voltage profiles
%
%% Question 4 


y1 = linspace(0, l1, 20);
y21 = linspace(l1, l21, 20);
y22 = linspace(l1, l22, 20);
v1 = x(1) * exp(-y1) + x(2) * exp(y1);
v21 = x(3) * exp(-y21) + x(4) * exp(y21);
v22 = x(5) * exp(-y22) + x(6) * exp(y22);
plot(y1, v1, 'y-', y21, v21, 'r-', y22, v22, 'b-');
xlabel('X (dimensionless)');
ylabel('V (volts)');
title('Steady-state voltage - E5'); 
% 
%Observations
%In this analysis, it's evident that the red line is not visible in the diagram, indicating either its
%equality or extreme proximity to the blue line. Since the yellow line, representing the parent
%branch, does not affect the daughter branches, it's reasonable to deduce that the red and
%blue lines are equivalent. Consequently, the steady-state voltage profiles of both daughter
%branches are identical.
%Moreover, the code confirms this deduction. By plotting the red and blue lines for the
%daughter branches, with the red line being imperceptible, it's apparent that the blue line has
%overwritten it. This alignment implies equality between the two lines and thus between the
%steady-state voltage profiles of the daughter branches.
%In summary, both the diagram and the code strongly support the conclusion that the
%steady-state voltage profiles of the two daughbranches arecare equual

% 
%% 4. Solutions for different boundary conditions 
% 
% 
% Plotting steady state voltage profiles for different boundary contions
% 
% 
% 
% Boundary condition 1-2(a)

A2_a=A;
A2_a(2,:) = [0 0 -exp(-l21) exp(l21) 0 0];
x=A2_a\b;
y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);
v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'y-',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady state voltage - E5')
%Boundary condition 2-2(b)

A2_b=A;
A2_b(2,:) = [0 0 -exp(-l21) exp(l21) 0 0];
A2_b(3,:) = [0 0 0 0 -exp(-l22) exp(l22)];
x=A2_b\b;
y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);
v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'y-',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady state voltage - E5');
% Boundary condition 3-2(c)

A2_c=A2_a;
b(1) = 0;
b(2) = rl21*iapp;
x=A2_c\b;
y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);
v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'y-',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady state voltage - E5');
% Boundary condition 4-2(b)

A2_d=A2_b;
b(3) = rl22*iapp;
x=A2_d\b;
y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);
v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'y-',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady state voltage - E5'); 
%% 
% 
%% Question 5 

%The positive right-hand side signifies a positive rate of change of voltage with respect to
%electrotonic distance 𝑋 at the end of the second daughter branch L22
%These positive rates of change suggest that the voltage increases as one moves away from
%the terminals of the daughter branches. This suggests an increase in membrane potential
%along the length of the daughter branch. A positive rate of change of voltage at the end of a
%daughter branch implies that the incoming signals are being summated or combined,
%potentially leading to an enhanced response in downstream neuronal elements.
%Overall, these positive derivatives indicate an upward trend in voltage towards the ends of
%the daughter branches in response to the specified boundary conditions.
%Steady-state voltage profile for for d21 = d22 = 47.2470 x 10^−4cm

%% Question 6 
% 
% 
%Redefining matrix A and boundray conditions
% 
% 
% 

% electrical constants and derived quantities for typical 
% mammalian dendrite

% Dimensions of compartments

d1 = 75e-4; 			% cm
%d21 = 30e-4; 			% cm
%d22 = 15e-4; 			% cm
d21 = 47.2470e-4;       % E9 cm
d22 = d21;               % E9 cm

l1 = 1.5;			% dimensionless
l21 = 3.0;			% dimensionless
l22 = 3.0;			% dimensionless

% Electrical properties of compartments

Rm = 6e3;			% Ohms cm^2
Rc = 90;			% Ohms cm
Rs = 1e6;			% Ohms

c1 = 2*(Rc*Rm)^(1/2)/pi;

rl1 = c1*d1^(-3/2);		% Ohms
rl21 = c1*d21^(-3/2);		% Ohms
rl22 = c1*d22^(-3/2);		% Ohms


% Applied current

iapp = 1e-9; 	% Amps

% Coefficient matrices

A = [1 -1 0 0 0 0;
     0 0 exp(-l21) exp(l21) 0 0;
     0 0 0 0 exp(-l22) exp(l22);
     exp(-l1) exp(l1) -exp(-l1) -exp(l1) 0 0;
     0 0 exp(-l1) exp(l1) -exp(-l1) -exp(l1);
     -exp(-l1) exp(l1) rl1*exp(-l1)/rl21 -rl1*exp(l1)/rl21 rl1*exp(-l1)/rl22 -rl1*exp(-l1)/rl22];

b = [rl1*iapp 0 0 0 0 0]';

%Recalculating coefficients of the equation

x=A\b;
display(x);
%Values of coefficients
%A1= 0.7189
%B1= -0.0014
%A21= 0.7275
%B21= -0.0018
%A22= 0.7275
%B22= -0.0018

%Replotting the steady state voltage profile for 2(b)

A2_b2=A;
A2_b2(2,:) = [0 0 -exp(-l21) exp(l21) 0 0];
A2_b2(3,:) = [0 0 0 0 -exp(-l22) exp(l22)];
x=A2_b2\b;
y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);
v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'y-',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady state voltage-2(b) - E5');
A2_d2=A2_b2;
b(3) = rl22*iapp;
b(1) = 0;
b(2) = rl21*iapp;

%Replotting the steady state voltage profile for 2(d)

x=A2_d2\b;
y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);
v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'y-',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady state voltage-2(d) - E5');
%% 
% _Observations*_                                   
%In both sets of graphs, as the boundary conditions for daughter branches are equal, the
%steady-state voltage profiles of the two daughter branches are equal. In comparing the
%current graphs with the previous ones the notable differences are:
%These graphs appear smoother, showing consistent voltage transitions along the
%daughter branches. This allows electrical impulses to be transmitted smoothly to the
%daughter cells.
%These two graphs are continuously differentiabl while the previous two are not.
%% 
% 
% 
% 
% 
%