##Selects map based on the set that won

#New Dawn map (default)
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] TopDeco 1
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] TopCorner 1
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] MiddleDeco 1
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] BottomDeco 1
execute if entity @s[tag=DefaultMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PortalDeco 1

#Spikes map
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] TopDeco 3
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] TopCorner 2
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] MiddleDeco 2
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] BottomDeco 2
execute if entity @s[tag=SpikesMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PortalDeco 1

#Empty map
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] TopDeco 0
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] TopCorner 0
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] MiddleDeco 0
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] BottomDeco 0
execute if entity @s[tag=EmptyMap] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PortalDeco 0

#The Castle crusade map (Empty. Base design is forced.)
execute if entity @s[tag=TheCastle] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] TopDeco 0
execute if entity @s[tag=TheCastle] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] TopCorner 0
execute if entity @s[tag=TheCastle] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] MiddleDeco 0
execute if entity @s[tag=TheCastle] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] BottomDeco 0
execute if entity @s[tag=TheCastle] run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PortalDeco 0

#Randomized map
execute if entity @s[tag=RandomMap] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] TopDeco run random value 1..3
execute if entity @s[tag=RandomMap] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] TopCorner run random value 1..3
execute if entity @s[tag=RandomMap] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] MiddleDeco run random value 1..3
execute if entity @s[tag=RandomMap] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] BottomDeco run random value 1..3

#Extra precaution - no bottom deco if layered is on
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=3}] BottomDeco 0

#Always use glass rim portals
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PortalDeco 1