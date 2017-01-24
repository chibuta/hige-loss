% create dataset
[X,Y] = create_2D_data(500,.02);

% augment dataset with 1s
X = [X ones(size(X,1),1)];

% minimize hinge loss
minimize_hinge_loss(X, Y, [10 5 -1]');