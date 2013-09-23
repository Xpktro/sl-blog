---
layout: post
title: "Lección 1: Hola Avatar, Disecado"
date: 2013-09-06 15:59
comments: true
categories: LSL2
---

En esta primera lección formal, disecaremos a detalle el más sencillo e interesante de los *scripts*: el **Hola Avatar**. [Si no ha leido la lección anterior, es un buen momento para hacerlo,]({{ root_url }}/2013/09/06/hola-avatar) ya que me referiré a algunas cosas ahí mencionadas.

<!-- more -->

Qué mejor forma de empezar en el mundo del scripting que produciendo nuestro propio primer script, y para este primer caso ¡no es necesario hacer casi nada!. Asegúrese de encontrarse en un terreno en donde pueda construir y que tenga un tiempo de retorno de *prims* relativamente alto (pasaremos un tiempo mirando nuestro script).

### Nuestro primer script: creación

Presione el botón de construcción en la parte inferior de su visor (o donde habitualmente sabe que se encuentra).

{% img center /images/build.png %}

Haga click en cualquier lugar cercano a su ubicación y vea cómo un hermoso cubo de madera, junto con la *herramienta de construcción* se materializan en su pantalla. El acto de *producir objetos* en el *mundo* se conoce comúnmente como **rezear** (la etimología puede verse en el glosario).

{% img center /images/rez.png %}

Diríjase a la pestaña de **contenidos** en la *herramienta de construcción*. Un *prim* puede contener varios *objetos*, para ello cuenta con un *inventario*, el cual estamos observando en este momento. Obsérvese la presencia de algunos botones relacionados con el manejo de scripts, utilizaremos estos botones a menudo.

Presione el botón de **Nuevo Script** y observe cómo éste aparece en el *inventario* del objeto que estamos editando. Inmediatamente después, un curioso mensaje asoma por la ventana del chat general.

{% img center /images/primcontents.png %}

¡Lo hemos logrado! la creación de nuestro primer *script* *casi-sin-esfuerzo* ha sido satisfactoria. Veamos con más detalle la maravilla que acabamos de crear, haciendo doble click al **Script Nuevo** dentro del inventario del *prim*.

{% img center /images/scripteditor.png %}

La ventana que se nos muestra es el **editor de scripts**, dentro de ella escribiremos/editaremos nuestro código, y ordenaremos la ejecución o detención del script que estemos observando. Adicionalmente el editor nos permite reconocer los distintos elementos que conforman un script resaltándolos con distintos colores; a esto se le suele llamar **resaltado de sintaxis**.


### Nuestro primer script: disección

Empecemos por lo que nos resulta más evidente: el "Hello, Avatar!".

```lsl
llSay(0, "Hello, Avatar!");
```

Todas las instrucciones que un objeto vaya a ejecutar han de terminar con un punto y coma (;), en este caso, se deduce que al objeto se le ha ordenado algo que resultó en escribir "Hello, Avatar!" por el chat general.

El lenguaje de *scripting* trae un gigantesco volumen de acciones que puede realizar nuestro objeto. A estas acciones se les conoce con el nombre de **funciones**, y todas están nombradas empezando con dos letras 'l' minúsculas (ll por Linden Lab :)), seguidas de una corta y contundente descripción de su uso. En este caso, podemos ver que se utiliza función `llSay`. Utilizar una función significa llamarla por su nombre, y escribir entre paréntesis una serie de datos que necesita para *funcionar*, separados por comas.

En un nivel más atómico, el *scripting* implica manejar datos, como por ejemplo un texto: `"Hello, Avatar!"`, o un número: `0`. Veremos en la siguiente lección los distintos tipos de datos que existen para el lenguaje, pero esa es otra historia. Hasta este punto sabemos que además de haberse ejecutado una instrucción, esta instrucción es la acción llSay, y que la acción recibió los datos `0` y `"Hello, Avatar!"`.

`llSay` es la acción que permite que nuestro objeto emita un mensaje a través del chat. En el *metaverso*, los mensajes pueden viajar a través de una serie de canales numerados, siendo el `0` el que conocemos como el *chat general* y extendiéndose hasta un número muy pero muy grande. Todos los canales del chat son públicos, pero como *avatares* sólo podemos *escuchar* el canal 0. En una clase posterior volveremos a tocar el tema a fondo, pero la importancia de esto es el significado del primer dato que recibió `llSay`: es **el canal por el cual emitir el mensaje**. El siguiente dato se explica por sí mismo: es el texto a enviarse, que en este caso es el famosísimo `"Hello, Avatar!"`. Aquí notaremos otra cosa muy importante: todos los datos que representan **textos** van siempre **encerrados entre comillas dobles**, acordarse siempre de esto, y del detalle de los puntos y comas le evitarán muchos dolores de cabeza.

La forma de uso de las funciones, o sea cuántos, cuáles y en qué orden van los datos, viene definida por los creadores del lenguaje y es inalterable. Faltar o cambiar algo a estas definiciones resultará en comportamientos inesperados o simplemente el script *se romperá*. No es momento de asustarse todavía por nada de esto, pero vale la advertencia para el futuro.

