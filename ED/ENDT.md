
    commit 
    branch
    checkout
    cherry-pick
    reset
    revert
    rebase
    merge

git commit = crear rama 

git checkout = moverse 

git branch (nombre) = crearla con ese nombre

git merge = Hacer merge en Git crea un commit especial que tiene dos padres diferentes. Un commit con dos padres escencialmente significa "Quiero incluir todo el trabajo de estos dos padres , y del conjunto de todos sus ancestros"


rebase = El segundo modo de combinar el trabajo de distintas ramas es el rebase. Hacer rebase escencialmente selecciona un conjunto de commits, los "copia", y los aplica en algún otro lado.

Aunque esto pueda sonar confuso, la ventaja de hacer rebase es que puede usarse para conseguir una secuencia de commits lineal, más bonita. El historial / log de commits del repositorio va a estar mucho más claro si sólo usas rebase.


HEAD

Primero tenemos que hablar de "HEAD". HEAD es el nombre simbólico del commit sobre el que hemos hecho checkout -- es, básicamente, el commit sobre el que estás trabajando.

HEAD siempre apunta al commit más reciente, reflejado en el árbol de commits. La mayoría de los comandos de git que hacen cambios al árbol de commits empiezan modificando HEAD.

Normalmente HEAD apunta al nombre de una rama (como bugFix). Cuando creas un commit, el estado de bugFix se altera y este cambio es visible a través de HEAD.


REFERENCIAS RELATIVAS 

Moverse por git usando los hashes de los commits puede volverse un tanto tedioso. En el mundo real no vas a tener una visualización de commits tan linda en la terminal, así que vas a tener que usar git log para ver los hashes.

Peor aún, los hashes en general son mucho más largos en el git real, también. Por ejemplo, el hash del commit que introduje en el nivel anterior es fed2da64c0efc5293610bdd892f82a58e8cbc5d8. No es algo particularmente fácil de nombrar...

Lo interesante es que git es bastante astuto con los hashes. Sólo requiere que especifiques una cantidad de caracteres suficientes para identificar unívocamente al commit. Entonces, yo podría simplemente tipear fed2 en lugar de esa cadena larga de arriba.

especificar los commits por su hash no es la manera más conveniente, y por eso git tiene referencias relativas. ¡Son geniales!

Con las referencias relativas puedes arrancar de algún lugar recordable (como la rama bugFix, o HEAD) y trabajar desde ahí.

Los commits relativos son poderosos, pero ahora vamos a presentar sólo dos formas simples:

Moverse un commit hacia atrás con ^    

Moverse una cantidad de commits hacia atrás con ~<num>
    
decir main^ es equivalente a "el primer padre de main".

main^^ es el abuelo (segunda generación de ancestros) de main

El operador "~"

Digamos que quieres moverte un montón de niveles atrás en tu árbol de commits. Podría ser tedioso escribir ^ muchas veces, por lo que git tiene el operador ~.

El operador ~ (opcionalmente) toma una cantidad que especifica la cantidad de padres que quieres volver hacia atrás. Veámoslo en acción

git checkout HEAD ~4 = mueve el HEAD 4 posiciones hacia arriba.

Puedes reasignar directamente una rama a un commit usando la opción -f. Algo así como:

git branch -f main HEAD~3 = Mueve (forzadamente) la rama main tres padres por detrás de HEAD.