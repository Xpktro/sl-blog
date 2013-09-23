---
layout: post
title: "Lección 0: Hola Avatar"
date: 2013-09-06 01:20
comments: true
categories: LSL2
---

{% include_code El infame Hola Avatar hello_avatar.lsl %}

Antes de preocuparnos por entender la maravillosa pieza de código que encabeza esta lección, enfoquémonos por un momento en el aspecto *filosófico* del *scripting*.

<!-- more -->

{% pullquote %}
En pocas y concretas palabras, {" un *script* es **un conjunto de instrucciones que le dicen a un objeto cómo reaccionar ante determinados eventos** "}. Escriban eso y ténganlo siempre presente; **toda** la lógica de un script se reduce a esa oración, demostraremos que esto es verdad a lo largo del curso, pero pondré un par de ejemplos para aclarar la situación:
{% endpullquote %}

### Una Poseball
- **Evento:** Un avatar se sienta.
- **Objeto que reacciona:** La bola/silla/cama/etc donde uno se sienta.
- **Reacción:** Ejecutar una animación sobre el avatar.

<div style="text-align: center;"><img src="/images/poseball.png" width="300"><img src="/images/poseball2.png" width="300"></div>
<br>

### Un TipJar (alcancía)
- **Evento:** Un avatar le entrega dinero al TipJar.
- **Objeto que reacciona:** El TipJar.
- **Reacción:** Agradecer al donador/actualizar el contador de cantidades recibidas.

<div style="text-align: center;"><img src="/images/tipjar.png" width="400"><img src="/images/tipjar2.png" height="200"></div>
<br>

### Una Puerta
- **Evento:** Un avatar da un click a la puerta.
- **Objeto que reacciona:** La Puerta.
- **Reacción:** La puerta gira para abrirse/cerrarse.

<div style="text-align: center;"><img src="/images/door.png" width="300"><img src="/images/door2.png" width="300"></div>
<br>

También existen acciones/reacciones algo más complejas o abstractas, como la colisión entre dos objetos, o la lectura de una notecard, pero no es necesario marearse tanto en este momento. Lo único que debemos de saber y reconocer desde ahora es a ver el mundo desde esta nueva perspectiva: Acción -> Objeto -> Reacción.

Ya tenemos vista la *filosofía* detrás del *scripting*, pero ¿ahora qué?; ¿cómo es que le decimos a nuestros objetos que hagan tal o cual cosa?, la respuesta es sencilla: a través del *scripting*. Como actualmente las máquinas/programas son algo tontos y todavía no pueden entender las palabras que utilizamos las personas para comunicarnos, debemos de utilizar un **código** para hacernos entender, y que las máquinas (en este caso, los objetos del mundo) nos entiendan. Este **código** tiene una serie de reglas que definen su estructura. A diferencia de los lenguajes que utilizamos para comunicarnos entre las personas, para con las máquinas **debemos de mantener siempre una misma estructura**, porque, como ya dije anteriormente, (todavía) son algo torpes para entendernos.

El código que utilizaremos para comunicarnos con nuestros objetos se llama **LSL2**, el 2 indica que hubo una *versión* anterior en algún momento del pasado que ya no es vigente, y que por comodidad nos referiremos (al igual que la gran mayoría de residentes) a él como simplemente **LSL** (siglas de *Linden Scripting Language*, ¿ahora entiende lo que significa?). Todo el código que escribamos deberá de estar contenido en un *script*, y este *script* residirá al *interior* del objeto que querramos que reaccione. Veremos ejemplos concretos de estos procedimientos en la siguiente lección.

Una de las cosas para lo que las máquinas sí sirven, y muy bien, es poder realizar muchas tareas en simultáneo (o hacerlas tan rápido que pareciera que es así), entonces es posible tener más de un *script* en un objeto, y que este pueda responder de cuantas formas se haya definido en todos sus scripts en simultáneo.

Sin nada más que agregar, vamos a ponernos manos a la obra con nuestro hasta ahora inentendido *Hola Avatar* desde un enfoque algo más técnico en la siguiente lección.
