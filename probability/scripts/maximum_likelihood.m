% 最尤推定

% 試行においてと, n 回中 x 回表が出るとき
n=10;
x=7;

b=0:0.01:1;

% L(b;x) = nCx * b^x (1-b)^(n-x)
logL=nchoosek(n,x)*b.^x.*(1-b).^(n-x);
plot(b, logL);
xlabel('b');
ylabel('log likelihood')

% 最大値を求める
[M, I] = max(logL);

% 最大となる x の値
argM = b(I);
