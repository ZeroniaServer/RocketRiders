execute as @e[type=marker,tag=ChaseBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.2 1
execute as @e[type=marker,tag=MissileBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run summon armor_stand ~ ~-1.25 ~ {Marker:1b,NoGravity:1b,Silent:1b,DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,Tags:["ChaseDisplay"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1496056446,289164664,-1164473588,2057181986],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU0MzUyNjgwZDBiYjI5YjkxMzhhZjc4MzMwMWEzOTFiMzQwOTBjYjQ5NDFkNTJjMDg3Y2E3M2M4MDM2Y2I1MSJ9fX0="}]}}}}]}
execute as @e[type=marker,tag=UtilBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run summon armor_stand ~ ~-1.25 ~ {Marker:1b,NoGravity:1b,Silent:1b,DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,Tags:["ChaseDisplay"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;420496346,704925621,-2097778403,1450691027],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdkNTdiNWJjOWFiM2Y1M2VjOWNjMmY5NGI3MmMxMzRhY2RlODU1YTY0M2MyNWU1YTI2YzNlMGIyYTYwM2FkZCJ9fX0="}]}}}}]}
execute as @e[type=marker,tag=ArrowBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run summon armor_stand ~ ~-1.25 ~ {Marker:1b,NoGravity:1b,Silent:1b,DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,Tags:["ChaseDisplay"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;420734319,-1890433985,-1632698173,2137911659],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzNjM2E5YmRjOGM0MGM0MmQ4NDFkYWViNzFlYTllN2QxYzU0YWIzMWEyM2EyZDkyNjU5MWQ1NTUxNDExN2U1ZCJ9fX0="}]}}}}]}
execute as @e[type=marker,tag=CrystalBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run summon armor_stand ~ ~-1.25 ~ {Marker:1b,NoGravity:1b,Silent:1b,DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,Tags:["ChaseDisplay"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-574299329,-321237855,-1185928000,1051946001],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQ5ZDIxMmJmYzBhMzRhNzA3NjNlMmE2OGRlNGZhOTI3MGNjZjJkODA3MWIxY2M4MzgxM2U0MTA2YjlkMWRmZSJ9fX0="}]}}}}]}

execute as @e[type=marker,tag=MissileBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2000000000,Tags:["ChaseText"],CustomName:'{"text":"Random Missile","color":"red","bold":true}',CustomNameVisible:1b}
execute as @e[type=marker,tag=UtilBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2000000000,Tags:["ChaseText"],CustomName:'{"text":"Random Utility","color":"light_purple","bold":true}',CustomNameVisible:1b}
execute as @e[type=marker,tag=ArrowBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2000000000,Tags:["ChaseText"],CustomName:'{"text":"Arrows","color":"aqua","bold":true}',CustomNameVisible:1b}
execute as @e[type=marker,tag=CrystalBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2000000000,Tags:["ChaseText"],CustomName:'{"text":"End Crystal","color":"yellow","bold":true}',CustomNameVisible:1b}

execute as @e[type=marker,tag=ChaseBlock,tag=!Display] at @s if entity @a[team=!Spectator,distance=..12] run tag @s add Display

execute as @e[type=marker,tag=ChaseBlock,tag=Display] at @s unless entity @a[team=!Spectator,distance=..12] positioned ~ ~-1.25 ~ run tag @e[type=armor_stand,tag=ChaseDisplay,sort=nearest,limit=1,distance=..2] add RemoveDisplay
execute as @e[type=marker,tag=ChaseBlock,tag=Display] at @s unless entity @a[team=!Spectator,distance=..12] positioned ~ ~1 ~ run tag @e[type=area_effect_cloud,tag=ChaseText,sort=nearest,limit=1,distance=..2] add RemoveDisplay
execute as @e[type=marker,tag=ChaseBlock,tag=Display] at @s unless entity @a[team=!Spectator,distance=..12] run tag @s remove Display

execute as @e[type=armor_stand,tag=ChaseDisplay] at @s unless block ~ ~1.25 ~ red_stained_glass unless block ~ ~1.25 ~ cyan_stained_glass unless block ~ ~1.25 ~ purple_stained_glass unless block ~ ~1.25 ~ tinted_glass run tag @s add RemoveDisplay
execute as @e[type=area_effect_cloud,tag=ChaseText] at @s unless block ~ ~-0.5 ~ red_stained_glass unless block ~ ~-0.5 ~ cyan_stained_glass unless block ~ ~-0.5 ~ purple_stained_glass unless block ~ ~-0.5 ~ tinted_glass run tag @s add RemoveDisplay
tp @e[type=armor_stand,tag=RemoveDisplay] ~ ~-200 ~
kill @e[type=armor_stand,tag=RemoveDisplay]

execute as @e[type=armor_stand,tag=ChaseDisplay] at @s run tp @s ~ ~ ~ ~5 ~