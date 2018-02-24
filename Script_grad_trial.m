clear all;
load('EKF_log_70.mat');
x = t;
y = EKF_log(:,1);
y(end) = NaN;
c = log(EKF_log(:,42));
figure1 = figure(100);
subplot(2,1,1);
t = ts_ - ts_(1);
for i=1:length(t)
   delt_r_c(i) = norm(EKF_log(i,1:3)-EKF_log(i,15:17));  
end

y = delt_r_c;
y(end) = NaN;
h1 = patch(x,y,c,'EdgeColor','interp','LineWidth',4,'LineStyle','--')

hold all;
for i=1:length(t)
   delt_r_c(i) = norm(EKF_log(i,8:10)-EKF_log(i,15:17));  
end
h2 = plot(t,delt_r_c,'color',[0.5 0.5 0.5]);
ylabel('y1');
legend([h1 h2],{'leg1','leg2'},'Location','South','Orientation','Horizontal');

grid on
ylim([0.02,0.04]);
xlim([0,14.5]);
colorbar;



subplot(2,1,2);




clear all;


load('EKF_log_74.mat');
figure1 = figure(100);
x = t;
y = EKF_log(:,1);
y(end) = NaN;
c = log(EKF_log(:,42));
t = ts_ - ts_(1);
area(t,(1-EKF_log(:,39))*0.04,'FaceColor','flat');
for i=1:length(t)
   delt_r_c(i) = norm(EKF_log(i,1:3)-EKF_log(i,15:17));  
end

y = delt_r_c;
y(end) = NaN;
h1 = patch(x,y,c,'EdgeColor','interp','LineWidth',4,'LineStyle','--')

hold all;
for i=1:length(t)
   delt_r_c(i) = norm(EKF_log(i,8:10)-EKF_log(i,15:17));  
end
h2 = plot(t,delt_r_c,'color',[0.5 0.5 0.5]);
legend([h1 h2],{'ekf','vision'},'Location','South','Orientation','Horizontal');
grid on;ylabel('y2')
ylim([0.02,0.04]);
colorbar;
xlabel('t')
print('Roberto_RAL_18/figures/fig_norm_errors','-depsc');