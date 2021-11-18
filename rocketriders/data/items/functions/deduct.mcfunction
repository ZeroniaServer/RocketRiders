##Reduces this item's Count by 1 (plus some extra checks for stackables)
execute store result score @s CmdData run data get entity @s Item.Count
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]

#Extra for arrows since they replenish to 4
execute if entity @s[nbt={Item:{id:"minecraft:arrow"}}] as @a[predicate=custom:matches_uuid] store result score @s HasArrows run clear @s arrow 0
execute if entity @s[nbt={Item:{id:"minecraft:arrow"}}] run scoreboard players operation $toomany CmdData = @s CmdData
execute if entity @s[nbt={Item:{id:"minecraft:arrow"}}] as @a[predicate=custom:matches_uuid] run scoreboard players operation $toomany CmdData += @s HasArrows
execute if entity @s[nbt={Item:{id:"minecraft:arrow"}}] if score $toomany CmdData matches 4.. run tag @a[predicate=custom:matches_uuid] add hadTooMany
execute if entity @a[predicate=custom:matches_uuid,scores={HasArrows=0}] run scoreboard players remove @s[nbt={Item:{id:"minecraft:arrow"}}] CmdData 4
execute if entity @a[predicate=custom:matches_uuid,scores={HasArrows=1..3}] run scoreboard players remove @s[nbt={Item:{id:"minecraft:arrow"}}] CmdData 3

#Extra for tipped arrows since they replenish to 4 - TODO move??
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] as @a[predicate=custom:matches_uuid] store result score @s HasTippedArrows run clear @s tipped_arrow 0
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] run scoreboard players operation $toomany CmdData = @s CmdData
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] as @a[predicate=custom:matches_uuid] run scoreboard players operation $toomany CmdData += @s HasTippedArrows
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] if score $toomany CmdData matches 4.. run tag @a[predicate=custom:matches_uuid] add hadTooMany
execute if entity @a[predicate=custom:matches_uuid,scores={HasTippedArrows=0}] run scoreboard players remove @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] CmdData 4
execute if entity @a[predicate=custom:matches_uuid,scores={HasTippedArrows=1..3}] run scoreboard players remove @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] CmdData 3

#Extra for Canopies since they can stack to 2 or 3 in CTF
execute if entity @e[type=armor_stand,tag=Selection,tag=canopyStack] if entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] as @a[predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasPlat run clear @s ender_pearl 0
execute if entity @e[type=armor_stand,tag=Selection,tag=canopyStack] if entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] if entity @a[predicate=custom:matches_uuid] run scoreboard players operation @p[predicate=custom:matches_uuid] HasPlat += @s CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] if entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] run tag @a[predicate=custom:matches_uuid,scores={HasPlat=1..}] add hadTooMany
execute if entity @e[type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] if entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] run tag @a[predicate=custom:matches_uuid,scores={HasPlat=2..}] add hadTooMany

#Extra for Surprise Eggs since they can stack to 3
execute if entity @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}] as @a[team=Blue,predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasSurprise run clear @s squid_spawn_egg 0
execute if entity @s[nbt={Item:{id:"minecraft:cod_spawn_egg"}}] as @a[team=Yellow,predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasSurprise run clear @s cod_spawn_egg 0
execute if entity @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}] if entity @a[team=Blue,predicate=custom:matches_uuid] run scoreboard players operation @p[team=Blue,predicate=custom:matches_uuid] HasSurprise += @s CmdData
execute if entity @s[nbt={Item:{id:"minecraft:cod_spawn_egg"}}] if entity @a[team=Yellow,predicate=custom:matches_uuid] run scoreboard players operation @p[team=Yellow,predicate=custom:matches_uuid] HasSurprise += @s CmdData
execute if entity @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}] run tag @a[team=Blue,predicate=custom:matches_uuid,scores={HasSurprise=2..}] add hadTooMany
execute if entity @s[nbt={Item:{id:"minecraft:cod_spawn_egg"}}] run tag @a[team=Yellow,predicate=custom:matches_uuid,scores={HasSurprise=2..}] add hadTooMany

#Actually reducing count
execute unless entity @s[nbt={Item:{id:"minecraft:arrow"}}] unless entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] unless entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] unless entity @s[nbt={Item:{id:"minecraft:cod_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}] run scoreboard players remove @s CmdData 1
execute if entity @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}] if entity @a[team=Blue,predicate=custom:matches_uuid,tag=hadTooMany,tag=!itemDeducted] run scoreboard players remove @s CmdData 1
execute if entity @s[nbt={Item:{id:"minecraft:cod_spawn_egg"}}] if entity @a[team=Yellow,predicate=custom:matches_uuid,tag=hadTooMany,tag=!itemDeducted] run scoreboard players remove @s CmdData 1
execute if entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] if entity @a[predicate=custom:matches_uuid,tag=hadTooMany,tag=!itemDeducted] run scoreboard players remove @s CmdData 1
scoreboard players set @s[scores={CmdData=..-1}] CmdData 0
execute store result entity @s Item.Count byte 1 run scoreboard players get @s CmdData
tag @a[predicate=custom:matches_uuid] add itemDeducted
tag @a[predicate=custom:matches_uuid,tag=fullHotbar] add wasFullHotbar
scoreboard players reset $tempuuid playerUUID
scoreboard players reset $toomany CmdData
kill @s[scores={CmdData=..0}]