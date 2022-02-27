//Valores aleatorios
randomize();
InicioEnemigoY = irandom_range(-60,-200);
InicioEnemigoX = irandom_range(30, room_width-30);

//Creacion
if (instance_number( o_enemigo) < cantidadEnemigos) {
    //if (place_free(InicioEnemigoX, InicioEnemigoY)){
        if (distance_to_object( o_enemigo) > 100){
            instance_create( InicioEnemigoX, InicioEnemigoY, o_enemigo);
        }
    //}
}

//Reposicion
if (o_enemigo.y >= room_height + 60){
    o_enemigo.y = InicioEnemigoY;
    o_enemigo.x = InicioEnemigoX;
}
