%designed by hzLiu,2023.5.21
figure(1);
load merge.mat;
epoch=1:1:50;

% plot(epoch,normalization(DS.loss),'-o','Color',[0.93 0.70 0.13], 'Linewidth', 3, 'MarkerSize', 6);
% hold on;
% plot(epoch,normalization(L1.loss),'-<','Color',[0.33 0.40 0.44],'Linewidth', 3, 'MarkerSize', 6);
% plot(epoch,normalization(L2.loss),'->','Color',[0.53 0.73 0.64], 'Linewidth', 3, 'MarkerSize', 6);
% plot(epoch,normalization(smoothL1.loss),'-^','Color',[0.62 0.19 0.31], 'Linewidth', 3, 'MarkerSize', 6);
% plot(epoch,normalization(balancedL1.loss),'-v','Color',[0.90 0.48 0.50],'Linewidth', 3, 'MarkerSize', 6); %线性，颜色，标记
% plot(epoch,normalization(IoU.loss),'-s','Color',[0.73 0.47 0.58], 'Linewidth', 3, 'MarkerSize', 6);
% plot(epoch,normalization(DIoU.loss),'-+','Color',[0.98 0.55 0.39], 'Linewidth', 3, 'MarkerSize', 6);
% plot(epoch,normalization(GIoU.loss),'-p','Color',[0.55 0.63 0.79], 'Linewidth', 3, 'MarkerSize', 6);
% plot(epoch,normalization(CIoU.loss),'-h','Color',[0.23 0.62 0.51], 'Linewidth', 3, 'MarkerSize', 6);

plot(DS.mAP,normalization(DS.loss),'Color',[0.93 0.70 0.13], 'Linewidth', 3,'LineStyle',':');
hold on;
plot((L1.mAP),normalization(L1.loss),'Color',[0.33 0.40 0.44],'Linewidth', 2, 'MarkerSize', 6);
plot((L2.mAP),normalization(L2.loss),'Color',[0.53 0.73 0.64], 'Linewidth', 2, 'MarkerSize', 6);
plot((smoothL1.mAP),normalization(smoothL1.loss),'Color',[0.62 0.19 0.31], 'Linewidth', 2, 'MarkerSize', 6);
plot((balancedL1.mAP),normalization(balancedL1.loss),'Color',[0.90 0.48 0.50],'Linewidth', 2, 'MarkerSize', 6); %线性，颜色，标记
plot((IoU.mAP),normalization(IoU.loss),'Color',[0.73 0.47 0.58], 'Linewidth', 2, 'MarkerSize', 6);
plot((DIoU.mAP),normalization(DIoU.loss),'Color',[0.98 0.55 0.39], 'Linewidth', 2, 'MarkerSize', 6);
plot((GIoU.mAP),normalization(GIoU.loss),'Color',[0.55 0.63 0.79], 'Linewidth', 2, 'MarkerSize', 6);
plot((CIoU.mAP),normalization(CIoU.loss),'Color',[0.23 0.62 0.51], 'Linewidth', 2, 'MarkerSize', 6);

% plot(DS.mAP,normalization(DS.loss),'-o','Color',[0.93 0.70 0.13], 'Linewidth', 3, 'MarkerSize', 6);
% hold on;
% plot((L1.mAP),normalization(L1.loss),'-<','Color',[0.33 0.40 0.44],'Linewidth', 3, 'MarkerSize', 6);
% plot((L2.mAP),normalization(L2.loss),'->','Color',[0.53 0.73 0.64], 'Linewidth', 3, 'MarkerSize', 6);
% plot((smoothL1.mAP),normalization(smoothL1.loss),'-^','Color',[0.62 0.19 0.31], 'Linewidth', 3, 'MarkerSize', 6);
% plot((balancedL1.mAP),normalization(balancedL1.loss),'-v','Color',[0.90 0.48 0.50],'Linewidth', 3, 'MarkerSize', 6); %线性，颜色，标记
% plot((IoU.mAP),normalization(IoU.loss),'-s','Color',[0.73 0.47 0.58], 'Linewidth', 3, 'MarkerSize', 6);
% plot((DIoU.mAP),normalization(DIoU.loss),'-+','Color',[0.98 0.55 0.39], 'Linewidth', 3, 'MarkerSize', 6);
% plot((GIoU.mAP),normalization(GIoU.loss),'-p','Color',[0.55 0.63 0.79], 'Linewidth', 3, 'MarkerSize', 6);
% plot((CIoU.mAP),normalization(CIoU.loss),'-h','Color',[0.23 0.62 0.51], 'Linewidth', 3, 'MarkerSize', 6);

