# SDCD-Simulated-Data-for-Concept-Drift
A MATLAB collection of scripts and functions for generating artificial data with concept drift

The collection contains the following files:


* functions

`simulation_changing_environment.m`

`[A,LABA] = simulation_changing_environment(P, V)`

This function returns a data set A with N points and a label vector LABA. V is an array with probabilities of size N-by-K, where K is the number of sources to sample from. The rows of V, V(i,:) are the mixing proportions of the K sources (each row of V sums up to 1). P is a user-defined function called as `[X,LABX] = P(i)`, which samples once from data source i and returns point X with its label.


`p_stagger.m`

This function samples one point (=instance, =example) from the STAGGER data problem, widely used as a benchmark artificial dataset for changing environments.


`p_hyperplane2d.m`

This function can be used as input in `simulation_changing_environment` in order to generate the "moving hyperplane data" in 2d, often used as benchmark. Point x returned by the function lies in the square [-1,+1]-by-[-1,+1]. There are two classes with equal prior probabilities. The data on one side of the hyperplane are labelled as class 1 and on the other side as class 2.


`p_gaussian2d_4components.m`

This function can be used in `simulation_changing_environment`. It samples a point from a 2-dimensional mixture of 4 equiprobable Gaussian clusters, and labels the point into one of 2 classes. (See `Gaussian_2d_demo.m`)


`p_gaussians_3class_changing_variance.m`

This function can be used in `simulation_changing_environment`. It samples a point from 3 Gaussian classes with static means and changing variances. (See `Gaussian_3class_demo.m`)


* demos (scripts):

`Gaussian_2d_demo.m`

`Gaussian_3class_demo.m`

`Moving_hyperplane_2d_demo.m`

`STAGGER_training_data.m` This is an example of using the simulation framework for generating the STAGGER data



More detailed information is available here: http://pages.bangor.ac.uk/~mas00a/EPSRC_simulation_framework/changing_environments_stage1a.htm 

-------------- 

Source: Narasimhamurthy A., L.I. Kuncheva, A framework for generating data to simulate changing environments, Proc. IASTED, Artificial Intelligence and Applications, Innsbruck, Austria, 2007, 384-389.

pdf available here: http://pages.bangor.ac.uk/~mas00a/papers/anlkAIA07.pdf

bibtex entry:
@INPROCEEDINGS{Narasimhamurthy07,
author = {A. Narasimhamurthy and L. I. Kuncheva},
title = {A framework for generating data to simulate changing environments},
booktitle = {Proc. {IASTED}, Artificial Intelligence and Applications},
year = {2007},
pages = {384-389},
address = {Innsbruck, Austria}
}





