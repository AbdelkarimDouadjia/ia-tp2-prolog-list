# Exercices Prolog - Listes

## Description

Ce dépôt contient une série d'exercices en Prolog portant sur les manipulations de listes. Les exercices permettent de s'entraîner à écrire des prédicats Prolog pour effectuer différentes opérations sur des listes, comme trouver des éléments spécifiques, enlever des éléments à certaines positions, concaténer des listes, et vérifier si une liste est un palindrome.

## Liste des Exercices

1. **Vérification d'appartenance**  
   Définir un prédicat `element(X, L)` qui est vrai si `X` est un élément de la liste `L`.

2. **Premier élément**  
   Définir un prédicat `first(E, L)` qui est vrai si `E` est le premier élément de la liste `L`.

3. **Dernier élément**  
   Définir un prédicat `last(E, L)` qui trouve le dernier élément de la liste `L`.

4. **Avant-dernier élément**  
   Définir un prédicat `penultimate(E, L)` qui trouve l'avant-dernier élément de la liste `L`.

5. **Suppression d'un élément**  
   Définir un prédicat `del_k(X, L1, K, L2)` qui enlève le K-ème élément de la liste `L1` et donne la liste résultante `L2`.

6. **Longueur de la liste**  
   Définir un prédicat `length(L, N)` qui calcule la longueur `N` de la liste `L`.

7. **Liste de longueur paire**  
   Définir un prédicat `even(L)` qui est vrai si `L` contient un nombre pair d'éléments.

8. **Concaténation de listes**  
   Définir un prédicat `concat(L1, L2, L3)` qui concatène deux listes `L1` et `L2` dans `L3` sans utiliser `append`.

9. **Palindrome**  
   Définir un prédicat `palindrome(L)` qui est vrai si la liste `L` est un palindrome (la liste est identique à son image inversée).

## Utilisation

### Prérequis

- Prolog installé (par exemple, SWI-Prolog).

### Exécution

1. Ouvrir le fichier `list_exercise.pl` dans votre environnement Prolog.
2. Charger le fichier avec la commande :
   ```prolog
   ?- consult('list_exercise.pl').

