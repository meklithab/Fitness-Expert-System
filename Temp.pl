%----------------------Facts-------------------%
% Fitness Goals
goal(weight_loss).
goal(muscle_and_strength_building).

% Fitness Level
level(beginner).
level(intermediate).
level(advanced).

% Equipments Available
equipment(no_equipment).
equipment(equipment).

% Exercises
% Cardio Exercises
exercise(cardio, walking, no_equipment).
exercise(cardio, running, no_equipment).
exercise(cardio, high_intensity_interval_training, no_equipment).
exercise(cardio, aerobics, no_equipment).

exercise(cardio, jump_rope, equipment).
exercise(cardio, cycling, equipment).
exercise(cardio, rowing, equipment).

% Muscle Gain Exercises
exercise(strength, plank, no_equipment).
exercise(strength, push_up, no_equipment).
exercise(strength, burpee, no_equipment).
exercise(strength, tricep_dip, no_equipment).
exercise(strength, lunges, no_equipment).
exercise(strength, calf_raise, no_equipment).
exercise(strength, step_up, no_equipment).

exercise(strength, deadlift, equipment).
exercise(strength, kettlebell_swing, equipment).
exercise(strength, bench_press, equipment).
exercise(strength, bicep_curl, equipment).
exercise(strength, shoulder_press, equipment).
exercise(strength, squat, equipment).

% ----------------------------------Rules----------------------------%

% Select a random exercise based on type (cardio/strength) and equipment
random_exercise(cardio, no_equipment, Exercise) :-
    findall(Exercise, exercise(cardio, Exercise, no_equipment), Exercises),
    random_member(Exercise, Exercises).

random_exercise(cardio, equipment, Exercise) :-
    findall(Exercise, exercise(cardio, Exercise, equipment), Exercises),
    random_member(Exercise, Exercises).

random_exercise(strength, no_equipment, Exercise) :-
    findall(Exercise, exercise(strength, Exercise, no_equipment), Exercises),
    random_member(Exercise, Exercises).

random_exercise(strength, equipment, Exercise) :-
    findall(Exercise, exercise(strength, Exercise, equipment), Exercises),
    random_member(Exercise, Exercises).




