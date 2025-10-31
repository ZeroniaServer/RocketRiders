##Handles elytra breaking

tag @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,predicate=custom:wearing_elytra,predicate=custom:break_elytra] add elytra.break

execute as @a[x=0,tag=elytra.break,tag=!elytra.shown_break_message] run title @s title ""
execute as @a[x=0,tag=elytra.break,tag=!elytra.shown_break_message] run title @s subtitle ["",{bold:true,color:"dark_red",italic:true,text:"Elytra "},{color:"red",text:"expired!"}]
execute as @a[x=0,tag=elytra.break,tag=!elytra.shown_break_message] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.6 1
execute as @a[x=0,tag=elytra.break,tag=!elytra.shown_break_message] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 1.2
tag @a[x=0,tag=elytra.break] add elytra.shown_break_message

execute as @a[x=0,tag=elytra.break,predicate=!custom:gliding_downwards] run function custom:unequip_elytra
tag @a[x=0,tag=elytra.break,predicate=!custom:gliding_downwards] remove elytra.shown_break_message
tag @a[x=0,tag=elytra.break,predicate=!custom:gliding_downwards] remove elytra.break
