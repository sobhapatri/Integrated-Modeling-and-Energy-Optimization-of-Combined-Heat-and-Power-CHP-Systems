D1 = 0.28;                          % inner diameter of PCM
D2 = 0.56;                          % outer diameter of PCM
L = 15;                             % length of pipe
rho = 628;                          % density of PCM
Hf = 191000;                        % latent heat of fusion of the PCM
x = 0.001/100;                      % percentage of heat transfered to water
y = 0.52;                           % liquid fraction of the PCM
vw = 0.52;                          % inlet velocity of water
cp = 4.182;                         % specific heat of water
Ti = 30;                            % inlet temperature of water
V = pi*((D2^2)-(D1^2))*L;
M = rho*V;
Q = Hf*M;
QBTU = Q*(9.4782E-7);
disp("OUTPUT")
disp("The amount of heat recovered (MMBTU) :")
disp(QBTU)
Qw = y*x*Q;
mw = vw*997*pi*((D2^2)-(D1^2));
Te = (Qw/(mw*cp))+Ti;
disp("Exit temperature of water (K):")
disp(Te+273)                          