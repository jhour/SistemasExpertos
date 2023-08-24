%----------------------------sintomas-------------------------
sintoma(['general'|['fatiga', 'cansancio_rapido', 'taquicardia', 'palidez', 'mucosa', 'mareos', 'inflamacion_lengua', 'dificultad_respiratoria', 'debilidad_muscular', 'dificultad_ingerir_alimento', 'diarrea']]).

sintoma(['ferrofenica'|['dolor_cabeza', 'perdida_cabello', 'dolor_pecho', 'dolor_lengua', 'desmayo', 'piel_seca', 'estreñimiento', 'ulceras_bucales', 'mano_frio', 'pie_frio', 'uña_quebradiza', 'uña_fragil', 'uña_palida', 'tendencia_injerir_tierra', 'tendencia_injerir_hielo']]).

sintoma(['perniciosa'|['ulcera_boca', 'perdida_apetito', 'perdida_peso', 'enrojecimiento_lengua', 'dolor_abdominal', 'entumesimiento_mano', 'entumesimiento_pie', 'irritabilidad', 'cambio_humor', 'aparicion_hematomas']]).

sintoma(['piernas_inquietas'|['necesidad_indispensable_de_mover_piernas', 'entumesimiento_pie', 'dolor_en_piernas', 'alteración_de_sueño', 'sensación_de_cansancio']]).


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



enfermedades(['general'|['general', 'ferrofenica', 'perniciosa']]).
enfermedades(['ferrofenica'|['general', 'ferrofenica', 'perniciosa']]).
enfermedades(['perniciosa'|['general', 'ferrofenica', 'perniciosa']]).


tratamiento(['general'|['Coma_muchoG']]).
tratamiento(['ferrofenica'|['Coma_muchoF']]).
tratamiento(['perniciosa'|['Coma_muchoP']]).

%------------------------REGLAS-------------------------------
%
%==========ANEMIA GENERAL================
indicador_de_anemiaGeneral(ListaSintoma, Poblacion) :-
    buscaSintomaMayorRelevanciaAnemiaGeneral(['fatiga', 'cansancio_rapido', 'mareos'],ListaSintoma),
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
    indicador_de_anemiaFerrofenica(ListaSintomas, Poblacion) -> write('Tipo de Anemia: A. Ferrofenica'), !;
    indicador_de_anemiaPerniciosa(ListaSintomas, Poblacion) -> write('Tipo de Anemia: A. Perniciosa'), !;
    indicador_de_anemiaGeneral(ListaSintomas, Poblacion) -> write('Tipo de Anemia: General'), !.

isEnter(E,[E|_]).
isEnter(E,[_|C]):-isEnter(E,C).

count([], 0).
count([_|T], N) :-
   count(T, X), N is X+1.

%------------deteccion de enfermedades----------------
sintomaEnfermedades(Tipo_anemia,Sintomas,Enfermedad):-enfermedades([Tipo_anemia|C]),isEnter(X1,C),sintoma([X1|C1]),isEnter(Sintomas,C1),X1 =Enfermedad.
calculoDentroSintomas([],_,0).
calculoDentroSintomas([Sintoma1|C1],Enfermedad,Cantidad):-sintoma([Enfermedad|C]),isEnter(Sintoma1,C),calculoDentroSintomas(C1,Enfermedad,Z1),Cantidad is Z1+1.
calculoDentroSintomas([Sintoma1|C1],Enfermedad,Cantidad):-sintoma([Enfermedad|C]),not(isEnter(Sintoma1,C)),calculoDentroSintomas(C1,Enfermedad,Cantidad).

calculoPorcentaje(Animal,Sintomas,Porcentaje,Can,CanT,EnferProbables):-enfermedades([Animal|C]),isEnter(X1,C),calculoDentroSintomas(Sintomas,X1,P),sintoma([X1|C2]),count(C2,Total),Porcentaje is P/Total*100,Porcentaje>20,CanT is Total,Can is P,EnferProbables = X1.

