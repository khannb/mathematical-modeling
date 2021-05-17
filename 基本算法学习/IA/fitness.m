function fit=fitness(individual_index)
%计算个体适应度值
%individual_index     input    单个个体的下标
%fit                  output   适应度值
%城市坐标
city_coordinate=[1304 2312;3639 1315;4177 2244;3712 1399;3488 1535;3326 1556;...
    3238 1229;4196 1044;4312 790;4386 570;3007 1970;2562 1756;...
    2788 1491;2381 1676;1332 695;3715 1678;3918 2179;4061 2370;...
    3780 2212;3676 2578;4029 2838;4263 2931;3429 1908;3507 2376;...
    3394 2643;3439 3201;2935 3240;3140 3550;2545 2357;2778 2826;...
    2370 2975];
%货物量
carge=[20,90,90,60,70,70,40,90,90,70,60,40,40,40,20,80,90,70,100,50,50,50,80,70,80,40,40,60,70,50,30];
%计算每个顶点到序列中每个点的距离
%下面的操作建议在matlab命令行下进行手动模拟和理解
for i=1:31
    distance(i,:)=dist(city_coordinate(i,:),city_coordinate(individual_index,:)');
end
%找出最近的配货点的距离
a=min(distance');
%计算费用
for i=1:31
    expense(i)=carge(i)*a(i);
end
%距离大于3000取一个惩罚值
fit=sum(expense)+(4.0e+4)*length(find(a>3000));
end


