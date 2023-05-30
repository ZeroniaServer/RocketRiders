##Kills thrown weapon at the end of the game/start of Sudden Death based on who won
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=BlueWonFirst] if entity @a[predicate=custom:indimension,predicate=custom:matches_uuid,team=Yellow] run kill @s
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=YellowWonFirst] if entity @a[predicate=custom:indimension,predicate=custom:matches_uuid,team=Blue] run kill @s
scoreboard players reset $tempuuid playerUUID