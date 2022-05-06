%% Rough Calculations

clc
clear all
close all

%% Power/Force/Torque
% RPM =2390
% Torque = 151.505
% 
% omega=(2*pi*RPM)/60
% Power = Torque*omega
% 
% Fx = -43.7609; 
% Fy = -282.641;
% Fz = -235.946;
% 
% Tx = 9.12249;
% Ty = 128.662;
% Tz = -151.447;
% 
% 
% rx = Tx/Fy;
% ry = Ty/Fy;
% rz = Tz/Fz;

%% Cartesian to Polar/Polar to Cartesian

% x_0 = 297.9;
% y_0 = -4;
% 
% [TH_0,R_0] = cart2pol(x_0,y_0);
% 
% R_10    = R_0 + 10;
% R_5     = R_0 + 5;
% R_m5    = R_0 - 5;
% R_m10   = R_0 - 10;
% 
% [x_10,y_10]     = pol2cart(TH_0,R_10);
% [x_5,y_5]       = pol2cart(TH_0,R_5);
% [x_m5,y_m5]     = pol2cart(TH_0,R_m5);
% [x_m10,y_m10]   = pol2cart(TH_0,R_m10);
% 
% delx_10 = x_10 - x_0
% dely_10 = y_10 - y_0
% 
% delx_5 = x_5 - x_0
% dely_5 = y_5 - y_0
% 
% delx_m5 = x_m5 - x_0
% dely_m5 = y_m5 - y_0
% 
% delx_m10 = x_m10 - x_0
% dely_m10 = y_m10 - y_0




%% Plotting the Dovetail offset results

% Y = [-4.3782 -2.3782 0 2 4]; %Y coordinate of Dovetail CG
% Y_n0_2 = [-1 -0.5 0 0.5 1 2 3];
% Y_p0_2 = [2 3 4];
% Y_n0_4 = [-2.5 -2 -1.645 -1 0];
% Y_n0_6 = [-4.5 -4 -3.5 -3 -2 ];
% 
% CG_0 = 0.515 ;
% CG_p0_2 = 1.553;
% CG_n0_2 = -0.563;
% CG_n0_4 = -1.645;
% CG_n0_6 = -2.678;
% 
% Disp = [2.87 2.25 1.62 1.29 1.94]; %mm
% Disp_n0_2 = [1.31 1.19 1.123 1.24 1.39 1.715 2.0478];
% Disp_p0_2 = [1.75 1.53 1.711];
% Disp_n0_4 = [1.0874 0.9803 1.037 1.2277 1.5392];
% Disp_n0_6 = [0.9947 0.8814 0.923 1.0687 1.3732];
% 
% Stress =[93 69 53 46 60]; %MPa
% 
% figure()
% plot(Y,Disp,'ko-','MarkerSize',10,'LineWidth',2)
% hold on
% plot(Y_p0_2,Disp_p0_2,'ro-','MarkerSize',10,'LineWidth',2)
% plot(Y_n0_2,Disp_n0_2,'bo-','MarkerSize',10,'LineWidth',2)
% plot(Y_n0_4,Disp_n0_4,'mo-','MarkerSize',10,'LineWidth',2)
% plot(Y_n0_6,Disp_n0_6,'co-','MarkerSize',10,'LineWidth',2)
% xline(CG_0,'k-','LineWidth',2)
% xline(CG_p0_2,'r-','LineWidth',2)
% xline(CG_n0_2,'b-','LineWidth',2)
% xline(CG_n0_4,'m-','LineWidth',2)
% xline(CG_n0_6,'c-','LineWidth',2)
% grid on
% xlim([-5 5])
% set(gca,'FontSize', 20)
% set(gcf,'Position',[10 10 900 500])
% legend('Lean 0','Lean +0.2','Lean -0.2','Lean -0.4','Lean -0.6')
% xlabel('Y coordinate of Dovetail CG')
% ylabel('Maximum Deflection [mm]')


