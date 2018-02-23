%Script to plot the EKF-related data
close all
%load('./Logs/EKF_log_71.mat');
load('./Logs/log_EKF_log.mat');
if (exist('./Logs/n.mat','file') == 2)
    load('./Logs/n.mat');
    n = n+1;
else
    n = 1;%default value to save 1;
end
t = ts_ - ts_(1);
figure;
subplot(3,1,1);
plot(t,EKF_log(:,1),'LineWidth',2);hold all;
ylabel('$r_{c,x}$','FontSize',20,'interpreter','LaTeX');
stairs(t,EKF_log(:,8),'-');
plot(t,EKF_log(:,15),'--');
grid on;
l = legend('EKF','Vision','TrueKin');
set(l,'interpreter','LaTeX','FontSize',20);
subplot(3,1,2);
plot(t,EKF_log(:,2),'LineWidth',2);hold all;
stairs(t,EKF_log(:,9),'-');
plot(t,EKF_log(:,16),'--');
grid on;
ylabel('$r_{c,y}$','FontSize',20,'interpreter','LaTeX');
subplot(3,1,3);
plot(t,EKF_log(:,3),'LineWidth',2);hold all;
stairs(t,EKF_log(:,10),'-');
plot(t,EKF_log(:,17),'--');
grid on;
ylabel('$r_{c,z}$','FontSize',20,'interpreter','LaTeX');
xlabel('$time(sec)$','FontSize',20,'interpreter','LaTeX');


figure;
subplot(4,1,1);
plot(t,EKF_log(:,4),'LineWidth',2);hold all;
ylabel('$\mu_{1}$','FontSize',20,'interpreter','LaTeX');
stairs(t,EKF_log(:,11),'-');
plot(t,EKF_log(:,18),'--');
grid on;
l = legend('EKF','Vision','TrueKin');
set(l,'interpreter','LaTeX','FontSize',20);
subplot(4,1,2);
plot(t,EKF_log(:,5),'LineWidth',2);hold all;
stairs(t,EKF_log(:,12),'-');
plot(t,EKF_log(:,19),'--');grid on;
ylabel('$\mu_{2}$','FontSize',20,'interpreter','LaTeX');
subplot(4,1,3);
plot(t,EKF_log(:,6),'LineWidth',2);hold all;
stairs(t,EKF_log(:,13),'-');
plot(t,EKF_log(:,20),'--');
ylabel('$\mu_{3}$','FontSize',20,'interpreter','LaTeX');
subplot(3,1,3);
plot(t,EKF_log(:,7),'LineWidth',2);hold all;
stairs(t,EKF_log(:,14),'-');
plot(t,EKF_log(:,21),'--');grid on;
ylabel('$\mu_{0}$','FontSize',20,'interpreter','LaTeX');
xlabel('$time(sec)$','FontSize',20,'interpreter','LaTeX');

figure;
subplot(4,1,1);
plot(t,EKF_log(:,22),'LineWidth',2);hold all;
plot(t,EKF_log(:,29),'-');grid on;
ylabel('$q_{1}$','FontSize',20,'interpreter','LaTeX');
l = legend('EKF','TrueKin');
set(l,'interpreter','LaTeX','FontSize',20);
subplot(4,1,2);
plot(t,EKF_log(:,23),'LineWidth',2);hold all;
plot(t,EKF_log(:,30),'-');grid on;
ylabel('$q_{2}$','FontSize',20,'interpreter','LaTeX');
subplot(4,1,3);
plot(t,EKF_log(:,24),'LineWidth',2);hold all;
plot(t,EKF_log(:,31),'-');grid on;
ylim([-1,1.1]);
ylabel('$q_{3}$','FontSize',20,'interpreter','LaTeX');
subplot(4,1,4);
plot(t,EKF_log(:,25),'LineWidth',2);hold all;
plot(t,EKF_log(:,32),'-');
ylabel('$q_{0}$','FontSize',20,'interpreter','LaTeX');
xlabel('$time(sec)$','FontSize',20,'interpreter','LaTeX');


figure;
subplot(3,1,1);
plot(t,EKF_log(:,26),'LineWidth',2);hold all;
plot(t,EKF_log(:,33),'-');grid on;
ylabel('$r_{x}$','FontSize',20,'interpreter','LaTeX');
l = legend('EKF','TrueKin');
set(l,'interpreter','LaTeX','FontSize',20);
subplot(3,1,2);
plot(t,EKF_log(:,27),'LineWidth',2);hold all;
plot(t,EKF_log(:,34),'-');grid on;
ylabel('$r_{y}$','FontSize',20,'interpreter','LaTeX');
subplot(3,1,3);
plot(t,EKF_log(:,28),'LineWidth',2);hold all;
plot(t,EKF_log(:,35),'-');grid on;
ylabel('$r_{z}$','FontSize',20,'interpreter','LaTeX');
xlabel('$time(sec)$','FontSize',20,'interpreter','LaTeX');


figure;
subplot(3,1,1);
plot(t,EKF_log(:,36),'LineWidth',2);hold all;
plot(t,repmat(1*pi/180,size(t)),'-');grid on;
ylabel('$\omega_{x}$','FontSize',20,'interpreter','LaTeX');
l = legend('EKF','True');
set(l,'interpreter','LaTeX','FontSize',20);
subplot(3,1,2);
plot(t,EKF_log(:,37),'LineWidth',2);hold all;
plot(t,repmat(0*pi/180,size(t)),'-');grid on;
ylabel('$\omega_{y}$','FontSize',20,'interpreter','LaTeX');
subplot(3,1,3);
plot(t,EKF_log(:,38),'LineWidth',2);hold all;
plot(t,repmat(0*pi/180,size(t)),'-');grid on;
ylabel('$\omega_{z}$','FontSize',20,'interpreter','LaTeX');
xlabel('$time(sec)$','FontSize',20,'interpreter','LaTeX');

figure;
subplot(3,2,1);
plot(t,EKF_log(:,39),'LineWidth',2);hold all;grid on;
ylabel('$vision_{ok}$','FontSize',20,'interpreter','LaTeX');
subplot(3,2,2);
stem(t,EKF_log(:,40),'LineWidth',2);hold all;grid on;
ylabel('$EKF_{trig}$','FontSize',20,'interpreter','LaTeX');
subplot(3,2,3);
plot(t,EKF_log(:,41),'LineWidth',2);hold all;grid on;
ylabel('$\log(tr(P))$','FontSize',20,'interpreter','LaTeX');
subplot(3,2,4);
plot(t,EKF_log(:,42),'LineWidth',2);hold all;grid on;
ylabel('$\chi^2$','FontSize',20,'interpreter','LaTeX');
subplot(3,2,5);
plot(t,EKF_log(:,43),'LineWidth',2);hold all;grid on;
ylabel('$OR$','FontSize',20,'interpreter','LaTeX');
subplot(3,2,6);
plot(t,EKF_log(:,44),'LineWidth',2);hold all;grid on;
ylabel('$Confidence$','FontSize',20,'interpreter','LaTeX');


xlabel('$time(sec)$','FontSize',20,'interpreter','LaTeX');



filename = strcat('EKF_log_',num2str(n));
save(strcat('./Logs/',filename));%
save('./Logs/n.mat','n');