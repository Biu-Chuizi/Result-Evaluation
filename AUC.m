clear;close all;
% x=0:10:100;%x���ϵ����ݣ���һ��ֵ�������ݿ�ʼ���ڶ���ֵ��������������ֵ������ֹ
% y=0:10:100;
% data = load("data.txt");
% X = data(:,1);
% Y = data(:,2);
% a=[100,94.2,92.3,88.5,84.6,75.0,71.2,69.2,67.3,61.5,0]; %a����yֵ
a=[100,66.9,61.6,56.8,53.2,49.2,46.3,41.0,37.1,31.1,0]; %a����yֵ
b=[0,92.2,95.6,97.2,98.0,98.4,98.9,99.3,99.5,99.8,100]; %b����yֵ
% plot(x,a,'-*b',x,b,'-..r'); %���ԣ���ɫ�����
% plot(x,a,'-*b',y,b,'-*b'); %���ԣ���ɫ�����
% plot(100-b,a,'-*r');
% axis([0,100,0,100])  %ȷ��x����y���ͼ��С
% set(gca,'XTick',[0:10:100]) %x�᷶Χ
% set(gca,'YTick',[0:10:100]) %y�᷶Χ
% % legend('Neo4j','MongoDB');   %���ϽǱ�ע
% xlabel('1-specificity')  %x����������
% ylabel('sensitivity') %y����������

% x = 1:100;
% y = sin(2*pi*x/100);
% for i = 1:100
s_auc=trapz(100-a,b)/(100*100);
figure;
plot(100-b,a,'-k','Marker','*','MarkerEdgeColor','r')
% ,'MarkerFaceColor','b');
% [0.99,0,0.01]);
% 'MarkerFaceColor',[(100-i)/100,0,i/100]);
     
hold on;
axis([0,100,0,100])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[0:10:100]) %x�᷶Χ
set(gca,'YTick',[0:10:100]) %y�᷶Χ
% legend('AUC=0.962');   %���ϽǱ�ע
xlabel('1-specificity(%)')  %x����������
ylabel('sensitivity(%)') %y����������
% print('Figure 1', '-djpeg','-r300'); ��ӡ����ͼƬ
% end