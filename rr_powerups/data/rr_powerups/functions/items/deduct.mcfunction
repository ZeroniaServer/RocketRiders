##Reduces this item's Count by 1 (plus some extra checks for stackables)
execute store result score @s CmdData run data get entity @s Item.Count
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]
execute if entity @e[type=marker,scores={capturePoint=1}] run tag @a[team=Blue,predicate=custom:matches_uuid,tag=!itemDeducted] add correctTeam
execute if entity @e[type=marker,scores={capturePoint=2}] run tag @a[team=Yellow,predicate=custom:matches_uuid,tag=!itemDeducted] add correctTeam

#TODO MAY NEED TO SPLIT INTO SEPARATE BLOCKS PER TIPPED ARROW KIND
#Extra for tipped arrows since they replenish to 4
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] as @a[predicate=custom:matches_uuid,tag=correctTeam] store result score @s HasTippedArrows run clear @s tipped_arrow 0
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] run scoreboard players operation $toomany CmdData = @s CmdData
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] as @a[predicate=custom:matches_uuid,tag=correctTeam] run scoreboard players operation $toomany CmdData += @s HasTippedArrows
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] if score $toomany CmdData matches 4.. run tag @a[predicate=custom:matches_uuid,tag=correctTeam] add hadTooMany
execute if entity @a[predicate=custom:matches_uuid,scores={HasTippedArrows=0},tag=correctTeam] run scoreboard players remove @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] CmdData 4
execute if entity @a[predicate=custom:matches_uuid,scores={HasTippedArrows=1..3},tag=correctTeam] run scoreboard players remove @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] CmdData 3

#Actually reducing count
execute if entity @a[tag=correctTeam] unless entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] run scoreboard players remove @s CmdData 1
scoreboard players set @s[scores={CmdData=..-1}] CmdData 0
execute store result entity @s Item.Count byte 1 run scoreboard players get @s CmdData
tag @a[predicate=custom:matches_uuid] add itemDeducted
tag @a[predicate=custom:matches_uuid,tag=fullHotbar] add wasFullHotbar
scoreboard players reset $tempuuid playerUUID
scoreboard players reset $toomany CmdData
tag @a remove correctTeam
kill @s[scores={CmdData=..0}]