%----------------------------sintomas-------------------------
sintoma(['general'|['fatiga', 'cansancio_rapido', 'taquicardia', 'palidez', 'mucosa', 'mareos', 'inflamacion_lengua', 'dificultad_respiratoria', 'debilidad_muscular', 'dificultad_ingerir_alimento', 'diarrea']]).

sintoma(['ferrofenica'|['dolor_cabeza', 'perdida_cabello', 'dolor_pecho', 'dolor_lengua', 'desmayo', 'piel_seca', 'estreñimiento', 'ulceras_bucales', 'mano_frio', 'pie_frio', 'uña_quebradiza', 'uña_fragil', 'uña_palida', 'tendencia_injerir_tierra', 'tendencia_injerir_hielo']]).

sintoma(['perniciosa'|['ulcera_boca', 'perdida_apetito', 'perdida_peso', 'enrojecimiento_lengua', 'dolor_abdominal', 'entumesimiento_mano', 'entumesimiento_pie', 'irritabilidad', 'cambio_humor', 'aparicion_hematomas']]).

sintoma(['piernas_inquietas'|['necesidad_indispensable_de_mover_piernas', 'entumesimiento_pie', 'dolor_en_piernas', 'alteración_de_sueño', 'sensación_de_cansancio']]).

alimento(['rico_hierro'|['Lentejas con Espinacas y Huevo de Gallina', 'Seco de Carne de Res con Garbanzos', 'Sangrecita de Pollo', 'Frejoles con Seco de Carne', 'Anticuchos de Corazón de Res', 'Tallarines Verdes con Bistec de Bazo', 'Tacu Tacu con Lentejas y Carne de Res', 'Estofado de Carne de Pavo con Garbanzos', 'Pescado a la Plancha con Palta y Espinacas', 'Lomo Saltado', 'Arroz con Pollo', 'Rocoto Relleno de Sangrecita de Pollo', 'Sudado de Pescado', 'Estofado de Pollo con Espinacas', 'Parihuela de Pescado y Mariscos', 'Chicharrón', 'Cuy Chactado', 'Papa a la Huancaína con Huevo', 'Adobo de Cerdo']]).

alimento(['rico_b12'|['Ceviche de Pescado', 'Lomo Saltado con Carne de Res', 'Seco de Cordero', 'Carne de Conejo con Verduras', 'Parihuela de Mariscos', 'Arroz con Pollo', 'Pescado a la Plancha con Verduras', 'Causa Rellena de Atún', 'Anticuchos de Corazón de Res', 'Cuy Chactado', 'Chicharrón de Pescado', 'Caldo de Gallina', 'Lomo Saltado con Carne de Cerdo']]).

alimento(['General'|['Lomo de sangrecita', 'Tallarin verde con higado de pollo', 'Pure de habas con sangrecita', 'Seco de higado de pollo', 'Locro de zapallo con Higado de res']]).


%------------poblacion vulnerable ---------
poblacion_vulnerable('primera_infancia').
poblacion_vulnerable('infancia').
poblacion_vulnerable('pubertad').
poblacion_vulnerable('adolescencia').
poblacion_vulnerable('mujer_gestante').
poblacion_vulnerable('mujer_lactante').


%-------------tipoAnemia---------------
tipoAnemia('general').
tipoAnemia('ferrofenica').
tipoAnemia('perniciosa').

tratamiento([['A. General', 'primera_infancia']|['Se le recomiendo comer los alimentos enlistados']]).
tratamiento([['A. General', 'infancia']|['Se le recomiendo comer los alimentos enlistados']]).
tratamiento([['A. General', 'pubertad']|['Se le recomiendo comer los alimentos enlistados']]).
tratamiento([['A. General', 'adolescencia']|['Se le recomiendo comer los alimentos enlistados']]).
tratamiento([['A. General', 'mujer_gestante']|['Se le recomiendo comer los alimentos enlistados']]).
tratamiento([['A. General', 'mujer_lactante']|['Se le recomiendo comer los alimentos enlistados']]).

