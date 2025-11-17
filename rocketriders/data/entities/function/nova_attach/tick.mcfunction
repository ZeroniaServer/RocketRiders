execute if score @s entity.age matches 3.. on vehicle on origin run effect clear @s levitation
execute if score @s entity.age matches 8 on vehicle on origin run advancement grant @s only achievements:rr_challenges/uphere

execute if predicate custom:periodic_tick/3 on vehicle on origin at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

scoreboard players set $target_exists var 0
execute on vehicle on origin run scoreboard players set $target_exists var 1
execute if score $target_exists var matches 0 run return run function entities:nova_attach/actions/break

scoreboard players set $explode var 0
execute on vehicle on origin if predicate custom:is_on_ground run scoreboard players set $explode var 1
execute if score @s entity.age matches 15.. if score $explode var matches 1 run function entities:nova_attach/actions/explode
