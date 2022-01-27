##
# Lisp Meta Compiler
#
# @file
# @version 0.1

sources = src/
target = target/

# Compile le projet vers une version bytecode
compile : $(target)main.fas

# Dépendance de la compilation bytecode
$(target)main.fas: $(sources)main.lisp $(sources)vm.lisp $(sources)eval.lisp $(sources)tests.lisp
	clisp -c --quiet $(sources)main.lisp -o $(target)main.fas

# Lance l'execution du programme
run: $(target)main.fas
	clisp $(target)main.fas

# Nettoie les fichier bytecodes générés par la compilation
clean:
	rm $(target)*
# end
