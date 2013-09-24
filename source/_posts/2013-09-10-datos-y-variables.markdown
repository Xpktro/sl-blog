---
layout: post
title: "Lección 2: Tipos de Datos, Variables y Constantes"
date: 2013-09-10 21:59
comments: true
categories: LSL2
---

Esta lección será eminentemente teórica y algo alargada, revisaremos con cierto nivel de detalles a los distintos tipos de datos con los que nos podemos encontrar durante nuestra vida como *scripters*. A partir de la siguiente clase volveremos a casos y aplicaciones más *prácticas* del lenguaje de *scripting*.

<!-- more -->

Como dijimos antes, en su nivel más puro y técnico, el *scripting* consiste en el manejo de información. Esta manipulación de datos tarde o temprano resultará en la alimentación de determinadas funciones, que supondrán alguna u otra reacción, complementando la *fórmula* del *scripting:* **instrucciones que hace que un objeto reaccione**.

Por ejemplo, la ejecución de `llSay(0, "¡Hola Avatar!");` ha requerido de los datos `0` y `"¡Hola Avatar!"`, y si bien esto es suficiente para el caso presentado, algunas otras funciones, junto con algunas de las ideas que puede estar teniendo listas para escribir necesiten de más tipos de información con los cuales *jugar* para poder realizar nuestros *scripts*.

### Los Números Enteros (`integer`)
{% pullquote %}
Uno de los tipos de datos más básicos es el número entero. Al igual que en en el mundo *no-scripter*, los números enteros se escriben de una sola manera: **usando números _(y el signo de negatividad cuando sea necesario)_**. Sin embargo, aunque grande, existe un límite entre el tamaño de los números que puedes escribir. Esto es, que {" los números enteros pueden ir desde `−2,147,483,648` hasta `2,147,483,647` "}. Si bien a estas alturas del curso este último dato no es casi relevante, le resultará curioso algún que otro lector.
{% endpullquote %}

### Los Números Decimales (`float`)
La primera pregunta inmediata tras haber leido el párrafo anterior será sobre la posible existencia de los números decimales/fraccionarios/racionales, y la respuesta es que sí, también se consideran como tipo dato válido al número decimal. Además de su escritura convencional, hay una forma alternativas bastante usual: La abreviación del cero en la parte decimal o entera. O sea, es válido escribir número como `.25` y `1.` que equivalen a  `0.25` y `1.0` respectivamente. La precisión de los números es (en términos prácticos, lector interesado) de 6 lugares decimales.

