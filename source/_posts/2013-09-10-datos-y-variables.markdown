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

Si el lector recuerda alguna de sus clases de matemáticas en la escuela o similares, recordará haber escuchado el término **variable** en algún momento. Análogamente al concepto *matemático* de una variable, en términos de *scripting*, una variable es *algo* que es bastante propenso a cambiar, pero que recibe un nombre para referirnos a ello en cualquier momento, independientemente de si ha cambiado o no.

-> Probando texto centrado <-