##Overhauls default arrow pickup system to give custom named tipped arrows
#Pickup conditions
execute as @a[x=0,team=!Spectator] at @s as @e[type=#arrows,scores={arrowtime=10..},nbt={inGround:1b},limit=1,distance=..2,sort=nearest] if items entity @s contents tipped_arrow run tag @s add pickup

#Give appropriate tipped arrow
execute as @a[x=0,team=!Spectator,tag=!fullOffhand] at @s as @e[type=#arrows,tag=pickup,tag=!tippedpickup,limit=1,distance=..2,sort=nearest] at @s run function rr_powerups:everytick/tipped_arrow_replace
execute as @e[x=0,type=#arrows,tag=pickup,tag=!tippedpickup,tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"blindness"}] at @s run loot give @p[team=!Spectator,distance=..2,tag=fullOffhand] loot items:misc/tipped_arrow_blindness
execute as @e[x=0,type=#arrows,tag=pickup,tag=!tippedpickup,tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"levitation"}] at @s run loot give @p[team=!Spectator,distance=..2,tag=fullOffhand] loot items:misc/tipped_arrow_levitation
execute as @e[x=0,type=#arrows,tag=pickup,tag=!tippedpickup,tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"slowness"}] at @s run loot give @p[team=!Spectator,distance=..2,tag=fullOffhand] loot items:misc/tipped_arrow_slowness
execute as @e[x=0,type=#arrows,tag=pickup,tag=!tippedpickup,tag=!given] if items entity @s contents tipped_arrow[custom_data~{tipped_arrow_type:"wither"}] at @s run loot give @p[team=!Spectator,distance=..2,tag=fullOffhand] loot items:misc/tipped_arrow_wither
tag @a[x=0] remove fullOffhand
execute as @a[x=0] if items entity @s weapon.offhand * run tag @s add fullOffhand

#Hotfix because bad tick order
execute as @a[x=0,team=!Spectator] at @s as @e[type=#arrows,scores={arrowtime=10..},nbt={inGround:1b},limit=1,distance=..2,sort=nearest] if items entity @s contents tipped_arrow run tag @s add tippedpickup