tratamiento([['A. Ferrofenica', 'primera_infancia']|['Jarabe de Sulfato Ferroso o Jarabe de Complejo Polimaltosado Férrico o Gotas de Sulfato Ferroso o Gotas de Complejo Polimaltosado Férrico', 'Dosis: 3 mg/dia', 'Tiempo: 6 meses']]).
tratamiento([['A. Ferrofenica', 'infancia']|['Jarabe de Sulfato Ferroso o Jarabe de Complejo Polimaltosado Férrico', 'Dosis: 3mg/dia', 'Tiempo: 6 meses']]).
tratamiento([['A. Ferrofenica', 'pubertad']|['Jarabe de Sulfato Ferroso o Jarabe de Complejo Polimaltosado Férrico o 1 tableta de Sulfato ferroso o 1 tableta de Polimaltosado', 'Dosis: 3mg/dia', 'Tiempo: 6 meses']]).
tratamiento([['A. Ferrofenica', 'adolescencia']|['2 tabletas de Sulfato Ferroso', 'Dosis: 120mg/dia', 'Tiempo: 6 meses']]).
tratamiento([['A. Ferrofenica', 'mujer_gestante']|['Hierro Polimaltosado + Ácido Fólico', 'Dosis: 120 mg de hierro + 800 µg de acido folico', 'Tiempo: 6 meses']]).
tratamiento([['A. Ferrofenica', 'mujer_lactante']|['Hierro Polimaltosado + Ácido Fólico', 'Dosis: 120 mg de hierro + 800 µg de acido folico', 'Tiempo: 6 meses']]).

tratamiento([['A. Perniciosa', 'primera_infancia']|['Tomar Cianocobalamina', 'Dosis: 1000 mcg', 'Tiempo: Primero diario por 7 días, luego cada semana por 4 semanas']]).
tratamiento([['A. Perniciosa', 'infancia']|['Tomar Cianocobalamina', 'Dosis: 1000 mcg', 'Tiempo: Primero diario por 7 días, luego cada semana por 4 semanas']]).
tratamiento([['A. Perniciosa', 'pubertad']|['Tomar Cianocobalamina', 'Dosis: 1000 mcg', 'Tiempo: Primero diario por 7 días, luego cada semana por 4 semanas']]).
tratamiento([['A. Perniciosa', 'adolescencia']|['Tomar Cianocobalamina', 'Dosis: 1000 mcg', 'Tiempo: Primero diario por 7 días, luego cada semana por 4 semanas']]).
tratamiento([['A. Perniciosa', 'mujer_gestante']|['Tomar Cianocobalamina', 'Dosis: 1000 mcg', 'Tiempo: Primero diario por 7 días, luego cada semana por 4 semanas']]).
tratamiento([['A. Perniciosa', 'mujer_lactante']|['Tomar Cianocobalamina', 'Dosis: 1000 mcg', 'Tiempo: Primero diario por 7 días, luego cada semana por 4 semanas']]).

%------------------------REGLAS-------------------------------
%
%==========ANEMIA GENERAL================
indicador_de_anemiaGeneral(ListaSintoma, Poblacion) :-
    buscaSintomaMayorRelevanciaAnemiaGeneral(['fatiga', 'cansancio_rapido', 'mareos', 'palidez'],ListaSintoma),
    totalSintomasBHechos(Lista),subset(ListaSintoma, Lista),
    poblacion_vulnerable(Poblacion) .

totalSintomasBHechos(ListaTotal) :-
    sintoma(['general'|LG]),
    sintoma(['ferrofenica'|LF]),
    append(LG, LF, L1),
    sintoma(['perniciosa'|LP]),
    sintoma(['piernas_inquietas'|LS]),
    append(LP, LS, L2),
    append(L1, L2, ListaTotal).

buscaSintomaMayorRelevanciaAnemiaGeneral([], _) :- !, true.
buscaSintomaMayorRelevanciaAnemiaGeneral([Cabeza|Cola], Lista) :-
    member(Cabeza, Lista),
    buscaSintomaMayorRelevanciaAnemiaGeneral(Cola, Lista).

