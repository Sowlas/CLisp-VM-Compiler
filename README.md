# Compilateur + VM CLISP

## Projet

Ce projet comprend deux éléments :
    - Une machine virtuelle à registre capable d'interpréter un langage bytecode similaire à un assembleur
    - Un compilateur common-lisp vers bytecode

## Execution 

### Des tests :

Le projet comporte un makefile servant à lancer l'execution des fichiers de tests.
Trois commandes y sont présentes :

``` sh
make compile # Compile le projet dans target/main.fas

make test # Execute target/main.fas

make clean # Supprime le contenu de target
```

### De la VM et du compilateur :

L'execution doit se faire depuis le dossier src dans le REPL CLISP après l'execution des instructions :

```common-lisp 
(load "eval.lisp")
(load "vm.lisp")
```

la compilation d'un fichier peut être ensuite lancée en utilisant la fonction :

``` common-lisp
(file-exec "<nom-du-fichier>")
```
