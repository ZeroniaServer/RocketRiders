# fix modification room
place template world_updates:1_3_0-pre15/modification_room -72 189 67 none none 1 0 strict
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns

# change lobby team color to gray
team modify rocketriders.sort_200.lobby color gray
