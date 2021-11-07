tag @e[type=armor_stand,tag=Selection] add SMSwitch
execute as @e[type=armor_stand,tag=Selection,scores={servermode=2}] run schedule function servermode:enabled 1t
tag @e[type=armor_stand,tag=Selection] add switchServermode
scoreboard players set @e[type=armor_stand,tag=Selection] servermode 1
tag @e[type=armor_stand,tag=Selection] add noYZELO
tag @e[type=armor_stand,tag=Selection] add stopIfEmpty
tag @e[type=armor_stand,tag=Selection] remove realms
tag @e[type=armor_stand,tag=Selection] remove SMCustom
tag @e[type=armor_stand,tag=Selection] remove Repeat
scoreboard players set @e[type=armor_stand,tag=Selection] RepeatSettings 1
fill -57 201 84 -70 201 72 barrier replace air
fill -57 198 84 -70 198 72 blackstone replace air
execute as @a run function achievements:reset
clear @a
kill @e[type=armor_stand,tag=ParkourLB]
kill @e[type=area_effect_cloud,tag=ParkourLB]
kill @e[tag=CrusadeEntity]
setblock -31 190 17 air
setblock -32 190 17 air
setblock -31 190 16 air
setblock -31 191 17 air
setblock -31 190 18 air
setblock -30 190 17 air
setblock -31 189 17 air
execute as @e[type=armor_stand,tag=Selection] run function lobby:credits/stop
fill -29 196 22 -33 196 22 air
function game:forcestop
execute as @e[type=armor_stand,tag=Selection] if entity @s[tag=Hardcore] run gamerule showDeathMessages false
execute as @e[type=armor_stand,tag=Selection] if entity @s[tag=Hardcore] as @a[tag=!hardcoreKilled] unless entity @s[tag=!WasInBlue,tag=!WasInYellow] run kill @s
execute as @e[type=armor_stand,tag=Selection] if entity @s[tag=Hardcore] as @a unless entity @s[tag=!WasInBlue,tag=!WasInYellow] run tag @s add hardcoreKilled
execute as @e[type=armor_stand,tag=Selection] if entity @s[tag=Hardcore] run gamerule showDeathMessages true
execute as @a run attribute @s minecraft:generic.max_health base set 20.0
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:globaldefaults
execute as @e[type=armor_stand,tag=Selection] run function modifiers:disablemodifiers
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
function arenaclear:hidemodroom
function servermode:forcenormal