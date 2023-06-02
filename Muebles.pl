costo(piso_madera, 100).
costo(piso_ceramico, 80).
costo(piso_porcelanato, 120).
costo(ventanas_madera, 200).
costo(ventanas_aluminio, 150).
costo(ventanas_pvc, 180).
costo(pintura_interior, 50).
costo(pintura_exterior, 80).
costo(clima_artificial, 300).
costo(diseño_moderno, 200).
costo(diseño_clásico, 150).
costo(jardín, 120).
costo(piscina, 300).

construccion(Presupuesto, Caracteristicas) :-
    construccion_recursiva(Presupuesto, [], Caracteristicas).

construccion_recursiva(Presupuesto, Acc, Caracteristicas) :-
    costo(Caracteristica, Costo),
    Costo =< Presupuesto,
    \+ member(Caracteristica, Acc),
    PresupuestoRestante is Presupuesto - Costo,
    construccion_recursiva(PresupuestoRestante, [Caracteristica | Acc], Caracteristicas).

construccion_recursiva(_, Caracteristicas, Caracteristicas).
