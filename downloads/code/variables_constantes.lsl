string mensaje = "Hola, soy el prim con key";
float segundos = 1.5;
vector color = <0., 0., 1.>;
rotation cero = ZERO_ROTATION;

default {
    state_entry() {
        key prim = llGetKey();
        llSay(0, mensaje + " " + (string)prim);
    }

    touch_start(integer num_detected) {
        llSetColor(color, ALL_SIDES);
        llSleep(segundos);
        llSetRot(cero);
    }
}