% plot(log(DS.mAP),normalization(DS.loss),'-o','Color',[0.93 0.70 0.13], 'Linewidth', 3, 'MarkerSize', 6);
% hold on;
% plot(log(L1.mAP),normalization(L1.loss),'-<','Color',[0.33 0.40 0.44],'Linewidth', 3, 'MarkerSize', 6);
% plot(log(L2.mAP),normalization(L2.loss),'->','Color',[0.53 0.73 0.64], 'Linewidth', 3, 'MarkerSize', 6);
% plot(log(smoothL1.mAP),normalization(smoothL1.loss),'-^','Color',[0.62 0.19 0.31], 'Linewidth', 3, 'MarkerSize', 6);
% plot(log(balancedL1.mAP),normalization(balancedL1.loss),'-v','Color',[0.90 0.48 0.50],'Linewidth', 3, 'MarkerSize', 6); %线性，颜色，标记
% plot(log(IoU.mAP),normalization(IoU.loss),'-s','Color',[0.73 0.47 0.58], 'Linewidth', 3, 'MarkerSize', 6);
% plot(log(DIoU.mAP),normalization(DIoU.loss),'-+','Color',[0.98 0.55 0.39], 'Linewidth', 3, 'MarkerSize', 6);
% plot(log(GIoU.mAP),normalization(GIoU.loss),'-p','Color',[0.55 0.63 0.79], 'Linewidth', 3, 'MarkerSize', 6);
% plot(log(CIoU.mAP),normalization(CIoU.loss),'-h','Color',[0.23 0.62 0.51], 'Linewidth', 3, 'MarkerSize', 6);

% plot(exp(DS.mAP),normalization(DS.loss),'-o','Color',[0.93 0.70 0.13], 'Linewidth', 3, 'MarkerSize', 6);
% hold on;
% plot(exp(L1.mAP),normalization(L1.loss),'-<','Color',[0.33 0.40 0.44],'Linewidth', 3, 'MarkerSize', 6);
% plot(exp(L2.mAP),normalization(L2.loss),'->','Color',[0.53 0.73 0.64], 'Linewidth', 3, 'MarkerSize', 6);
% plot(exp(smoothL1.mAP),normalization(smoothL1.loss),'-^','Color',[0.62 0.19 0.31], 'Linewidth', 3, 'MarkerSize', 6);
% plot(exp(balancedL1.mAP),normalization(balancedL1.loss),'-v','Color',[0.90 0.48 0.50],'Linewidth', 3, 'MarkerSize', 6); %线性，颜色，标记
% plot(exp(IoU.mAP),normalization(IoU.loss),'-s','Color',[0.73 0.47 0.58], 'Linewidth', 3, 'MarkerSize', 6);
% plot(exp(DIoU.mAP),normalization(DIoU.loss),'-+','Color',[0.98 0.55 0.39], 'Linewidth', 3, 'MarkerSize', 6);
% plot(exp(GIoU.mAP),normalization(GIoU.loss),'-p','Color',[0.55 0.63 0.79], 'Linewidth', 3, 'MarkerSize', 6);
% plot(exp(CIoU.mAP),normalization(CIoU.loss),'-h','Color',[0.23 0.62 0.51], 'Linewidth', 3, 'MarkerSize', 6);
%xlim([0,52])
set(gcf,'Position',get(0,'ScreenSize'))
% set(gca,'XTick',-100:5:100,'fontsize',20,'fontname','Times','FontWeight','bold')
% set(gca,'YTick',-100:0.2:100) 
% set(gca,'XTick',-100:0.05:100,'fontsize',20,'fontname','Times','FontWeight','bold')
% set(gca,'YTick',-100:0.2:100) 
set(gca,'XTick',-100:0.003:100,'fontsize',20,'fontname','Times','FontWeight','bold')
set(gca,'YTick',-100:0.01:100) 
legend('$\bf{DS}$','$\bf{L_1}$','$\bf{L_2}$','$\bf{smoothL_1}$','$\bf{balancedL_1}$','$\bf{IoU}$','$\bf{DIoU}$','$\bf{GIoU}$','$\bf{CIoU}$','interpreter','latex','FontSize', 10.5);   %右上角标注
% xlabel('$\bf{Epoch}$','interpreter','latex','FontSize', 20)
xlabel('$\bf{mAP}$','interpreter','latex','FontSize', 20)
%xlabel('$\bf{Log(mAP)}$','interpreter','latex','FontSize', 20)
%xlabel('$\bf{exp(mAP)}$','interpreter','latex','FontSize', 20)
ylabel('$\bf{Loss(normalized)}$','interpreter','latex','FontSize', 20) %y轴坐标描述
%ylabel('$\bf{Loss}$','interpreter','latex','FontSize', 20)
title({'$\bf{BoundingBoxLoss-mAP}$'}, 'interpreter','latex','FontSize', 22);
set(gca,'XGrid','on','XMinorGrid','off','YGrid','on','YMinorGrid','off','ZGrid','on','ZMinorGrid','off');
% box off
% ax2 = axes('Position',get(gca,'Position'),...
%     'XAxisLocation','top',...
%     'YAxisLocation','right',...
%     'Color','none',...
%     'XColor','k','YColor','k');
% set(ax2,'YTick', []);
% set(ax2,'XTick', []);%去掉右边和上边的刻度
box on

