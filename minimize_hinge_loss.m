function w = minimize_hinge_loss(X, Y, w0)

num_iters = 100;
eta = .01;
losses = zeros(num_iters, 1);

% meshgrid for visualization
xrange = linspace(min(X(:,1)), max(X(:,1)), 100);
yrange =  linspace(min(X(:,2)), max(X(:,2)), 100);
[xs,ys] =meshgrid(xrange, yrange);


w = w0;
for iter=1:num_iters
    % visualize the boundary on data
    hold off;
    z = [xs(:) ys(:) ones(numel(xs),1)]*w;
    z = reshape(z, size(xs));
    imagesc(xrange, yrange, z<0);
    hold on
    plot(X(Y==1,1), X(Y==1,2), 'bo');
    plot(X(Y==-1,1), X(Y==-1,2), 'ro');
    pause(.1);
    
    % compute hinge loss
    loss = max(0,1-Y.*(X*w));
    losses(iter) = sum(loss);
    
    
    % violators (those with non-zero gradients)
    non_zeros = loss>0;
    
    % the (sub-)gradient
    g = sum(-bsxfun(@times, Y(non_zeros), X(non_zeros,:)),1);
    
    % take a step in the opposite gradient direction
    w = w - eta*g';
end
figure, plot(losses);
xlabel('iterations');
ylabel('loss');