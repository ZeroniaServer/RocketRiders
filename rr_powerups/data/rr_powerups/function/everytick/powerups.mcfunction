#broken elytra replacing
execute as @a[x=0,team=Blue] at @s if items entity @s armor.chest elytra if predicate custom:canopy_nearyellow run tag @s add BreakEly
execute as @a[x=0,team=Yellow] at @s if items entity @s armor.chest elytra if predicate custom:canopy_nearblue run tag @s add BreakEly

execute as @a[x=0,team=Blue] if items entity @s armor.chest elytra[damage=6] run tag @s add BreakEly
execute as @a[x=0,team=Yellow] if items entity @s armor.chest elytra[damage=6] run tag @s add BreakEly

execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] run title @s title ["",{"text":" "}]
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] run title @s subtitle ["",{"text":"Elytra ","color":"dark_red","italic":true,"bold":true},{"text":"expired!","color":"red"}]
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.6 1
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 1.2
tag @a[x=0,tag=BreakEly] add BreakElyMsg
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team,tag=BreakEly,predicate=custom:not_falling] run function custom:unequip_elytra
tag @a[x=0,tag=BreakElyMsg,predicate=custom:not_falling] remove BreakEly
tag @a[x=0,tag=BreakElyMsg,predicate=custom:not_falling] remove BreakElyMsg
