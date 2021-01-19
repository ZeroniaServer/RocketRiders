##Selects map based on the set that won

#New Dawn map (default)
execute as @s[tag=DefaultMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] TopDeco 1
execute as @s[tag=DefaultMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] TopCorner 1
execute as @s[tag=DefaultMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] MiddleDeco 1
execute as @s[tag=DefaultMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] BottomDeco 1
execute as @s[tag=DefaultMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] PortalDeco 1

#Spikes map
execute as @s[tag=SpikesMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] TopDeco 3
execute as @s[tag=SpikesMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] TopCorner 2
execute as @s[tag=SpikesMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] MiddleDeco 2
execute as @s[tag=SpikesMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] BottomDeco 2
execute as @s[tag=SpikesMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] PortalDeco 1

#Empty map
execute as @s[tag=EmptyMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] TopDeco 0
execute as @s[tag=EmptyMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] TopCorner 0
execute as @s[tag=EmptyMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] MiddleDeco 0
execute as @s[tag=EmptyMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] BottomDeco 0
execute as @s[tag=EmptyMap] run scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] PortalDeco 0

#Randomized map
execute as @s[tag=RandomMap] run summon area_effect_cloud ~ ~ ~ {Tags:["RandomTop","RandomBases"],Duration:2000000000}
execute as @s[tag=RandomMap] run scoreboard players set @e[tag=RandomTop,type=area_effect_cloud] RNGmax 4
execute as @s[tag=RandomMap] as @e[tag=RandomTop,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @s[tag=RandomMap] as @e[tag=RandomTop,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=RandomMap] run scoreboard players operation @e[tag=Selection,type=armor_stand,limit=1] TopDeco = @e[tag=RandomTop,limit=1,type=area_effect_cloud] RNGscore

execute as @s[tag=RandomMap] run summon area_effect_cloud ~ ~ ~ {Tags:["RandomTopSides","RandomBases"],Duration:2000000000}
execute as @s[tag=RandomMap] run scoreboard players set @e[tag=RandomTopSides,type=area_effect_cloud] RNGmax 4
execute as @s[tag=RandomMap] as @e[tag=RandomTopSides,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @s[tag=RandomMap] as @e[tag=RandomTopSides,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=RandomMap] run scoreboard players operation @e[tag=Selection,type=armor_stand,limit=1] TopCorner = @e[tag=RandomTopSides,limit=1,type=area_effect_cloud] RNGscore

execute as @s[tag=RandomMap] run summon area_effect_cloud ~ ~ ~ {Tags:["RandomMiddle","RandomBases"],Duration:2000000000}
execute as @s[tag=RandomMap] run scoreboard players set @e[tag=RandomMiddle,type=area_effect_cloud] RNGmax 4
execute as @s[tag=RandomMap] as @e[tag=RandomMiddle,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @s[tag=RandomMap] as @e[tag=RandomMiddle,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=RandomMap] run scoreboard players operation @e[tag=Selection,type=armor_stand,limit=1] MiddleDeco = @e[tag=RandomMiddle,limit=1,type=area_effect_cloud] RNGscore

execute as @s[tag=RandomMap] run summon area_effect_cloud ~ ~ ~ {Tags:["RandomBottom","RandomBases"],Duration:2000000000}
execute as @s[tag=RandomMap] run scoreboard players set @e[tag=RandomBottom,type=area_effect_cloud] RNGmax 4
execute as @s[tag=RandomMap] as @e[tag=RandomBottom,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @s[tag=RandomMap] as @e[tag=RandomBottom,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=RandomMap] run scoreboard players operation @e[tag=Selection,type=armor_stand,limit=1] BottomDeco = @e[tag=RandomBottom,limit=1,type=area_effect_cloud] RNGscore
#Extra precaution - no bottom deco if layered is on
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1,scores={MiddleDeco=3}] BottomDeco 0

#Always use glass rim portals
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] PortalDeco 1

kill @e[tag=RandomBases,type=area_effect_cloud]