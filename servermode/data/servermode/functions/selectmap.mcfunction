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
execute as @s[tag=RandomMap] run summon marker ~ ~ ~ {Tags:["RandomTop","RandomBases"]}
execute as @s[tag=RandomMap] run scoreboard players set @e[tag=RandomTop,type=marker] RNGmax 3
execute as @s[tag=RandomMap] as @e[tag=RandomTop,type=marker] store result score @s RNGscore run data get entity @s UUID[0]
execute as @s[tag=RandomMap] as @e[tag=RandomTop,type=marker] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=RandomMap] as @e[tag=RandomTop,type=marker] run scoreboard players add @s RNGscore 1
execute as @s[tag=RandomMap] run scoreboard players operation @e[tag=Selection,type=armor_stand,limit=1] TopDeco = @e[tag=RandomTop,limit=1,type=marker] RNGscore

execute as @s[tag=RandomMap] run summon marker ~ ~ ~ {Tags:["RandomTopSides","RandomBases"]}
execute as @s[tag=RandomMap] run scoreboard players set @e[tag=RandomTopSides,type=marker] RNGmax 3
execute as @s[tag=RandomMap] as @e[tag=RandomTopSides,type=marker] store result score @s RNGscore run data get entity @s UUID[0]
execute as @s[tag=RandomMap] as @e[tag=RandomTopSides,type=marker] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=RandomMap] as @e[tag=RandomTopSides,type=marker] run scoreboard players add @s RNGscore 1
execute as @s[tag=RandomMap] run scoreboard players operation @e[tag=Selection,type=armor_stand,limit=1] TopCorner = @e[tag=RandomTopSides,limit=1,type=marker] RNGscore

execute as @s[tag=RandomMap] run summon marker ~ ~ ~ {Tags:["RandomMiddle","RandomBases"]}
execute as @s[tag=RandomMap] run scoreboard players set @e[tag=RandomMiddle,type=marker] RNGmax 3
execute as @s[tag=RandomMap] as @e[tag=RandomMiddle,type=marker] store result score @s RNGscore run data get entity @s UUID[0]
execute as @s[tag=RandomMap] as @e[tag=RandomMiddle,type=marker] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=RandomMap] as @e[tag=RandomMiddle,type=marker] run scoreboard players add @s RNGscore 1
execute as @s[tag=RandomMap] run scoreboard players operation @e[tag=Selection,type=armor_stand,limit=1] MiddleDeco = @e[tag=RandomMiddle,limit=1,type=marker] RNGscore

execute as @s[tag=RandomMap] run summon marker ~ ~ ~ {Tags:["RandomBottom","RandomBases"]}
execute as @s[tag=RandomMap] run scoreboard players set @e[tag=RandomBottom,type=marker] RNGmax 3
execute as @s[tag=RandomMap] as @e[tag=RandomBottom,type=marker] store result score @s RNGscore run data get entity @s UUID[0]
execute as @s[tag=RandomMap] as @e[tag=RandomBottom,type=marker] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=RandomMap] as @e[tag=RandomBottom,type=marker] run scoreboard players add @s RNGscore 1
execute as @s[tag=RandomMap] run scoreboard players operation @e[tag=Selection,type=armor_stand,limit=1] BottomDeco = @e[tag=RandomBottom,limit=1,type=marker] RNGscore
#Extra precaution - no bottom deco if layered is on
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1,scores={MiddleDeco=3}] BottomDeco 0

#Always use glass rim portals
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] PortalDeco 1

kill @e[tag=RandomBases,type=marker]