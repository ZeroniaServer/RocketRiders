##Reduces this item's count by 1 (plus some extra checks for stackables)
execute store result score @s CmdData run data get entity @s Item.count
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]
execute if entity @e[x=0,type=marker,scores={capturePoint=1}] run tag @a[x=0,team=Blue,predicate=custom:matches_uuid] add correctTeam
execute if entity @e[x=0,type=marker,scores={capturePoint=2}] run tag @a[x=0,team=Yellow,predicate=custom:matches_uuid] add correctTeam

#Extra for tipped arrows since they replenish to 4
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] as @a[x=0,tag=correctTeam,tag=!itemDeducted] store result score @s HasTippedArrows run clear @s tipped_arrow 0
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] if entity @a[x=0,tag=correctTeam] run scoreboard players operation @p[tag=correctTeam] HasTippedArrows += @s CmdData

#Actually reducing count
execute if entity @a[x=0,tag=correctTeam] unless entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] run scoreboard players remove @s CmdData 1
scoreboard players set @s[scores={CmdData=..-1}] CmdData 0
execute store result entity @s Item.count byte 1 run scoreboard players get @s CmdData
tag @a[x=0,tag=correctTeam] add itemDeducted
tag @a[x=0,tag=correctTeam,tag=fullHotbar] add wasFullHotbar
scoreboard players reset $tempuuid playerUUID
tag @a[x=0] remove correctTeam
kill @s[scores={CmdData=..0}]