### Las Cadenas (`string`)
{% pullquote %}
También vimos, en la clase, anterior, alguna luz sobre los *textos* como tipo de dato. Y efectivamente, no hay mucha ciencia en la representación de las cadenas de caracteres (este es, de ahora en adelante, el nombre con el cual nos referiremos a ellos). {" Una cadena se escribe siempre rodeada de comillas dobles `"` y puede contener caracteres *especiales*. "} Existe un par de caracteres que deben de escribirse de cierta forma para ser mostrados correctamente. Estos caracteres son: `"` y `\`. La forma de escribirlos es anteponer un slash invertido `\` al caracteres, con lo que resultarían siendo `\"` y `\\` respectivamente. Las cadenas pueden contener *saltos de línea* y tabulaciones, los cuales se representan con `\n` y `\t` respectivamente. Para finalizar, el límite de caracteres que puede contener una cadena está limitado por la cantidad de memoria que tenga un script (este concepto es todavía extraño a los recién iniciados, así que no es obligatoria su comprensión por el momento).
{% endpullquote %}

### Los Vectores (`vector`)
{% pullquote %}
Esta palabra le sonará dulce a algún lector aficionado por las matemáticas, o le traerá malos recuerdos a los demás. Afortunadamente para todos, en su expresión más simple (que es la que nos interesa), vemos a un vector como la agrupación de tres números decimales, y el uso que le daremos a estos vectores dependerá del contexto en el cual nos encontremos. Iremos descubriendo estos contextos a lo largo del curso. {" Un vector está denotado por los tres valores decimales separados por comas y rodeados de paréntesis quebrados &lt;&gt;. "} Por ejemplo: `<1.0, 1.0, 1.0>` y `<0., 13., .1>` son dos representaciones válidas de vectores.
{% endpullquote %}

### Las Rotaciones (`rotation`)
{% pullquote %}
De manera similar a los vectores, las rotaciones tienen un trasfondo matemático que, seamos sinceros, es bastante desagradable. Pero estimado lector, no deberá usted sufrir de ningún disgusto a lo largo del curso, ya que lo único que usted debe de saber de las rotaciones es que se utilizan para representar la forma en la cual un objeto se encuentra rotado respecto a un punto referencial. De forma práctica, **nunca** manipularemos manualmente ni directamente los valores de una rotación, por lo cual estaremos libres de intentar entender los principios matemáticos que las rigen. Aún así, debemos de saber que {" las rotaciones se escriben casi igual a los vectores, con la única diferencia que no son tres, sino cuatro los valores decimales a agrupar "}.
{% endpullquote %}

### Los Keys (`key`)
{% pullquote %}
Muchas de las funciones que estudiaremos, o más concretamente, muchas de las más *útiles*, tendrán que ver con el manejo de avatares y objetos dentro del mundo. De esta manera, para su funcionamiento, se requerirá indicarle a estas funciones exactamente con qué o con quién *actuar*, y la única forma de hacerlo será a través de los keys. {" Un key es un identificador único para cada objeto y cada avatar que existe en el mundo. "} Este identificador está formado por una serie de 36 dígitos del sistema de numeración hexadecimal (o sea, 0 - F) y están separados por una serie de guiones simples. Por ejemplo `"a822ff2b-ff02-461d-b45d-dcd10a2de0c2"` es un key válido. En términos estrictamente prácticos, no hay diferencia alguna entre una cadena común y corriente y un key, salvo que este último, aparte de ser necesario por algunas funciones como dijimos al inicio, se encarga de *verificar* que hayamos introducido un valor correcto (en caso creemos keys manualmente).
{% endpullquote %}

Existe un tipo de dato más adicional muy interesante que es la Lista (`list`), pero por su naturaleza algo más compleja, tendremos que revisarla en una clase posterior.

## Variables y Constantes
Nos detuvimos un buen tiempo para revisar algunos asuntos teóricos en cuanto al lenguaje se refiere, pero es hora de ver algo un poco más concreto: aprenderemos qué son las variables (y de paso las constantes).


### Variables
Si el lector recuerda alguna de sus clases de matemáticas en la escuela o similares, recordará haber escuchado el término **variable** en algún momento. Análogamente al concepto *matemático* de una variable, en términos de *scripting*, una variable es *algo* que es bastante propenso a cambiar, pero que recibe un nombre para referirnos a ello en cualquier momento, independientemente de si ha cambiado o no.

Por ejemplo, si visitó algún centro comercial con sus amigos y cada uno de ustedes recibió un mensaje de bienvenida automático, pero personalizado conteniendo cada uno de sus nombres, podremos decir que el mensaje en cuestión es constante, pero que algunas partes de él como el nombre que se muestra es parte de una variable. Podemos ver también algo de esto en las jarras de propinas, que tienen un contador *variable* del dinero que ha sido donado hasta el momento y el nombre de la persona que hizo la última donación.

Podemos también pensar en las variables como parte del *cerebro* del script, siendo aquellos lugares en donde podemos almacenar información de forma permanente hasta que algo o alguien decida cambiar sus contenidos.

En efectos prácticos, podemos definir una variable utilizando la siguiente sintaxis:

```
tipo nombre[ = valor];
```

Todo aquello encerrado entre corchetes es de escritura opcional. Esto quiere decir, refiriéndonos al caso de las variables, que podemos crearlas y asignarles un valor de manera inmediata, esto es particularmente útil para cuando necesitemos definir algunos valores que se repetirán mucho a lo largo del *script* o que queremos que los usuarios del *script* puedan *configurar* estos parámetros a su gusto sin tener que alterar nada más que esas líneas iniciales. Volviendo al `tipo`: toda variable debe de especificarse con el tipo de dato que esta contendrá, si tratamos con una cadena, el tipo será `string`, o si es un número entero `integer`, para los demás tipos de datos, sus nombres están escritos entre paréntesis en cada título de esta lección.

Veamos un ejemplo práctico del uso de las variables en nuestro primer script, el Hola Avatar:

```lsl
string nombre = "Tiaeld Tolsen";

default {
    state_entry() {
        llSay(0, "¡Hola, " + nombre + "!");
    }

    touch_start(integer total_number) {
        llSay(0, "Tocaste el prim de " + nombre);
    }
}
```
Notarán cómo utilizo el operador de suma `+` para *unir* una cadena a una variable. Este procedimiento, cuando se trata de dos o más cadenas, recibe el nombre de *concatenación*. Así que cada vez que querramos coser un `string` con otro, simplemente utilizamos `+`. Noten también que esta *concatenación* se hace *tal cual*, por lo que habrán que agregar los espacios que hagan falta para producir una oración correctamente escrita si se desea.

También podemos hacer operaciones utilizando variables, por ejemplo:

```lsl
string nombre = "Tiaeld";
string apellido = "Tolsen";
integer veces;

default {
    state_entry() {
        string nombre_completo = nombre + " " + apellido;
        llSay(0, "Este es el prim de " + nombre_completo);
    }

    touch_start(integer total_number) {
        veces = veces + 1;
        llSay(0, "Tocaste este prim " + veces + " veces.");
    }
}
```

Introduje un par de nuevas cosas de manera sutil en este script que imagino se habrán dado cuenta:

- Se pueden crear variables tant *fuera* de los estados como *dentro* de los eventos. El único lugar en donde no podemos crear variables es dentro de un estado (no de un evento, si no sólamente dentro de un estado).
- Una vez que una variable es definida, podemos cambiar su valor llamándola sólamente por su nombre las veces siguientes, como es el caso de `veces`.
- Podemos utilizar el mismo valor de la variable para volver a definir su valor. No habrá ningún problema con esto ya que **las operaciones se ejecutan antes** de asignar valores a variables.

El lector podrá preguntarse si, en el ejemplo anterior, `nombre_completo` podrá ser utilizado en veces posteriores (como por ejemplo, en `touch_start`), la respuesta es **no**, **una variable definida dentro de un bloque de código (como un evento) no será *visible* fuera de este**. Si intenta referirse a `nombre_completo` desde `touch_start` obtendrá una alerta del editor de *scripts* que le impedirá continuar.

De esta misma forma, las variables que se definan antes de los estados, podrán utilizarse a lo largo de todo el script, y normalmente se las llama ***variables globales*** por este motivo.

¿Y si `veces` jamás obtuvo un valor al ser definida, cómo puede funcionar nuestro *script*? Sucede que todas las variables, al no definirlas con un valor específico, son *creadas* con un valor por defecto. Concretamente, los valores por defecto de todos los tipos de datos se encuentran en la siguiente tabla:

| Tipo       | Valor              |
| ---------- | ------------------ |
| `integer`  | `0`
| `float`    | `0.`
| `string`   | `""`
| `vector`   | `<0., 0., 0.>`
| `rotation` | `<0., 0., 0., 1.>`
| `key`      | `""`
| `list`     | `[]`

Y para finalizar nuestra lección, veremos un último ejemplo mucho más completo, y con más cosas nuevas que serán explicadas a continuación:

{% include_code Ejemplo Completo de Variables/Constantes variables_constantes.lsl %}

- *¿Podemos asignar una función a una variable?* En realidad estamos asignando el **resultado** de la función a la variable. **Algunas funciones producen un dato tras ser *invocadas.*** En este caso `llGetKey()` produce el key del prim donde se encuentra el script actualmente.
- Ya que nuestra variable `prim` es del tipo `key`, y por lo visto anteriormente, `llSay` acepta sólamente datos del tipo `string`, se tiene que realizar una ***conversión***, convertir un dato de un tipo a otro es tan sencillo como **encerrar entre paréntesis el tipo de dato al que queremos transformar nuestro valor actual**. En este caso, transformamos a `prim` de `key` a `string`.
- `llSetColor` es una función nueva para nosotros, y como su nombre lo indica, cambia el color del cual está pintado el prim que contiene el script. Sin embargo, se requieren dos datos para su correcta ejecución: el color y la cara a pintar. Vemos que alimentamos a `llSetColor` con nuestra variable de tipo `vector`, esto es debido a que el color en términos de *scripting* se representa siempre de esta forma, siendo **cada uno de los números decimales correspondiente a la cantidad de color Rojo, Verde y Azul del color a representar, variando desde 0.0 a 1.0**, el lector tiene como ejercicio variar estos valores a gusto para obtener colores distintos. Para finalizar, el otro dato necesario es un número entero que puede variar desde `0` hasta el número de caras que tenga el prim, o la *constante* `ALL_SIDES`, que explicaremos a continuación.
- Las *variables* (a primera vista) `ZERO_ROTATION` y `ALL_SIDES` son lo que llamamos **constantes**. **Una constante es, sencillamente, una variable cuya valor jamás cambiará**, el lenguaje de *scripting* tiene una extensa lista de constantes de distintos tipos que tienen diversas utilidades. Concretamente, `ZERO_ROTATION` representa una rotación *nula*, y `ALL_SIDES` se usa junto con `llSetColor` para indicar que se habrán de *pintar* todas las caras del prim.
- `llSleep` tiene como propósito *pausar* al script por cierta cantidad de tiempo, que justamente es el único dato que necesita para funcionar y que necesariamente tiene que ser de tipo `float`. Notarán que una vez se ha hecho click al *prim*, habrá una pausa de un segundo y medio antes de ejecutar la siguiente acción.
- `llSetRot` cambia la rotación del prim respecto al mundo. Si no rotamos al prim que contiene este script manualmente, no se observará el efecto, de otra forma, le veremos regresar a su posición *inicial*. Como se observa, sólo necesita como dato la rotación a aplicarse sobre el prim.

Y esta sería toda la lección. No se olviden de formular sin tapujo alguno todo tipo de aclaración, sugerencia, duda, corrección o comentario que crean conveniente. Haremos cosas mucho menos pesadas y más divertidas de ahora en adelante.