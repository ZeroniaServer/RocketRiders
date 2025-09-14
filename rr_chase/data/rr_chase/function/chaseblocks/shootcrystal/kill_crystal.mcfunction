playsound minecraft:block.glass.break master @a[x=0] ~ ~ ~ 2 0
playsound minecraft:entity.shulker_bullet.hurt master @a[x=0] ~ ~ ~ 1 0.8

kill @n[distance=..2,type=armor_stand,tag=ChaseCrystal]
function custom:explosion {power:6,modifiers:{name:"End Crystal"}}
kill @s

return 1
