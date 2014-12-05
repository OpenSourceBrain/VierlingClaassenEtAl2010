% Generate random connectivity files for reading into lightgamma Neuron 6X6 Network
% Dorea Vierling-Claassen 2009
% For paper Vierling-Claassen et al., 2010, Frontiers in Human Neuroscience

% Connection probabilities between populations:

%E=pyramid
%I=FS IN 
%S=SOM/LTS

cl=clock;

%DN='confiles/Con_1-28-10_1/'

trialnum=1
DN=['confiles/con_',num2str(cl(2)),'-',num2str(cl(3)),'-',num2str(cl(1)),'-',num2str(trialnum),'/']

NumEx=6;
NumEy=6;
NumIx=2;
NumIy=3;
NumSx=2;
NumSy=3;

% Projections from E cells
P_EE=.06;
P_EI=.43;
P_ES=.57;

% Projections from FS cells
P_IE=.44;
P_II=.51;
P_IS=.36;

% Projections from Som
P_SE=.35;
P_SI=.61;
P_SS=0; % actual value is .04, but in this small network with 6 Som this is <1 connection


% E projection connfiles:
FN=[DN,'Con_EE','.dat']
Con_EE=randconn_ind_noaut(NumEx,NumEy,P_EE);
save(FN, 'Con_EE', '-ASCII')

FN=[DN,'Con_EI','.dat']
Con_EI=randconn_ind(NumEx,NumEy,NumIx,NumIy,P_EI);
save(FN, 'Con_EI', '-ASCII')

FN=[DN,'Con_ES','.dat']
Con_ES=randconn_ind(NumEx,NumEy,NumSx,NumSy,P_ES);
save(FN, 'Con_ES', '-ASCII')

% FS projection connfiles:
FN=[DN,'Con_IE','.dat']
Con_IE=randconn_ind(NumIx,NumIy,NumEx,NumEy,P_IE);
save(FN, 'Con_IE', '-ASCII')

FN=[DN,'Con_II','.dat']
Con_II=randconn_ind_noaut(NumIx,NumIy,P_II);
save(FN, 'Con_II', '-ASCII')

FN=[DN,'Con_IS','.dat']
Con_IS=randconn_ind(NumIx,NumIy,NumSx,NumSy,P_IS);
save(FN, 'Con_IS', '-ASCII')

% Som projection connfiles:
FN=[DN,'Con_SE','.dat']
Con_SE=randconn_ind(NumSx,NumSy,NumEx,NumEy,P_SE);
save(FN, 'Con_SE', '-ASCII')

FN=[DN,'Con_SI','.dat']
Con_SI=randconn_ind(NumSx,NumSy,NumIx,NumIy,P_SI);
save(FN, 'Con_SI', '-ASCII')

FN=[DN,'Con_SS','.dat']
Con_SS=randconn_ind_noaut(NumSx,NumSy,P_SS);
save(FN, 'Con_SS', '-ASCII')


