##Overhauls default arrow pickup system to control which players can pick up arrows

execute if entity @s[tag=arrow_pickup.done] run return run kill @s

scoreboard players add @s entity.age 1

# recirculate in the pre-game queue (also shorter despawn timer and fake void)
execute if predicate game:phase/staging/queue if score @s entity.age matches 599 run return run function everytick:arrow/recirculate
execute if predicate game:phase/staging/queue if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{y:{min:186,max:187}}}}} run return run function everytick:arrow/recirculate

# Destroy grounded intangible arrows & cancel pickup
execute if predicate custom:arrows/intangible run return run execute if score @s entity.age matches 5.. run function custom:entity/kill_with_smoke_poof

# Item Pickup
scoreboard players set $give_item var 0
execute if score @s entity.age matches 6.. positioned ~-1.25 ~-1.25 ~-1.25 as @e[type=player,dx=1.5,dy=1.25,dz=1.5,predicate=custom:player/can_pick_up_arrows] store success score $give_item var run tag @s add arrow_pickup.target_candidate
execute if score $give_item var matches 0 run return fail
execute unless data entity @s {inGround:true} run return run tag @a[x=0,tag=arrow_pickup.target_candidate] remove arrow_pickup.target_candidate
tag @p[distance=0..,tag=arrow_pickup.target_candidate] add arrow_pickup.target
tag @a[x=0] remove arrow_pickup.target_candidate

tag @s add arrow_pickup.done
execute if items entity @s contents *[custom_data~{id:"arrow"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give_count/arrow {count:1}
execute if items entity @s contents *[custom_data~{id:"tipped_arrow_blindness"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give_count/tipped_arrow_blindness {count:1}
execute if items entity @s contents *[custom_data~{id:"tipped_arrow_levitation"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give_count/tipped_arrow_levitation {count:1}
execute if items entity @s contents *[custom_data~{id:"tipped_arrow_slowness"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give_count/tipped_arrow_slowness {count:1}
execute if items entity @s contents *[custom_data~{id:"tipped_arrow_wither"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give_count/tipped_arrow_wither {count:1}
execute if items entity @s contents *[custom_data~{id:"spectral_arrow"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give_count/spectral_arrow {count:1}
execute positioned as @a[limit=1,x=0,tag=arrow_pickup.target] run tp @s ~ ~0.6 ~
data modify entity @s Air set value 1
data modify entity @s Air set value 0
tag @a[x=0,tag=arrow_pickup.target] remove arrow_pickup.target
