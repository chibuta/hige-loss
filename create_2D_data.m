%
%Credits to Prof. Emra on his Deep Learning course at METU
function [x,y] = create_2D_data(N, sig)

x1 = mvnrnd([0 0]',sig*[1 0 ; 0 1],N);
x2 = mvnrnd([1 1]',sig*[1 0 ; 0 1],N);

figure
plot(x1(:,1), x1(:,2), 'b.')
hold on
plot(x2(:,1), x2(:,2), 'r.')

x = [x1;x2];
y = [ones(N,1) ; -ones(N,1)];