% figure()
% plot(Y,Stress,'ro-','MarkerSize',10,'LineWidth',2)
% plot(Y_n0_2,Stress,'ro-','MarkerSize',10,'LineWidth',2)
% plot(Y_p0_2,Stress,'ro-','MarkerSize',10,'LineWidth',2)
% grid on
% xlim([-5 5])
% xlabel('Y coordinate of Dovetail CG')
% ylabel('Maximum Stress [MPa]')


%% Plotting Dovetail Offset results for 20 mm 

% Y = [-2 -1.5 -1 -0.5];
% Disp = [1.11 1.0523 0.988 1.0266];
% 
% Nodes =[60429 110875 239578 394639];
% Stress =[73.65 74.79 80.304 88.478];
% 
% 
% figure()
% plot(Y,Disp,'ko-','MarkerSize',10,'LineWidth',2)
% hold on
% plot(Y_n0_4,Disp_n0_4,'mo-','MarkerSize',10,'LineWidth',2)
% xline(CG_n0_4,'c-','LineWidth',2)
% grid on
% xlim([-2.5 0])
% ylim([0 2])
% set(gca,'FontSize', 20)
% set(gcf,'Position',[10 10 900 500])
% legend('Lean -0.4 20','Lean -0.4 17','CG Blade Lean -0.4')
% xlabel('Y coordinate of Dovetail CG')
% ylabel('Maximum Deflection [mm]')
% 
% figure()
% plot(Nodes,Stress,'ko-','MarkerSize',10,'LineWidth',2)
% hold on
% %xline(CG_n0_4,'c-','LineWidth',2)
% grid on
% % xlim([-2.5 0])
% % ylim([0 2])
% set(gca,'FontSize', 20)
% set(gcf,'Position',[10 10 900 500])
% %legend('Lean -0.4','CG Blade Lean -0.4')
% xlabel('Nodes')
% ylabel('Stress [MPa]')

%% Mesh Independence Disk

% Nodes = [215142 215357 221596 234265 260537 408841 719594 4657047]; %383740
% Stress = [73.37 75.60 76.57 88.057 88.377 96.34 95.335 95.34]; %91.71
% % Stress_p = [51.97 58.37 58.19]; %54.67
%  
% figure()
% plot(Nodes,Stress,'-','LineWidth',2)
% hold on
% % plot(Nodes,Stress_p,'-','LineWidth',2)
% grid on
% xlabel('Nodes')
% ylabel('Stress [MPa]')
%legend('Suction side transition','Pressure side transition')

%% Mesh Independence Blade

Nodes = [221754 239739 347650 760308 1321316]; 
Stress = [71.07 71.90 72.14 72.19 72.13]; 

figure()
plot(Nodes,Stress,'-','LineWidth',2)
hold on
grid on
%ylim([70 73])
xlabel('Nodes')
ylabel('Stress [MPa]')

%% Blade loading compare

% path = 'C:\Users\chalke\OneDrive - KTH\Akshay\EleFanT\Results\R04\Mesh Independence CFD R04\';
% 
% BL_25_C = readmatrix([path 'Coarse_25_R04.csv']);
% BL_50_C = readmatrix([path '\Coarse_50_R04.csv']);
% BL_90_C = readmatrix([path '\Coarse_90_R04.csv']);
% 
% BL_25_M = readmatrix([path '\Med_25_R04.csv']);
% BL_50_M = readmatrix([path '\Med_50_R04.csv']);
% BL_90_M = readmatrix([path '\Med_90_R04.csv']);
% 
% figure()
% % plot(BL_25_C(:,1),BL_25_C(:,2),':','LineWidth',2)
% hold on
% % plot(BL_50_C(:,1),BL_50_C(:,2),':','LineWidth',2)
% plot(BL_90_C(:,1),BL_90_C(:,2),':','LineWidth',2)
% % plot(BL_25_M(:,1),BL_25_M(:,2),'--','LineWidth',2)
% % plot(BL_50_M(:,1),BL_50_M(:,2),'--','LineWidth',2)
% plot(BL_90_M(:,1),BL_90_M(:,2),'--','LineWidth',2)
% grid on
% hold off

