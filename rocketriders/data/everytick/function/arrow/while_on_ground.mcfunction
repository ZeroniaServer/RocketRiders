##Overhauls default arrow pickup system to give custom named arrows

execute if entity @s[tag=arrow_pickup.done] run return run kill @s

scoreboard players add @s entity.age 1

# Destroy arrows shot into the fake void in the lobby
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{min:186,max:187}}}}} run return run kill @s

# Destroy grounded intangible arrows
execute if predicate custom:intangible_arrow run return run execute if score @s entity.age matches 5.. run function custom:kill_with_smoke_poof

# Item Pickup
scoreboard players set $give_item var 0
execute unless entity @s[tag=arrow_pickup.done] if score @s entity.age matches 6.. unless predicate custom:intangible_arrow as @a[limit=1,distance=..2,gamemode=!spectator,predicate=custom:can_pick_up_arrows] store success score $give_item var run tag @s add arrow_pickup.target
execute unless entity @s[tag=arrow_pickup.done] if score @s entity.age matches 6.. if predicate custom:intangible_arrow as @a[limit=1,distance=..2,gamemode=creative] store success score $give_item var run tag @s add arrow_pickup.target
execute if score $give_item var matches 0 run return fail
execute unless data entity @s {inGround:true} run return run tag @a[x=0,tag=arrow_pickup.target] remove arrow_pickup.target

tag @s add arrow_pickup.done
execute unless predicate custom:intangible_arrow if items entity @s contents *[custom_data~{id:"arrow"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give/arrow {count:1}
execute unless predicate custom:intangible_arrow if items entity @s contents *[custom_data~{id:"tipped_arrow_blindness"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give/tipped_arrow_blindness {count:1}
execute unless predicate custom:intangible_arrow if items entity @s contents *[custom_data~{id:"tipped_arrow_levitation"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give/tipped_arrow_levitation {count:1}
execute unless predicate custom:intangible_arrow if items entity @s contents *[custom_data~{id:"tipped_arrow_slowness"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give/tipped_arrow_slowness {count:1}
execute unless predicate custom:intangible_arrow if items entity @s contents *[custom_data~{id:"tipped_arrow_wither"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give/tipped_arrow_wither {count:1}
execute unless predicate custom:intangible_arrow if items entity @s contents *[custom_data~{id:"spectral_arrow"}] as @a[limit=1,x=0,tag=arrow_pickup.target] run function items:give/spectral_arrow {count:1}
execute at @a[limit=1,x=0,tag=arrow_pickup.target] run tp @s ~ ~0.6 ~
data modify entity @s Air set value 1
data modify entity @s Air set value 0
tag @a[x=0,tag=arrow_pickup.target] remove arrow_pickup.target
