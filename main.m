data = xlsread("data.xlsx",4);

[i,j] = find(isnan(data));
data(i,j) = 0;

%一阶差分
for i = 1:size(data,1)
    for j =1:size(data,2)-1
       trend(i,j) =  data(i,j+1) - data(i,j);
    end
end

[center,U] = fcm(trend,2);
kmeans_result = kmeans(trend,2);

[~,k] = max(  U(1,:) - U(2,:) );
[~,m] = min(  U(1,:) - U(2,:) );

%判别准则
MAX_k =  sum( ( data(k,:) - mean(data(k,:)) ).^2);
MIN_m =  sum( (data(m,:) - mean(data(m,:))  ).^2);
[~,idx] = max(U(:,k));
fprintf('出现羊群效应的那一类是第%d类\n',idx)
% xlswrite('第四周股票羊群效应.xlsx',U')
% xlswrite('kmeans第四周股票羊群效应.xlsx',kmeans_result)

% 计算每周出现羊群效应数
% week_fcm = [2255 2070 2087 1992];
% week_kmeans = [2427 2015 2040 1848];
length( find( U(1,:)>U(2,:)  ) )
length( find( kmeans_result ==1 ) )

figure(1)
hold on
plot(1:length(week_kmeans),week_kmeans,'-s','linewidth',2)
plot(1:length(week_fcm),week_fcm,'-o','linewidth',2)
xlabel("周")
ylabel("判断为出现羊群效应的股票个数")
legend("kmeans","FCM")