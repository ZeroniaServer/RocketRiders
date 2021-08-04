##Summons marker entity for Canopies
execute if entity @s[tag=YellowPlat] run summon marker ~ ~ ~ {Tags:["YellowPlatform","tempPlat"]}
execute if entity @s[tag=BluePlat] run summon marker ~ ~ ~ {Tags:["BluePlatform","tempPlat"]}
execute if entity @s[tag=YellowPlat] store result score @e[type=marker,tag=YellowPlatform,tag=tempPlat,limit=1] pearlOwnerUUID run scoreboard players get @s pearlOwnerUUID
execute if entity @s[tag=BluePlat] store result score @e[type=marker,tag=BluePlatform,tag=tempPlat,limit=1] pearlOwnerUUID run scoreboard players get @s pearlOwnerUUID
tag @e[type=marker,tag=tempPlat] remove tempPlat