set(gca,'linewidth',1.6);%加粗边框


%% backup
% clf;
% DS=normalization(DS);
% L1=normalization(L1);
% L2=normalization(L2);
% smoothL1=normalization(smoothL1);
% balancedL1=normalization(balancedL1);
% IoUlog=normalization(IoUlog);
% IoUlinear=normalization(IoUlinear);
% IoUsquare=normalization(IoUsquare);
% DIoU=normalization(DIoU);
% GIoU=normalization(GIoU);
% CIoU=normalization(CIoU);
% %% 1
% figure(1);
% plot(mAPds,DS,'-o','Color',[0.93 0.70 0.13], 'Linewidth', 3, 'MarkerSize', 6);hold on;
% plot(mAPl1,L1,'-<','Color',[0.33 0.40 0.44],'Linewidth', 3, 'MarkerSize', 6);
% plot(mAPl2,L2,'->','Color',[0.53 0.73 0.64], 'Linewidth', 3, 'MarkerSize', 6);
% plot(mAPsmtl1,smoothL1,'-^','Color',[0.62 0.19 0.31], 'Linewidth', 3, 'MarkerSize', 6);
% plot(mAPblsl1,balancedL1,'-v','Color',[0.90 0.48 0.50],'Linewidth', 3, 'MarkerSize', 6); %线性，颜色，标记
% %axis([0.48,1.12,50.0,86])  %确定x轴与y轴框图大小
% set(gcf,'Position',get(0,'ScreenSize'))
% set(gca,'XTick',0.2:0.05:0.8,'fontsize',20,'fontname','Times','FontWeight','bold')
% set(gca,'YTick',0.0:0.2:3.8) 
% legend('$\bf{DS}$','$\bf{L1}$','$\bf{L2}$','$\bf{smoothL1}$','$\bf{balancedL1}$','interpreter','latex','FontSize', 10.5);   %右上角标注
% xlabel('$\bf{mAP}$','interpreter','latex','FontSize', 20)  %x轴坐标描述
% ylabel('$\bf{Loss(normalized)}$','interpreter','latex','FontSize', 20) %y轴坐标描述
% title({'$\bf{BoundingBoxLoss-mAP}$'}, 'interpreter','latex','FontSize', 17);
% 
% box off
% ax2 = axes('Position',get(gca,'Position'),...
%     'XAxisLocation','top',...
%     'YAxisLocation','right',...
%     'Color','none',...
%     'XColor','k','YColor','k');
% set(ax2,'YTick', []);
% set(ax2,'XTick', []);%去掉右边和上边的刻度
% box on
% 
% set(gca,'linewidth',2.0);%加粗边框
% 
% %% 2
% figure(2);
% plot(mAPds,DS,'-o','Color',[0.93 0.70 0.13], 'Linewidth', 3, 'MarkerSize', 6);hold on;
% plot(mAPioulog,IoUlog,'-x','Color',[0.28 0.57 0.54], 'Linewidth', 3, 'MarkerSize', 6);
% plot(mAPioulin,IoUlinear,'-s','Color',[0.73 0.47 0.58], 'Linewidth', 3, 'MarkerSize', 6);
% plot(mAPiouqua,IoUsquare,'-d','Color',[0.26 0.45 0.77], 'Linewidth', 3, 'MarkerSize', 6);
% %axis([0.48,1.12,50.0,86])  %确定x轴与y轴框图大小
% set(gcf,'Position',get(0,'ScreenSize'))
% set(gca,'XTick',0.2:0.05:0.8,'fontsize',20,'fontname','Times','FontWeight','bold')
% set(gca,'YTick',0.0:0.2:3.8) 
% legend('$\bf{DS}$','$\bf{IoUlog}$','$\bf{IoUlinear}$','$\bf{IoUsquare}$','interpreter','latex','FontSize', 10.5);   %右上角标注
% xlabel('$\bf{mAP}$','interpreter','latex','FontSize', 20)  %x轴坐标描述
% ylabel('$\bf{Loss(normalized)}$','interpreter','latex','FontSize', 20) %y轴坐标描述
% title({'$\bf{BoundingBoxLoss-mAP}$'}, 'interpreter','latex','FontSize', 17);
% 
% box off
% ax2 = axes('Position',get(gca,'Position'),...
%     'XAxisLocation','top',...
%     'YAxisLocation','right',...
%     'Color','none',...
%     'XColor','k','YColor','k');
% set(ax2,'YTick', []);
% set(ax2,'XTick', []);%去掉右边和上边的刻度
% box on
% 
% set(gca,'linewidth',2.0);%加粗边框
% 
% %% 3
% figure(3);
% plot(mAPds,DS,'-o','Color',[0.93 0.70 0.13], 'Linewidth', 3, 'MarkerSize', 6);hold on;
% plot(mAPdiou,DIoU,'-+','Color',[0.98 0.55 0.39], 'Linewidth', 3, 'MarkerSize', 6);
% plot(mAPgiou,GIoU,'-p','Color',[0.55 0.63 0.79], 'Linewidth', 3, 'MarkerSize', 6);
% plot(mAPciou,CIoU,'-h','Color',[0.23 0.62 0.51], 'Linewidth', 3, 'MarkerSize', 6);
% 
% %axis([0.48,1.12,50.0,86])  %确定x轴与y轴框图大小
% set(gcf,'Position',get(0,'ScreenSize'))
% set(gca,'XTick',0.2:0.05:0.8,'fontsize',20,'fontname','Times','FontWeight','bold')
% set(gca,'YTick',0.0:0.2:3.8) 
% legend('$\bf{DS}$','$\bf{DIoU}$','$\bf{GIoU}$','$\bf{CIoU}$','interpreter','latex','FontSize', 10.5);   %右上角标注
% xlabel('$\bf{mAP}$','interpreter','latex','FontSize', 20)  %x轴坐标描述
% ylabel('$\bf{Loss(normalized)}$','interpreter','latex','FontSize', 20) %y轴坐标描述
% title({'$\bf{BoundingBoxLoss-mAP}$'}, 'interpreter','latex','FontSize', 17);
% 
% box off
% ax2 = axes('Position',get(gca,'Position'),...
%     'XAxisLocation','top',...
%     'YAxisLocation','right',...
%     'Color','none',...
%     'XColor','k','YColor','k');
% set(ax2,'YTick', []);
% set(ax2,'XTick', []);%去掉右边和上边的刻度
% box on
% 
% set(gca,'linewidth',2.0);%加粗边框