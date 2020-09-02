##Anti-antidupe: Makes the game ignore when you already have an item.
##Used for the Item Stacking game option.

scoreboard players set @s HasAux 0
scoreboard players set @s HasToma 0
scoreboard players set @s HasBlade 0
scoreboard players set @s HasWar 0
scoreboard players set @s HasAnt 0
scoreboard players set @s HasBolt 0
scoreboard players set @s HasGuard 0
scoreboard players set @s HasRift 0
scoreboard players set @s HasJug 0
scoreboard players set @s HasShield 0
#Canopies are an exception for modes that require extra Canopies for travel. In this case, you can only have 3 Canopies.
execute unless @e[tag=Selection,type=armor_stand,tag=canopyStack] run scoreboard players set @s HasPlat 0
scoreboard players set @s HasFireball 0
scoreboard players set @s HasObshield 0
scoreboard players set @s HasBullet 0
scoreboard players set @s HasNull 0
scoreboard players set @s HasHur 0
scoreboard players set @s HasSlash 0
scoreboard players set @s HasHyper 0
scoreboard players set @s HasCata 0
scoreboard players set @s HasCitadel 0
scoreboard players set @s HasGemi 0
scoreboard players set @s HasLift 0
scoreboard players set @s HasDuplex 0
scoreboard players set @s HasBroad 0
scoreboard players set @s HasNova 0
scoreboard players set @s HasVortex 0
scoreboard players set @s HasSplash 0
scoreboard players set @s HasSurprise 0
#Arrows are an exception for modes that limit arrows
execute unless @e[tag=Selection,type=armor_stand,tag=arrowLimit] run scoreboard players set @s HasArrows 0