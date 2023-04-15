##Reduces this item's Count by 1 (plus some extra checks for stackables)
execute store result score @s CmdData run data get entity @s Item.Count
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]
execute if entity @e[type=marker,scores={capturePoint=1}] run tag @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] add correctTeam
execute if entity @e[type=marker,scores={capturePoint=2}] run tag @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] add correctTeam

#Extra for tipped arrows since they replenish to 4
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] as @a[predicate=custom:indimension,tag=correctTeam,tag=!itemDeducted] store result score @s HasTippedArrows run clear @s tipped_arrow 0
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] if entity @a[predicate=custom:indimension,tag=correctTeam] run scoreboard players operation @p[tag=correctTeam] HasTippedArrows += @s CmdData

#Actually reducing count
execute if entity @a[predicate=custom:indimension,tag=correctTeam] unless entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] run scoreboard players remove @s CmdData 1
scoreboard players set @s[scores={CmdData=..-1}] CmdData 0
execute store result entity @s Item.Count byte 1 run scoreboard players get @s CmdData
tag @a[predicate=custom:indimension,tag=correctTeam] add itemDeducted
tag @a[predicate=custom:indimension,tag=correctTeam,tag=fullHotbar] add wasFullHotbar
scoreboard players reset $tempuuid playerUUID
tag @a[predicate=custom:indimension] remove correctTeam
kill @s[scores={CmdData=..0}]