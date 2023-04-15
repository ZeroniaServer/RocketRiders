##Reduces dropped arrow's Count (for Infinity)
execute store result score @s CmdData run data get entity @s Item.Count
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]
execute if entity @e[type=marker,scores={capturePoint=1}] if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid,tag=!itemDeducted] run scoreboard players remove @s CmdData 1
execute if entity @e[type=marker,scores={capturePoint=2}] if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid,tag=!itemDeducted] run scoreboard players remove @s CmdData 1
scoreboard players set @s[scores={CmdData=..-1}] CmdData 0
execute store result entity @s Item.Count byte 1 run scoreboard players get @s CmdData
execute if entity @e[type=marker,scores={capturePoint=1}] as @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid,tag=!itemDeducted] run tag @s add itemDeducted
execute if entity @e[type=marker,scores={capturePoint=2}] as @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid,tag=!itemDeducted] run tag @s add itemDeducted
scoreboard players reset $tempuuid playerUUID
kill @s[scores={CmdData=..0}]