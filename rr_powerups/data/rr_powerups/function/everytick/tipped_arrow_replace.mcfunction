#Support function for tipped arrow pickup
tag @a[x=0] remove fullOffhand
execute as @a[x=0] if items entity @s weapon.offhand * run tag @s add fullOffhand
execute if entity @s[tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"blindness"}] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] if items entity @s container.* tipped_arrow[custom_data~{tipped_arrow_type:"blindness"},count~{max:63}] run return run tag @s add fullOffhand
execute if entity @s[tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"levitation"}] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] if items entity @s container.* tipped_arrow[custom_data~{tipped_arrow_type:"levitation"},count~{max:63}] run return run tag @s add fullOffhand
execute if entity @s[tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"slowness"}] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] if items entity @s container.* tipped_arrow[custom_data~{tipped_arrow_type:"slowness"},count~{max:63}] run return run tag @s add fullOffhand
execute if entity @s[tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"wither"}] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] if items entity @s container.* tipped_arrow[custom_data~{tipped_arrow_type:"wither"},count~{max:63}] run return run tag @s add fullOffhand

execute if entity @s[tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"blindness"}] run loot replace entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand loot items:misc/tipped_arrow_blindness
execute if entity @s[tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"levitation"}] run loot replace entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand loot items:misc/tipped_arrow_levitation
execute if entity @s[tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"slowness"}] run loot replace entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand loot items:misc/tipped_arrow_slowness
execute if entity @s[tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"wither"}] run loot replace entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand loot items:misc/tipped_arrow_wither
execute if entity @s[tag=!given] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @s add given