%===========ANEMIA FERROFENICA==============
indicador_de_anemiaFerrofenica(ListaSintoma, Poblacion) :-
    indicador_de_anemiaGeneral(ListaSintoma, Poblacion),
    tiene_piernas_inquietas(ListaSintoma),
    buscaSintomaMayorRelevanciaAnemiaFerrofenica(['piel_seca', 'uña_quebradiza', 'uña_fragil', 'uña_palida', 'estreñimiento'],ListaSintoma),
    totalSintomasBHechos(Lista),subset(ListaSintoma, Lista)
    .

buscaSintomaMayorRelevanciaAnemiaFerrofenica([], _) :- !, true.
buscaSintomaMayorRelevanciaAnemiaFerrofenica([Cabeza|Cola], Lista) :-
    member(Cabeza, Lista),
    buscaSintomaMayorRelevanciaAnemiaFerrofenica(Cola, Lista).

tiene_piernas_inquietas(Lista) :-
    buscaSintomaMayorRelevanciaPI(['alteración_de_sueño', 'necesidad_indispensable_de_mover_piernas', 'sensación_de_cansancio'], Lista),
    totalSintomasBHechos(List), subset(Lista, List).

buscaSintomaMayorRelevanciaPI([], _) :- !, true.
buscaSintomaMayorRelevanciaPI([Cabeza|Cola], Lista) :-
    member(Cabeza, Lista),
    buscaSintomaMayorRelevanciaPI(Cola, Lista).


%===========ANEMIA PERNICIOSA ====================
indicador_de_anemiaPerniciosa(ListaSintoma, Poblacion) :-
    indicador_de_anemiaGeneral(ListaSintoma, Poblacion),
    buscaSintomaMayorRelevanciaAnemiaPerniciosa(['perdida_apetito', 'perdida_peso', 'entumesimiento_mano', 'entumesimiento_pie'],ListaSintoma),
    totalSintomasBHechos(Lista),subset(ListaSintoma, Lista)
    .
buscaSintomaMayorRelevanciaAnemiaPerniciosa([], _) :- !, true.
buscaSintomaMayorRelevanciaAnemiaPerniciosa([Cabeza|Cola], Lista) :-
    member(Cabeza, Lista),
    buscaSintomaMayorRelevanciaAnemiaPerniciosa(Cola, Lista).


dameLaEnfermedad(ListaSintomas, Poblacion) :-
    indicador_de_anemiaFerrofenica(ListaSintomas, Poblacion) -> assertz(resultado_anemia('A. Ferrofenica')), !;
    indicador_de_anemiaPerniciosa(ListaSintomas, Poblacion) -> assertz(resultado_anemia('A. Perniciosa')), !;
    indicador_de_anemiaGeneral(ListaSintomas, Poblacion) -> assertz(resultado_anemia('A. General')), !;
    assertz(resultado_anemia('No tienes anemia')), !.

dameAlimento(X, Lista) :-
    X == 'A. Ferrofenica' -> alimento(['rico_hierro'|Lista]), !;
    X == 'A. Perniciosa' -> alimento(['rico_b12'|Lista]), !;
    X == 'A. General' -> alimento(['General'|Lista]), !;
    Lista = ['No hay resultados que mostrar'], !.

dameTratamiento(X, Y, ListaTratamiento) :-
    X == 'A. Ferrofenica', Y == 'primera_infancia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Ferrofenica', Y == 'infancia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Ferrofenica', Y == 'pubertad' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Ferrofenica', Y == 'adolescencia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Ferrofenica', Y == 'mujer_gestante' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Ferrofenica', Y == 'mujer_lactante' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Perniciosa', Y == 'primera_infancia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Perniciosa', Y == 'infancia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Perniciosa', Y == 'pubertad' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Perniciosa', Y == 'adolescencia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Perniciosa', Y == 'mujer_gestante' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. Perniciosa', Y == 'mujer_lactante' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. General', Y == 'primera_infancia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. General', Y == 'infancia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. General', Y == 'pubertad' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. General', Y == 'adolescencia' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. General', Y == 'mujer_gestante' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    X == 'A. General', Y == 'mujer_lactante' -> tratamiento([[X, Y]|ListaTratamiento]), !;
    ListaTratamiento = ['No hay resultados que mostrar'], !.




















