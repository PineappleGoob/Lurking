

_colliding = place_meeting(x, y, tilemap);





if (_colliding) {
y_speed = 0
global.dbs = 1
if (global.doublejump == 2) {
global.dbs = 2
}


show_debug_message(global.doublejump, dbs)
}
 //else if (global.doublejump == true && dbs == 1) {
//	dbs = 0
//	show_debug_message("doing function db")
//		show_debug_message("pizza time")
  //      y_speed = -jump_power * 2; 

//}
else {
y_speed = y_speed + gravitys

}
if (global.dbs > 0) {
    if (keyboard_check_pressed(vk_up)) { // and the up arrow key is pressed
		global.dbs = global.dbs - 1

        y_speed = -jump_power; 

    } 
}
x_speed = keyboard_check(vk_right) - keyboard_check(vk_left)
x_speed = x_speed * walk_speed
if (place_meeting(x+x_speed, y, tilemap)) {

    while (!place_meeting(x + sign(x_speed), y, tilemap))
    {
        x += sign(x_speed);
    }
    x_speed = 0;

}
if (place_meeting(x, y+y_speed, JumpCancel)) {

    while (!place_meeting(y + sign(y_speed), y, tilemap))
    {
        y += sign(y_speed);
    }
    y_speed = 0;

}

if (x_speed > 0) {
	x_speed = x_speed - 0.5
}
if (x_speed < 0) {
x_speed = x_speed + 0.5
}

if (place_meeting(x,y, RoomMove_OBJ)) {
if (room == Room1) {
room_goto(Room2)
}
else if (room == Room2) {
room_goto(Room3)
}
else if (room == Room3) {
room_goto(Room6)
}
}

if (place_meeting(x,y,DBChest_Obj)) {
global.doublejump = 2
}


move_and_collide(x_speed, y_speed, oSolid);