En resumen, hasta ahora sabemos que `llSay(0, "Hello, Avatar!");` significa: *di `"Hello, Avatar!"` en el canal `0`*, pero regresando a nuestra premisa inicial, ¿Qué evento se produjo para que esto ocurra? para entender el elemento faltante en nuestra ecuación, daremos un paso atrás para aprender acerca de los **estados** y los **eventos**.


### Estados y Eventos

En términos estrictamente técnicos, *LSL es un lenguaje orientado a eventos y estados*, y aunque la oración anterior pudo haberle producido algo de recelo, veremos que es algo mucho más sencillo de lo que parece.

Un evento es **algo que ocurre en algún momento**, y, al igual que en la vida real, en el mundo del *scripting*, su significado es el mismo. Todas las acciones que se ejecuten en un script, habrán ocurrido en razón a un evento. Por ejemplo: la recepción de un pago, el click del mouse de un avatar, la cercanía de un avatar, etc...

Los eventos en LSL están escritos en letras minúsculas y opcionalmente contienen guiones, análogamente al caso de las funciones, los eventos también tienen una serie de datos asociados a ellos, con la excepción que nosotros no *introducimos* los datos, sino que los *recibimos*. Veremos esto en detalle en una lección posterior. Por ejemplo, el evento que define el click del mouse se escribe:

```lsl
touch_start(integer total_number) {
    instrucciones...
    instrucciones...
    instrucciones...
}
```

Al igual que las funciones, los *datos* de los eventos también se escriben entre paréntesis, seguidos de llaves `{}` que delimitan a las instrucciones que se ejecutarán. Habrá observado que en el script autogenerado la posición de las llave inicial cambió a la siguiente línea. El motivo de esto es puramente estético. De hecho, los *scripts* podrían escribirse en una sola línea y funcionar exactamente igual, pero el resultado sería muy poco legible y no queremos eso para nada. Adicionalmente la alineación de las instrucciones respecto al estado y a los demás elementos también tiene un motivo estético. Al esta *jerarquía* de posiciones de las instrucciones se la llama **indentación**. Y para terminar, el significado de `integer total_number` será visto en una clase posterior. Por ahora asumamos que es así como se debe de definir el evento `touch_start` siempre.

Es hora de hablar de estados. Un estado en la vida real es *una forma de estar*, un conjunto de características que definen a algo (un objeto, una persona, etc...). En términos de *scripting*, un estado es **un conjunto de eventos**. Los estados sirven para delimitar una serie de respuestas de forma abstracta; si lo miramos con detalle veremos que cobra sentido: podemos hacer que una lámpara se encienda cuando se encuentre en estado *apagado* (que normalmente sería el estado *por defecto*), y viceversa, que se apague cuando se encuentre *encendida*. El manejo de estados nos ayudará mucho a lo largo de nuestra vida como *scripters*, aunque ese será el objeto de otra lección.

```lsl
default {
    touch_start(integer total_number){
        ...
    }

    ...
    ...
    ...
}
```

En nuestro *script*, solamente tenemos un estado, el estado *por defecto* `default`. Al igual que con los eventos, todos sus contenidos están encerrados entre llaves, pero a diferencia de estos, los eventos no envían ni reciben datos como tales, entonces no necesitan paréntesis algunos. **Todo script debe de tener obligatoriamente el estado `default`, de lo contrario no funcionará**.

Y tras todo esto, ¿a qué evento corresponde el tal `state_entry`?, algunos ya habrán sacado sus conclusiones: `state_entry` es el evento que se produce cada vez que un objeto *entra* a un estado, y como el estado por defecto en todo script es el `default`, al ejecutarse por primera vez el script, se entrará al estado `default`, desencadenando `state_entry`.

En pocas palabras: ¡"Hello, Avatar!" es lo primero que se verá al ejecutar el script por primera vez!. Lo veremos totalmente claro en esta secuencia de pasos:

- El script se genera.
- El script entra en el estado `default`.
- `state_entry` es disparado al entrar en `default`.
- Se ejecuta `llSay(0, "Hello Avatar!");`
- En el canal `0`, aparece el texto `"Hello Avatar!"`

Y así, querido lector, hemos disecado satisfactoriamente el famoso *Hola, Avatar!* con nuestras propias manos. Como pequeño ejercicio de reforzamiento intente explicar cuál es la secuencia de pasos que hacen que el objeto diga "Touched." cuando se le hace click.

Adicionalmente, intente cambiar los mensajes que aparecen en ambos casos. Cuando haya realizado los cambios, presione el botón de guardar (graficado con la imagen de un diskette), y si todo salió bien, verá la palabra "Guardado." en el cuadro inferior de la ventana de edición; de lo contrario, un mensaje le advertirá de los problemas que hayan podido ocurrir durante el guardado. Asegúrese también de que la casilla de "Ejecutándose" se encuentre marcada.

{% img center /images/saved.png %}

En la siguiente lección nos adentraremos en el primero de nuestros asuntos pendientes: veremos todos los tipos de datos que tenemos disponibles para poder escribir nuestros *scripts*.

Como bien saben, cualquier aclaración o sugerencia es bienvenida en el área de comentarios, y agradeciéndole su paciencia y determinación para con el curso me despido por ahora.