% 1. Définir un prédicat `element(X, L)` qui est vrai si `X` est un élément de la liste `L`.
element(X, [X|_]).           % X est le premier élément de la liste
element(X, [_|T]) :-         % X est dans le reste de la liste
    element(X, T).

% 2. Définir un prédicat `first(E, L)` qui est vrai si `E` est le premier élément de la liste `L`.
first(E, [E|_]).             % E est le premier élément de la liste

% 3. Définir un prédicat `last(E, L)` qui trouve le dernier élément de la liste `L`.
last(E, [E]).                % Si la liste a un seul élément, c'est le dernier
last(E, [_|T]) :-            % On parcourt la liste jusqu'au dernier élément
    last(E, T).

% 4. Définir un prédicat `penultimate(E, L)` qui trouve l'avant-dernier élément de la liste `L`.
penultimate(E, [E, _]).      % E est l'avant-dernier si le suivant est le dernier
penultimate(E, [_|T]) :-     % On parcourt la liste jusqu'à l'avant-dernier élément
    penultimate(E, T).

% 5. Définir un prédicat `del_k(X, L1, K, L2)` qui enlève le K-ème élément de `L1` et donne la liste résultante `L2`.
del_k(1, [X|T], X, T).       % Si K est 1, on enlève le premier élément
del_k(K, [H|T], X, [H|R]) :- % Sinon, on parcourt la liste jusqu'à K
    K > 1,
    K1 is K - 1,
    del_k(K1, T, X, R).

% 6. Définir un prédicat `length(L, N)` qui calcule la longueur `N` de la liste `L`.
length([], 0).               % La longueur d'une liste vide est 0
length([_|T], N) :-          % On ajoute 1 pour chaque élément de la liste
    length(T, N1),
    N is N1 + 1.

% 7. Définir un prédicat `even(L)` qui est vrai si `L` contient un nombre pair d'éléments.
even([]).                    % Une liste vide a un nombre pair d'éléments
even([_,_|T]) :-             % On enlève deux éléments à chaque étape
    even(T).

% 8. Définir un prédicat `concat(L1, L2, L3)` qui concatène deux listes `L1` et `L2` dans `L3` sans utiliser `append`.
concat([], L, L).            % Concaténation d'une liste vide avec L est L
concat([H|T], L, [H|R]) :-   % Ajout des éléments de L1 à L3
    concat(T, L, R).

% 9. Définir un prédicat `palindrome(L)` qui est vrai si la liste `L` est identique à son image renversée.
palindrome(L) :-             % Une liste est un palindrome si elle est égale à sa réverse
    reverse(L, L).

% Prédicat auxiliaire `reverse` pour inverser une liste
reverse([], []).             % La réversion d'une liste vide est une liste vide
reverse([H|T], R) :-         % Réversion en plaçant H à la fin de la réverse de T
    reverse(T, RevT),
    concat(RevT, [H], R).

