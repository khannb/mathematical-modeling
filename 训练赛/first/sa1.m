clc,clear
x3=[26 5 8 10 13 17 20 25 31 35 36 41 45 3];
y3=[31 33 9 24 34 23 10 47 18 42 25 31 38 41];
xy3=[x3;y3];
d3=dist(xy3);%求两点之间的距离
d3=tril(d3);%截取下三角矩阵
b3=sparse(d3)%转化为稀疏矩阵
[ST3,pred1]=graphminspantree(b3,'Method','Kruskal')%调用最小生成树的命令
st3=full(ST3);%转化为普通矩阵
TreeLength1=sum(sum(st3));%求最小生成树的长度
x4=[200 5 8 10 13 17 20 25 31 35 36 41 45 41 40 38 38 33 31 33 28 24 21 22 28 43 44 25 21 22 24 37 38 37 14 16 14 18 12 15 20 13 16 21 26 28 27 29 29 36 41 39 27 23 20 16 22 40 42 37 35 35 35 34 26 27 31 31 31 28 27 24 26 13 17 21 18 21 13 14 12 10 16 18 24 25 24 24 21 17 10 9 7 4 5 2 7 7 1 2 3 2 4 5 6 9 2 7 3 10 17 20 24 22 21 27 26 9 12 14 19 14 13 9 2 6 7 6 5 5 16 26 29 31 28 20 17 15 21 24 26 25 15 15 10 38 37 33 40 44 41 33 32 40 42 45 29 31 30 31 35 40 40 37 35 43 45 37 35 33 37 39 41 43 47 46 42 48 42 43];
y4=[200 33 9 24 34 23 10 47 18 42 25 31 38 35 34 35 37 37 36 35 32 30 31 27 29 37 39 27 29 30 32 33 33 36 13 9 7 14 6 14 13 46 39 39 44 40 42 38 44 44 40 52 49 46 46 46 44 44 40 42 49 51 52 55 53 51 51 45 41 45 35 38 39 37 36 41 41 43 39 43 43 44 44 44 44 49 49 51 48 51 34 35 37 37 42 44 32 30 24 16 18 20 24 28 24 29 33 34 30 36 34 22 21 17 16 19 16 16
17 15 26 28 25 19 1 6 8 14 17 16 19 13 11 14 17 19 22 23 23 23 23 25 31 29 28 26 25 21 24 44 31 24 27 14 26 33 23 30 25 23 15 16 20 20 24 23 26 28 28 29 30 30 29 31 34 43 43 45 44 50];
n=2;
xy4=[x4;y4];
d4=dist(xy4);%求两点之间的距离
d4=tril(d4);%截取下三角矩阵
while n<=13
d4(n,1)=0.000001;
n=n+1;
end
d4(110,1)=0.000001;
d4(152,12)=0.000001;
b2=sparse(d4);%转化为稀疏矩阵
[ST2,pred2]=graphminspantree(b2,'Method','Kruskal');%调用最小生成树的命令
st2=full(ST2);%转化为普通矩阵
TreeLength2=sum(sum(st2));%求最小生成树的长度
TreeLength3=TreeLength2+TreeLength1;

