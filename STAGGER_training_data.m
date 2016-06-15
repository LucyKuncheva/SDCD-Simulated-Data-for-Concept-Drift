% Generates the STAGGER training data
V = [repmat([1 0 0],40,1);repmat([0 1 0],40,1);repmat([0 0 1],40,1)];
[a,laba] = simulation_changing_environment('p_stagger',V);