%----------------------Facts-------------------%
% Fitness Goals
goal(weight_loss).
goal(muscle_and_strength_building).
goal(general_fitness).

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
exercise(cardio, jumping_jacks, no_equipment).
exercise(cardio, high_knees, no_equipment).
exercise(cardio, kick_boxing, no_equipment).

exercise(cardio, jump_rope, equipment).
exercise(cardio, cycling, equipment).
exercise(cardio, rowing, equipment).
exercise(cardio, treadmill_running, equipment).
exercise(cardio, elliptical_training, equipment).

% Muscle Gain Exercises
exercise(strength, plank, no_equipment).
exercise(strength, push_up, no_equipment).
exercise(strength, burpee, no_equipment).
exercise(strength, tricep_dip, no_equipment).
exercise(strength, lunges, no_equipment).
exercise(strength, calf_raise, no_equipment).
exercise(strength, step_up, no_equipment).
exercise(strength, squat, no_equipment).
exercise(strength, bicycle_crunch, no_equipment).
exercise(strength, russian_twist, no_equipment).

exercise(strength, deadlift, equipment).
exercise(strength, kettlebell_swing, equipment).
exercise(strength, bench_press, equipment).
exercise(strength, bicep_curl, equipment).
exercise(strength, shoulder_press, equipment).
exercise(strength, bulgurian_split_squat, equipment).
exercise(strength, barbell_back_squat, equipment).
exercise(strength, goblet_squat, equipment).
exercise(strength, cable_crunch, equipment).
exercise(strength, ab_roller, equipment).



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
% weight_loss , beginner , no_equipment
generate_plan(weight_loss, beginner, no_equipment) :-
    write('Weight-loss - Beginner - No Equipment'), nl,
    write('Mon: 10min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1),
    write(", 10min "), random_exercise(cardio, no_equipment, Exercise11), write(Exercise11),
    write(", 5min "), random_exercise(cardio, no_equipment, Exercise12), write(Exercise12),
    write(", 5min "), random_exercise(cardio, no_equipment, Exercise13), write(Exercise13), nl,
    write('Tue: 10min '), random_exercise(cardio, no_equipment, Exercise2), write(Exercise2),
    write(", 10min "), random_exercise(cardio, no_equipment, Exercise21), write(Exercise21),
    write(", 5min "), random_exercise(cardio, no_equipment, Exercise22), write(Exercise22), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3),
    write(", 1 set * 10 "), random_exercise(strength, no_equipment, Exercise31), write(Exercise31),
    write(", 2 sets * 10 "), random_exercise(strength, no_equipment, Exercise32), write(Exercise32),
    write(", 1 set * 12 "), random_exercise(strength, no_equipment, Exercise33), write(Exercise33), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 10min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4),
    write(", 10min "), random_exercise(cardio, no_equipment, Exercise41), write(Exercise41),
    write(", 5min "), random_exercise(cardio, no_equipment, Exercise42), write(Exercise42), nl,
    write('Sun: Rest day'), nl.