% Logics for generating workout plan based on goal,level and equipment
% weight_loss , beginner , noequipment
generate_plan(weight_loss, beginner, no_equipment) :-
    write('Weight-loss - Beginner - No Equipment'), nl,
    write('Mon: 20min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 20min '), random_exercise(cardio, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri Rest day'), nl,
    write('Sat: 20min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

% muscle_and_strength_bulding , beginner , noequipment
generate_plan(muscle_and_strength_building, beginner, no_equipment) :-
    write('Muscle and Strength Building - Beginner - No Equipment'), nl,
    write('Mon: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 20min '), random_exercise(cardio, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri Rest day'), nl,
    write('Sat: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.


%WeightLoss goal, intermediate level, no equipment
generate_plan(weight_loss, intermediate, no_equipment) :-
    write('Weight-loss - Intermediate - No Equipment'), nl,
    write('Mon: 30min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 30min '), random_exercise(cardio, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 30min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

%  muscle_and_strength_building goal, intermediate level, no equipment
generate_plan(muscle_and_strength_building, intermediate, no_equipment) :-
    write('Muscle and Strength Building - Intermediate - No Equipment'), nl,
    write('Mon: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 30min '), random_exercise(cardio, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

% weight_loss goal, advanced level, no equipment
generate_plan(weight_loss, advanced, no_equipment) :-
    write('Weight-loss - Advanced - No Equipment'), nl,
    write('Mon: 40min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 40min '), random_exercise(cardio, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl, % Added Friday rest day
    write('Sat: 40min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

% muscle_and_strength_building goal, advanced level, no equipment
generate_plan(muscle_and_strength_building, advanced, no_equipment) :-
    write('Muscle and Strength Building - Advanced - No Equipment'), nl,
    write('Mon: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 40min '), random_exercise(cardio, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.
% general_fitness , beginner , noequipment
generate_plan(general_fitness, beginner, no_equipment) :-
    write('General Fitness - Beginner - No Equipment'), nl,
    write('Mon: 20min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 20min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.
% general_fitness , intermediate , noequipment
generate_plan(general_fitness, intermediate, no_equipment) :-
    write('General Fitness - Intermediate - No Equipment'), nl,
    write('Mon: 30min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 30min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.
% general_fitness , advanced , noequipment
generate_plan(general_fitness, advanced, no_equipment) :-
    write('General Fitness - Advanced - No Equipment'), nl,
    write('Mon: 40min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 40min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.


% weight_loss goal, beginner level, with equipment
generate_plan(weight_loss, beginner, equipment) :-
    write('Weight-loss - Beginner - With Equipment'), nl,
    write('Mon: 20min '), random_exercise(cardio, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 20min '), random_exercise(cardio, equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 2 sets * 15 '), random_exercise(strength, equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 20min '), random_exercise(cardio, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

% muscle_and_strength_building goal, beginner level, with equipment
generate_plan(muscle_and_strength_building, beginner, equipment) :-
    write('Muscle and Strength Building - Beginner - With Equipment'), nl,
    write('Mon: 2 sets * 15 '), random_exercise(strength, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 2 sets * 15 '), random_exercise(strength, equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 20min '), random_exercise(cardio, equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 2 sets * 15 '), random_exercise(strength, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

% weight_loss goal, intermediate level, with equipment
generate_plan(weight_loss, intermediate, equipment) :-
    write('Weight-loss - Intermediate - With Equipment'), nl,
    write('Mon: 30min '), random_exercise(cardio, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 30min '), random_exercise(cardio, equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 3 sets * 15 '), random_exercise(strength, equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 30min '), random_exercise(cardio, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

%  muscle_and_strength_building goal, intermediate level, with equipment
generate_plan(muscle_and_strength_building, intermediate, equipment) :-
    write('Muscle and Strength Building - Intermediate - With Equipment'), nl,
    write('Mon: 3 sets * 15 '), random_exercise(strength, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 3 sets * 15 '), random_exercise(strength, equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 30min '), random_exercise(cardio, equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl, % Added Friday rest day
    write('Sat: 3 sets * 15 '), random_exercise(strength, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

% weight_loss goal, advanced level, with equipment
generate_plan(weight_loss, advanced, equipment) :-
    write('Weight-loss - Advanced - With Equipment'), nl,
    write('Mon: 40min '), random_exercise(cardio, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 40min '), random_exercise(cardio, equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 4 sets * 15 '), random_exercise(strength, equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 40min '), random_exercise(cardio, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.

% muscle_and_strength_building goal, advanced level, with equipment
generate_plan(muscle_and_strength_building, advanced, equipment) :-
    write('Muscle and Strength Building - Advanced - With Equipment'), nl,
    write('Mon: 4 sets * 15 '), random_exercise(strength, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 4 sets * 15 '), random_exercise(strength, equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 40min '), random_exercise(cardio, equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 4 sets * 15 '), random_exercise(strength, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.
% general_fitness , beginner , equipment
generate_plan(general_fitness, beginner, equipment) :-
    write('General Fitness - Beginner - Equipment'), nl,
    write('Mon: 20min '), random_exercise(cardio, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 20min '), random_exercise(cardio, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.
% general_fitness , intermediate , equipment
generate_plan(general_fitness, intermediate, equipment) :-
    write('General Fitness - Intermediate - Equipment'), nl,
    write('Mon: 30min '), random_exercise(cardio, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 30min '), random_exercise(cardio, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.
% general_fitness , advanced , equipment
generate_plan(general_fitness, advanced, equipment) :-
    write('General Fitness - Advanced - Equipment'), nl,
    write('Mon: 40min '), random_exercise(cardio, equipment, Exercise1), write(Exercise1), nl,
    write('Tue: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 40min '), random_exercise(cardio, equipment, Exercise4), write(Exercise4), nl,
    write('Sun: Rest day'), nl.





%User Interaction
ask_goal(Goal) :-
    write('What is your fitness goal (Options: weight_loss, muscle_and_strength_building)?'), nl,
    read(Input),
    ( goal(Input) -> Goal = Input
    ; write('Invalid goal! Please try again.'), nl, ask_goal(Goal)
    ).

ask_level(Level) :-
    write('What is your fitness level (Options: beginner, intermediate, advanced)?'), nl,
    read(Input),
    ( level(Input) -> Level = Input
    ; write('Invalid level! Please try again.'), nl, ask_level(Level)
    ).

ask_equipment(Equipment) :-
    write('Do you have access to equipments? (Options: no_equipment, equipment?'), nl,
    read(Input),
    ( equipment(Input) -> Equipment = Input
    ; write('Invalid equipment! Please try again.'), nl, ask_equipment(Equipment)
    ).


generate_fitness_plan :-
    write('Welcome to the Fitness Expert System!'), nl,
    write('This system will help you create a personalized weekly fitness plan based on your goals, fitness level, and available equipment.'), nl,
    write('Please provide the following information to get started:'), nl,
    ask_goal(Goal),
    ask_level(Level),
    ask_equipment(Equipment),
    write("Inputs: "), write([Goal, Level, Equipment]), nl,
    write("Generating this week's fitness plan..."), nl,
    generate_plan(Goal, Level, Equipment),   % Call generate_plan with the gathered inputs
    nl, write('Done!').


