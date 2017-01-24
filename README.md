# Hige Loss 

<img src="math/hg.png" width="700" height="90" />

Support vector machine and many maximum margin based models use the hinge loss.

Also, rectified linear units (ReLU) use a form the hinge function:
> When zi is linear in model parameters, then Hinge loss is convex in model parameters.

To minimize the following cost function:

<img src="math/hg2.png" width="300" height="50" />

Max() is not differentiable, so no gradient.But, we can use its subgradient (or
subderivative). Subderivative generalizes the derivative to nondifferentiable functions such as max(). 

This now becomes:

<img src="math/subg.png" width="500" height="300" />


Matlab implemetation of hige loss function

Execute the main file. 
```sh
>> main.m
```

Below is a smaple output for linear separable data


Loss:


<img src="loss.png" width="400" height="250" />

Visualise linear seperation:


<img src="vs.png" width="400" height="250" />