% muscle_and_strength_bulding , beginner , noequipment
generate_plan(muscle_and_strength_building, beginner, no_equipment) :-
    write('Muscle and Strength Building - Beginner - No Equipment'), nl,
    write('Mon: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise1), write(Exercise1),
    write(', 1 set * 10 '), random_exercise(strength, no_equipment, Exercise11), write(Exercise11),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise12), write(Exercise12), nl,
    write('Tue: 3 sets * 12 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2),
    write(', 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise21), write(Exercise21), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 20min '), random_exercise(cardio, no_equipment, Exercise3), write(Exercise3),
    write(', 10min '), random_exercise(cardio, no_equipment, Exercise31), write(Exercise31),
    write(', 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise32), write(Exercise32),
    write(', 1 set * 12 '), random_exercise(strength, no_equipment, Exercise33), write(Exercise33), nl,
    write('Fri Rest day'), nl,
    write('Sat: 2 sets * 15 '), random_exercise(strength, no_equipment, Exercise4), write(Exercise4),
    write(', 1 set * 12 '), random_exercise(strength, no_equipment, Exercise41), write(Exercise41),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise42), write(Exercise42), nl,
    write('Sun: Rest day'), nl.

%WeightLoss goal, intermediate level, no equipment
generate_plan(weight_loss, intermediate, no_equipment) :-
    write('Weight-loss - Intermediate - No Equipment'), nl,
    write('Mon: 20min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise11), write(Exercise11),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise12), write(Exercise12), nl,

    write('Tue: 20min '), random_exercise(cardio, no_equipment, Exercise2), write(Exercise2),
    write(', 10min '), random_exercise(cardio, no_equipment, Exercise21), write(Exercise21),
    write(', 1 set * 12 '), random_exercise(strength, no_equipment, Exercise22), write(Exercise22), nl,

    write('Wed: Rest day'), nl,

    write('Thu: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise31), write(Exercise31),
    write(', 1 set * 12 '), random_exercise(strength, no_equipment, Exercise32), write(Exercise32), nl,

    write('Fri: Rest day'), nl,

    write('Sat: 20min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4),
    write(', 10min '), random_exercise(cardio, no_equipment, Exercise41), write(Exercise41),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise42), write(Exercise42), nl,

    write('Sun: Rest day'), nl.
% Muscle and Strength Building goal, intermediate level, no equipment
generate_plan(muscle_and_strength_building, intermediate, no_equipment) :-
    write('Muscle and Strength Building - Intermediate - No Equipment'), nl,
    write('Mon: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise1), write(Exercise1),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise11), write(Exercise11),
    write(', 1 set * 12 '), random_exercise(strength, no_equipment, Exercise12), write(Exercise12), nl,

    write('Tue: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise21), write(Exercise21),
    write(', 1 set * 12 '), random_exercise(strength, no_equipment, Exercise22), write(Exercise22), nl,

    write('Wed: Rest day'), nl,

    write('Thu: 20min '), random_exercise(cardio, no_equipment, Exercise3), write(Exercise3),
    write(', 10min '), random_exercise(cardio, no_equipment, Exercise31), write(Exercise31),
    write(', 10min '), random_exercise(cardio, no_equipment, Exercise32), write(Exercise32), nl,

    write('Fri: Rest day'), nl,

    write('Sat: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise4), write(Exercise4),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise41), write(Exercise41),
    write(', 1 set * 12 '), random_exercise(strength, no_equipment, Exercise42), write(Exercise42), nl,

    write('Sun: Rest day'), nl.


% weight_loss goal, advanced level, no equipment
generate_plan(weight_loss, advanced, no_equipment) :-
    write('Weight-loss - Advanced - No Equipment'), nl,
    write('Mon: 15min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise11), write(Exercise11),
    write(', 20min '), random_exercise(cardio, no_equipment, Exercise12), write(Exercise12), nl,
    write('Tue: 15min '), random_exercise(cardio, no_equipment, Exercise2), write(Exercise2),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise21), write(Exercise21),
    write(', 20min '), random_exercise(cardio, no_equipment, Exercise22), write(Exercise22), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3),
    write(', 4 sets * 12 '), random_exercise(strength, no_equipment, Exercise31), write(Exercise31),
    write(', 3 sets * 10 '), random_exercise(strength, no_equipment, Exercise32), write(Exercise32),
    write(', 2 sets * 12 '), random_exercise(strength, no_equipment, Exercise33), write(Exercise33), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 15min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise41), write(Exercise41),
    write(', 20min '), random_exercise(cardio, no_equipment, Exercise42), write(Exercise42), nl,
    write('Sun: Rest day'), nl.

% muscle_and_strength_building goal, advanced level, no equipment
generate_plan(muscle_and_strength_building, advanced, no_equipment) :-
    write('Muscle and Strength Building - Advanced - No Equipment'), nl,
    write('Mon: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise1), write(Exercise1),
    write(', 3 sets * 12 '), random_exercise(strength, no_equipment, Exercise11), write(Exercise11),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise12), write(Exercise12),
    write(', 1 set * 8 '), random_exercise(strength, no_equipment, Exercise13), write(Exercise13), nl,
    write('Tue: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2),
    write(', 3 sets * 12 '), random_exercise(strength, no_equipment, Exercise21), write(Exercise21),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise22), write(Exercise22),
    write(', 1 set * 8 '), random_exercise(strength, no_equipment, Exercise23), write(Exercise23), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 15min '), random_exercise(cardio, no_equipment, Exercise3), write(Exercise3),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise31), write(Exercise31),
    write(', 20min '), random_exercise(cardio, no_equipment, Exercise32), write(Exercise32), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise4), write(Exercise4),
    write(', 3 sets * 12 '), random_exercise(strength, no_equipment, Exercise41), write(Exercise41),
    write(', 2 sets * 10 '), random_exercise(strength, no_equipment, Exercise42), write(Exercise42),
    write(', 1 set * 8 '), random_exercise(strength, no_equipment, Exercise43), write(Exercise43), nl,
    write('Sun: Rest day'), nl.





% general_fitness , beginner , no_equipment
generate_plan(general_fitness, beginner, no_equipment) :-
    write('General Fitness - Beginner - No Equipment'), nl,
    write('Mon: 10min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise11), write(Exercise11), nl,
    write('Tue: 2 sets * 12 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2),
    write(', 2 sets * 12 '), random_exercise(strength, no_equipment, Exercise21), write(Exercise21),
    write(', 2 sets * 12 '), random_exercise(strength, no_equipment, Exercise22), write(Exercise22), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 2 sets * 12 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3),
    write(', 2 sets * 12 '), random_exercise(strength, no_equipment, Exercise31), write(Exercise31),
    write(', 2 sets * 12 '), random_exercise(strength, no_equipment, Exercise32), write(Exercise32), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 10min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4),
    write(', 15min '), random_exercise(cardio, no_equipment, Exercise41), write(Exercise41), nl,
    write('Sun: Rest day'), nl.

% general_fitness , intermediate , no_equipment
generate_plan(general_fitness, intermediate, no_equipment) :-
    write('General Fitness - Intermediate - No Equipment'), nl,
    write('Mon: 15min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1),
    write(', 20min '), random_exercise(cardio, no_equipment, Exercise11), write(Exercise11), nl,
    write('Tue: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2),
    write(', 3 sets * 12 '), random_exercise(strength, no_equipment, Exercise21), write(Exercise21),
    write(', 3 sets * 18 '), random_exercise(strength, no_equipment, Exercise22), write(Exercise22), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 3 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3),
    write(', 3 sets * 12 '), random_exercise(strength, no_equipment, Exercise31), write(Exercise31),
    write(', 3 sets * 18 '), random_exercise(strength, no_equipment, Exercise32), write(Exercise32), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 15min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4),
    write(', 20min '), random_exercise(cardio, no_equipment, Exercise41), write(Exercise41), nl,
    write('Sun: Rest day'), nl.

% general_fitness , advanced , no_equipment
generate_plan(general_fitness, advanced, no_equipment) :-
    write('General Fitness - Advanced - No Equipment'), nl,
    write('Mon: 20min '), random_exercise(cardio, no_equipment, Exercise1), write(Exercise1),
    write(', 25min '), random_exercise(cardio, no_equipment, Exercise11), write(Exercise11), nl,
    write('Tue: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise2), write(Exercise2),
    write(', 4 sets * 12 '), random_exercise(strength, no_equipment, Exercise21), write(Exercise21),
    write(', 4 sets * 20 '), random_exercise(strength, no_equipment, Exercise22), write(Exercise22),
    write(', 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise23), write(Exercise23), nl,
    write('Wed: Rest day'), nl,
    write('Thu: 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise3), write(Exercise3),
    write(', 4 sets * 12 '), random_exercise(strength, no_equipment, Exercise31), write(Exercise31),
    write(', 4 sets * 20 '), random_exercise(strength, no_equipment, Exercise32), write(Exercise32),
    write(', 4 sets * 15 '), random_exercise(strength, no_equipment, Exercise33), write(Exercise33), nl,
    write('Fri: Rest day'), nl,
    write('Sat: 20min '), random_exercise(cardio, no_equipment, Exercise4), write(Exercise4),
    write(', 25min '), random_exercise(cardio, no_equipment, Exercise41), write(Exercise41), nl,
    write('Sun: Rest day'), nl.

% weight_loss, beginner, with equipment
generate_plan(weight_loss, beginner, equipment) :-
    write('Weight-loss - Beginner - With Equipment'), nl,
    write('Mon: '),
    random_exercise(cardio, equipment, Exercise1), write('10min '), write(Exercise1), write(', '),
    random_exercise(cardio, no_equipment, Exercise11), write('15min '), write(Exercise11), write(', '),
    random_exercise(cardio, equipment, Exercise12), write('10min '), write(Exercise12),nl,
    write('Tue: '),
    random_exercise(cardio, equipment, Exercise2), write('12min '), write(Exercise2), write(', '),
    random_exercise(cardio, no_equipment, Exercise21), write('13min '), write(Exercise21), write(', '),
    random_exercise(cardio, equipment, Exercise22), write('10min '), write(Exercise22), nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(strength, no_equipment, Exercise3), write('3 sets * 12 '), write(Exercise3), write(', '),
    random_exercise(strength, equipment, Exercise31), write('2 sets * 15 '), write(Exercise31), write(', '),
    random_exercise(strength, equipment, Exercise32), write('3 sets * 10 '), write(Exercise32), write(', '),
    random_exercise(strength, no_equipment, Exercise33), write('2 sets * 12 '), write(Exercise33), write(', '),
    random_exercise(strength, equipment, Exercise34), write('2 sets * 10 '), write(Exercise34), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(cardio, equipment, Exercise4), write('10min '), write(Exercise4), write(', '),
    random_exercise(cardio, no_equipment, Exercise41), write('10min '), write(Exercise41),nl,
    write('Sun: Rest day'), nl.


% Weight Loss goal, beginner level, with equipment
generate_plan(weight_loss, beginner, equipment) :-
    write('Weight-loss - Beginner - With Equipment'), nl,
    write('Mon: '),
    random_exercise(cardio, equipment, Exercise1), write('10min '), write(Exercise1), write(', '),
    random_exercise(cardio, no_equipment, Exercise11), write('15min '), write(Exercise11), nl,
    write('Tue: '),
    random_exercise(cardio, equipment, Exercise2), write('12min '), write(Exercise2), write(', '),
    random_exercise(cardio, no_equipment, Exercise21), write('13min '), write(Exercise21),nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(strength, no_equipment, Exercise3), write('3 sets * 12 '), write(Exercise3), write(', '),
    random_exercise(strength, equipment, Exercise31), write('2 sets * 15 '), write(Exercise31), write(', '),
    random_exercise(strength, equipment, Exercise32), write('3 sets * 10 '), write(Exercise32), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(cardio, equipment, Exercise4), write('10min '), write(Exercise4), write(', '),
    random_exercise(cardio, no_equipment, Exercise41), write('10min '), write(Exercise41), write(', '),
    random_exercise(cardio, no_equipment, Exercise42), write('5min '), write(Exercise42), nl,
    write('Sun: Rest day'), nl.

% Muscle and Strength Building goal, beginner level, with equipment
generate_plan(muscle_and_strength_building, beginner, equipment) :-
    write('Muscle and Strength Building - Beginner - With Equipment'), nl,
    write('Mon: '),
    random_exercise(strength, equipment, Exercise1), write('1 set * 12 '), write(Exercise1), write(', '),
    random_exercise(strength, equipment, Exercise11), write('2 sets * 15 '), write(Exercise11), write(', '),
    random_exercise(strength, no_equipment, Exercise12), write('2 sets * 10 '), write(Exercise12), nl,
    write('Tue: '),
    random_exercise(strength, equipment, Exercise2), write('3 sets * 12 '), write(Exercise2), write(', '),
    random_exercise(strength, no_equipment, Exercise21), write('1 set * 10 '), write(Exercise21), write(', '),
    random_exercise(strength, equipment, Exercise22), write('2 sets * 15 '), write(Exercise22), nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(cardio, equipment, Exercise3), write('10min '), write(Exercise3), write(', '),
    random_exercise(cardio, no_equipment, Exercise31), write('15min '), write(Exercise31),nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(strength, no_equipment, Exercise4), write('1 set * 10 '), write(Exercise4), write(', '),
    random_exercise(strength, no_equipment, Exercise41), write('1 set * 12 '), write(Exercise41), write(', '),
    random_exercise(strength, equipment, Exercise42), write('2 sets * 15 '), write(Exercise42), nl,
    write('Sun: Rest day'), nl.

% Weight-loss goal, intermediate level, with equipment
generate_plan(weight_loss, intermediate, equipment) :-
    write('Weight-loss - Intermediate - With Equipment'), nl,
    write('Mon: '),
    random_exercise(cardio, equipment, Exercise1), write('15min '), write(Exercise1), write(', '),
    random_exercise(cardio, no_equipment, Exercise11), write('10min '), write(Exercise11), write(', '),
    random_exercise(cardio, equipment, Exercise12), write('15min '), write(Exercise12), nl,
    write('Tue: '),
    random_exercise(cardio, no_equipment, Exercise2), write('15min '), write(Exercise2), write(', '),
    random_exercise(cardio, equipment, Exercise21), write('10min '), write(Exercise21), write(', '),
    random_exercise(cardio, no_equipment, Exercise22), write('10min '), write(Exercise22), nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(strength, equipment, Exercise3), write('3 sets * 12 '), write(Exercise3), write(', '),
    random_exercise(strength, equipment, Exercise31), write('3 sets * 15 '), write(Exercise31), write(', '),
    random_exercise(strength, no_equipment, Exercise32), write('2 sets * 20 '), write(Exercise32), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(cardio, no_equipment, Exercise4), write('15min '), write(Exercise4), write(', '),
    random_exercise(cardio, equipment, Exercise41), write('20min '), write(Exercise41),nl,
    write('Sun: Rest day'), nl.

% Muscle and Strength Building goal, intermediate level, with equipment
generate_plan(muscle_and_strength_building, intermediate, equipment) :-
    write('Muscle and Strength Building - Intermediate - With Equipment'), nl,
    write('Mon: '),
    random_exercise(strength, equipment, Exercise1), write('3 sets * 12 '), write(Exercise1), write(', '),
    random_exercise(strength, no_equipment, Exercise11), write('3 sets * 15 '), write(Exercise11), write(', '),
    random_exercise(strength, no_equipment, Exercise12), write('2 sets * 20 '), write(Exercise12), nl,
    write('Tue: '),
    random_exercise(strength, no_equipment, Exercise2), write('3 sets * 12 '), write(Exercise2), write(', '),
    random_exercise(strength, equipment, Exercise21), write('3 sets * 10 '), write(Exercise21), write(', '),
    random_exercise(strength, equipment, Exercise22), write('2 sets * 15 '), write(Exercise22), nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(cardio, no_equipment, Exercise3), write('15min '), write(Exercise3), write(', '),
    random_exercise(cardio, equipment, Exercise31), write('10min '), write(Exercise31), write(', '),
    random_exercise(cardio, no_equipment, Exercise32), write('10min '), write(Exercise32), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(strength, equipment, Exercise4), write('3 sets * 12 '), write(Exercise4), write(', '),
    random_exercise(strength,no_equipment, Exercise41), write('3 sets * 15 '), write(Exercise41), write(', '),
    random_exercise(strength, equipment, Exercise42), write('2 sets * 20 '), write(Exercise42), nl,
    write('Sun: Rest day'), nl.


% Weight-loss goal, advanced level, with equipment
generate_plan(weight_loss, advanced, equipment) :-
    write('Weight-loss - Advanced - With Equipment'), nl,
    write('Mon: '),
    random_exercise(cardio, equipment, Exercise1), write('15min '), write(Exercise1), write(', '),
    random_exercise(cardio, no_equipment, Exercise11), write('20min '), write(Exercise11), write(', '),
    random_exercise(cardio, equipment, Exercise12), write('15min '), write(Exercise12),nl,
    write('Tue: '),
    random_exercise(cardio, no_equipment, Exercise2), write('15min '), write(Exercise2), write(', '),
    random_exercise(cardio, equipment, Exercise21), write('10min '), write(Exercise21), write(', '),
    random_exercise(cardio, no_equipment, Exercise22), write('10min '), write(Exercise22),nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(strength, equipment, Exercise3), write('4 sets * 12 '), write(Exercise3), write(', '),
    random_exercise(strength, equipment, Exercise31), write('4 sets * 10 '), write(Exercise31), write(', '),
    random_exercise(strength, no_equipment, Exercise32), write('3 sets * 15 '), write(Exercise32), write(', '),
    random_exercise(strength, no_equipment, Exercise33), write('3 sets * 20 '), write(Exercise33), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(cardio, equipment, Exercise4), write('10min '), write(Exercise4), write(', '),
    random_exercise(cardio, equipment, Exercise41), write('10min '), write(Exercise41), write(', '),
    random_exercise(cardio, no_equipment, Exercise42), write('20min '), write(Exercise42),nl,
    write('Sun: Rest day'), nl.

% Muscle and Strength Building goal, advanced level, with equipment
generate_plan(muscle_and_strength_building, advanced, equipment) :-
    write('Muscle and Strength Building - Advanced - With Equipment'), nl,
    write('Mon: '),
    random_exercise(strength, equipment, Exercise1), write('4 sets * 12 '), write(Exercise1), write(', '),
    random_exercise(strength, no_equipment, Exercise11), write('4 sets * 10 '), write(Exercise11), write(', '),
    random_exercise(strength, equipment, Exercise12), write('3 sets * 15 '), write(Exercise12), nl,
    write('Tue: '),
    random_exercise(strength, no_equipment, Exercise2), write('4 sets * 12 '), write(Exercise2), write(', '),
    random_exercise(strength, equipment, Exercise21), write('3 sets * 10 '), write(Exercise21), write(', '),
    random_exercise(strength, no_equipment, Exercise22), write('3 sets * 15 '), write(Exercise22), write(', '),
    random_exercise(strength, equipment, Exercise23), write('4 sets * 20 '), write(Exercise23), nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(cardio, no_equipment, Exercise3), write('15min '), write(Exercise3), write(', '),
    random_exercise(cardio, no_equipment, Exercise31), write('10min '), write(Exercise31), write(', '),
    random_exercise(cardio, equipment, Exercise32), write('15min '), write(Exercise32), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(strength, equipment, Exercise4), write('4 sets * 12 '), write(Exercise4), write(', '),
    random_exercise(strength, no_equipment, Exercise41), write('4 sets * 10 '), write(Exercise41), write(', '),
    random_exercise(strength, no_equipment, Exercise42), write('3 sets * 15 '), write(Exercise42), write(', '),
    random_exercise(strength, equipment, Exercise43), write('3 sets * 20 '), write(Exercise43), nl,
    write('Sun: Rest day'), nl.

% general_fitness, beginner, equipment
generate_plan(general_fitness, beginner, equipment) :-
    write('General Fitness - Beginner - Equipment'), nl,
    write('Mon: '),
    random_exercise(cardio, no_equipment, Exercise1), write('10min '), write(Exercise1), write(', '),
    random_exercise(cardio, equipment, Exercise11), write('10min '), write(Exercise11), write(', '),
    random_exercise(cardio, no_equipment, Exercise12), write('10min '), write(Exercise12),nl,
    write('Tue: '),
    random_exercise(strength, equipment, Exercise2), write('2 sets * 10 '), write(Exercise2), write(', '),
    random_exercise(strength, equipment, Exercise21), write('2 sets * 15 '), write(Exercise21),write(', '),
    random_exercise(strength, no_equipment, Exercise21), write('1 set * 10 '), write(Exercise21),write(', '),nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(strength, no_equipment, Exercise3), write('1 sets * 15 '), write(Exercise3), write(', '),
    random_exercise(strength, equipment, Exercise31), write('2 sets * 15 '), write(Exercise31), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(cardio, no_eequipment, Exercise4), write('10min '), write(Exercise4), write(', '),
    random_exercise(cardio, equipment, Exercise41), write('10min '), write(Exercise41), nl,
    write('Sun: Rest day'), nl.

% general_fitness, intermediate, equipment
generate_plan(general_fitness, intermediate, equipment) :-
    write('General Fitness - Intermediate - Equipment'), nl,
    write('Mon: '),
    random_exercise(cardio, equipment, Exercise1), write('15min '), write(Exercise1), write(', '),
    random_exercise(cardio, no_equipment, Exercise11), write('20min '), write(Exercise11), nl,
    write('Tue: '),
    random_exercise(strength, no_equipment, Exercise2), write('3 sets * 10 '), write(Exercise2), write(', '),
    random_exercise(strength, equipment, Exercise21), write('3 sets * 15 '), write(Exercise21), nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(strength, equipment, Exercise3), write('3 sets * 10 '), write(Exercise3), write(', '),
    random_exercise(strength, no_equipment, Exercise31), write('2 sets * 10 '), write(Exercise31),write(', '),
    random_exercise(strength, equipment, Exercise32), write('3 sets * 10 '), write(Exercise32), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(cardio, equipment, Exercise4), write('15min '), write(Exercise4), write(', '),
    random_exercise(cardio, no_equipment, Exercise41), write('15min '), write(Exercise41), nl,
    write('Sun: Rest day'), nl.


% general_fitness, advanced, equipment
generate_plan(general_fitness, advanced, equipment) :-
    write('General Fitness - Advanced - Equipment'), nl,
    write('Mon: '),
    random_exercise(cardio, equipment, Exercise1), write('20min '), write(Exercise1), write(', '),
    random_exercise(cardio, no_equipment, Exercise11), write('20min '), write(Exercise11), nl,
    write('Tue: '),
    random_exercise(strength, equipment, Exercise2), write('4 sets * 10 '), write(Exercise2), write(', '),
    random_exercise(strength, no_equipment, Exercise21), write('3 sets * 15 '), write(Exercise21), nl,
    write('Wed: Rest day'), nl,
    write('Thu: '),
    random_exercise(strength, equipment, Exercise3), write('4 sets * 15 '), write(Exercise3), write(', '),
    random_exercise(strength, no_equipment, Exercise31), write('2 sets * 15 '), write(Exercise31), nl,
    write('Fri: Rest day'), nl,
    write('Sat: '),
    random_exercise(cardio, equipment, Exercise4), write('20min '), write(Exercise4), write(', '),
    random_exercise(cardio, equipment, Exercise41), write('20min '), write(Exercise41), nl,
    write('Sun: Rest day'), nl.




%User Interaction
ask_goal(Goal) :-
    write('What is your fitness goal (Options: weight_loss, muscle_and_strength_building,general_fitness)?'), nl,
    read(Input),
    ( goal(Input) -> Goal = Input
    ; write('Invalid input! Please try again.'), nl, ask_goal(Goal)
    ).

ask_level(Level) :-
    write('What is your fitness level (Options: beginner, intermediate, advanced)?'), nl,
    read(Input),
    ( level(Input) -> Level = Input
    ; write('Invalid input! Please try again.'), nl, ask_level(Level)
    ).

ask_equipment(Equipment) :-
    write('Do you have access to equipments (Options: no_equipment, equipment)?'), nl,
    read(Input),
    ( equipment(Input) -> Equipment = Input
    ; write('Invalid input! Please try again.'), nl, ask_equipment(Equipment)
    ).


generate_fitness_plan :-
    nl, write('Welcome to Your Personalized Fitness Planner!'), nl,
    write('This expert system is designed to help you achieve your fitness goals with a customized weekly workout plan.'), nl,
    write('Whether you aim to lose weight, build strength, or maintain general fitness, this planner has got you covered.'), nl,
    write('Let\'s get started by answering a few simple questions to tailor the plan to your needs!'), nl, nl,
    ask_goal(Goal),
    ask_level(Level),
    ask_equipment(Equipment), nl, nl,

    % Generate Monthly Plan
    write('Generating your fitness plan for the month...'), nl, nl,
    write('WEEK 1'), nl, nl,
    generate_plan(Goal, Level, Equipment), nl, nl,

    write('WEEK 2'), nl, nl,
    generate_plan(Goal, Level, Equipment), nl, nl,

    write('WEEK 3'), nl, nl,
    generate_plan(Goal, Level, Equipment), nl, nl,

    write('WEEK 4'), nl, nl,
    generate_plan(Goal, Level, Equipment), nl, nl,

    write('Your monthly plan is ready! Stay consistent and make the most of it!').

