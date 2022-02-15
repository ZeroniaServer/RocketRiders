##Selects map based on the set that won

#New Dawn map (default)
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] TopDeco 1
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] TopCorner 1
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] MiddleDeco 1
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] BottomDeco 1
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] PortalDeco 1

#Spikes map
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] TopDeco 3
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] TopCorner 2
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] MiddleDeco 2
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] BottomDeco 2
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] PortalDeco 1

#Empty map
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] TopDeco 0
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] TopCorner 0
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] MiddleDeco 0
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] BottomDeco 0
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] PortalDeco 0

#The Castle crusade map (Empty. Base design is forced.)
#> UNCOMMENT WHEN CRUSADE IS FINISHED
#execute if entity @s[tag=TheCastle] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] TopDeco 0
#execute if entity @s[tag=TheCastle] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] TopCorner 0
#execute if entity @s[tag=TheCastle] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] MiddleDeco 0
#execute if entity @s[tag=TheCastle] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] BottomDeco 0
#execute if entity @s[tag=TheCastle] run scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] PortalDeco 0
#Randomized map
execute if entity @s[tag=RandomMap] run summon marker ~ ~ ~ {Tags:["RandomTop","RandomBases"]}
execute if entity @s[tag=RandomMap] run scoreboard players set @e[type=marker,tag=RandomTop] RNGmax 3
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomTop] store result score @s RNGscore run data get entity @s UUID[0]
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomTop] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomTop] run scoreboard players add @s RNGscore 1
execute if entity @s[tag=RandomMap] run scoreboard players operation @e[type=armor_stand,tag=Selection,limit=1] TopDeco = @e[type=marker,tag=RandomTop,limit=1] RNGscore

execute if entity @s[tag=RandomMap] run summon marker ~ ~ ~ {Tags:["RandomTopSides","RandomBases"]}
execute if entity @s[tag=RandomMap] run scoreboard players set @e[type=marker,tag=RandomTopSides] RNGmax 3
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomTopSides] store result score @s RNGscore run data get entity @s UUID[0]
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomTopSides] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomTopSides] run scoreboard players add @s RNGscore 1
execute if entity @s[tag=RandomMap] run scoreboard players operation @e[type=armor_stand,tag=Selection,limit=1] TopCorner = @e[type=marker,tag=RandomTopSides,limit=1] RNGscore

execute if entity @s[tag=RandomMap] run summon marker ~ ~ ~ {Tags:["RandomMiddle","RandomBases"]}
execute if entity @s[tag=RandomMap] run scoreboard players set @e[type=marker,tag=RandomMiddle] RNGmax 3
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomMiddle] store result score @s RNGscore run data get entity @s UUID[0]
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomMiddle] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomMiddle] run scoreboard players add @s RNGscore 1
execute if entity @s[tag=RandomMap] run scoreboard players operation @e[type=armor_stand,tag=Selection,limit=1] MiddleDeco = @e[type=marker,tag=RandomMiddle,limit=1] RNGscore

execute if entity @s[tag=RandomMap] run summon marker ~ ~ ~ {Tags:["RandomBottom","RandomBases"]}
execute if entity @s[tag=RandomMap] run scoreboard players set @e[type=marker,tag=RandomBottom] RNGmax 3
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomBottom] store result score @s RNGscore run data get entity @s UUID[0]
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomBottom] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute if entity @s[tag=RandomMap] as @e[type=marker,tag=RandomBottom] run scoreboard players add @s RNGscore 1
execute if entity @s[tag=RandomMap] run scoreboard players operation @e[type=armor_stand,tag=Selection,limit=1] BottomDeco = @e[type=marker,tag=RandomBottom,limit=1] RNGscore
#Extra precaution - no bottom deco if layered is on
scoreboard players set @e[type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=3}] BottomDeco 0

#Always use glass rim portals
scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] PortalDeco 1

kill @e[type=marker,tag=RandomBases]