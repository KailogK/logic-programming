component(computer, [case]).
component(case, [power_supply, motherboard, cpu, gpu, cooling]).
component(power_supply, [cable, fan, transformer]).
component(transformer, [wire, core]).
component(motherboard, [capacitator, transistor]).
component(cpu, [processor, memory, fan]).
component(gpu, [processor, memory, fan]).
component(processor, [cores, cache]).
component(memory, [ram, storage]).
component(cooling, [fan]).
component(screen, [panel, stand, frame]).
component(panel, [lcd, backlight]).
component(lcd, [glass, pixels]).

material(case, metal).
material(power_supply, metal).
material(motherboard, plastic).
material(cooling, metal).
material(cable, metal).
material(fan, plastic).
material(transformer, metal).
material(wire, metal).
material(core, metal).
material(capacitator, metal).
material(transistor, metal).
material(processor, metal).
material(ram, plastic).
material(storage, metal).
material(frame, plastic).
material(pixels, plastic).
material(glass, glass).

sub_component(X, Y) :-
    component(Y, Components),
    member(X, Components).

contains_mat(Component, Material) :- material(Component, Material).


object_components(Object, Components) :- component(Object, Components).


