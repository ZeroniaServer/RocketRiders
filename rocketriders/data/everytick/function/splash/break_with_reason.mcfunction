execute on origin run tag @s add kill_with_reason.thrower
$title @a[limit=1,tag=kill_with_reason.thrower] actionbar {color:"red",text:"$(message)"}
execute as @a[limit=1,tag=kill_with_reason.thrower] run function custom:player/delay_actionbar
execute on origin run tag @s remove kill_with_reason.thrower

execute positioned as @s run particle minecraft:item{item:{id:"lingering_potion",components:{"minecraft:potion_contents":"minecraft:water"}}} ~ ~ ~ 0 0 0 0.05 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute positioned as @s run particle minecraft:splash ~ ~ ~ 0 0 0 0.1 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute on origin run tag @s add splash.origin
execute at @s run playsound minecraft:block.glass.break master @a[x=0,tag=!splash.origin] ~ ~ ~ 1 2
execute at @s run playsound minecraft:block.glass.break master @a[x=0,tag=splash.origin] ~ ~ ~ 1 2 0.5
execute on origin run tag @s remove splash.origin

kill @s
