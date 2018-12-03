1. function  auc = plot_roc( predict, ground_truth )  
2.  % INPUTS  
3.  %  predict       - 分类器对测试集的分类结果  
4.  %  ground_truth - 测试集的正确标签,这里只考虑二分类，即0和1  
5.  % OUTPUTS  
6.  %  auc            - 返回ROC曲线的曲线下的面积  
7.    
8.  %初始点为（1.0, 1.0）  
9.  x = 1.0;  
10.  y = 1.0;  
11.  %计算出ground_truth中正样本的数目pos_num和负样本的数目neg_num  
12.  pos_num = sum(ground_truth==1);  
13.  neg_num = sum(ground_truth==0);  
14.  %根据该数目可以计算出沿x轴或者y轴的步长  
15.  x_step = 1.0/neg_num;  
16.  y_step = 1.0/pos_num;  
17.  %首先对predict中的分类器输出值按照从小到大排列  
18.  [predict,index] = sort(predict);  
19.  ground_truth = ground_truth(index);  
20.  %对predict中的每个样本分别判断他们是FP或者是TP  
21.  %遍历ground_truth的元素，  
22.  %若ground_truth[i]=1,则TP减少了1，往y轴方向下降y_step  
23.  %若ground_truth[i]=0,则FP减少了1，往x轴方向下降x_step  
24.  for i=1:length(ground_truth)  
25.      if ground_truth(i) == 1  
26.          y = y - y_step;  
27.      else  
28.          x = x - x_step;  
29.      end  
30.      X(i)=x;  
31.      Y(i)=y;  
32.  end  
33.  %画出图像       
34.  plot(X,Y,'-ro','LineWidth',2,'MarkerSize',3);  
35.  xlabel('虚报概率');  
36.  ylabel('击中概率');  
37.  title('ROC曲线图');  
38.  %计算小矩形的面积,返回auc  
39.  auc = -trapz(X,Y);            
40.  end  
