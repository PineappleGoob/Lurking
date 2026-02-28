

if place_meeting(x,y,Player_OBJ) {
if (image_index==2) {
image_speed = 0
if (!instance_exists(DBCard_Obj) && dbcardtrue == false){
dbcardtrue = true
instance_create_layer(x,y,"Instances",DBCard_Obj)
}
}
else {
image_speed = 0.2

}
}