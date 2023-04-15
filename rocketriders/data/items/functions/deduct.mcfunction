##Reduces this item's Count by 1 (plus some extra checks for stackables)
execute store result score @s CmdData run data get entity @s Item.Count
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]

#Extra for arrows since they replenish to 4
execute if entity @s[nbt={Item:{id:"minecraft:arrow"}}] as @a[predicate=custom:indimension,predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasArrows run clear @s arrow 0
execute if entity @s[nbt={Item:{id:"minecraft:arrow"}}] run scoreboard players operation @p[predicate=custom:matches_uuid] HasArrows += @s CmdData

#Extra for Canopies since they can stack to 2 or 3 in CTF
execute if entity @e[type=armor_stand,tag=Selection,tag=canopyStack] if entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] as @a[predicate=custom:indimension,predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasPlat run clear @s ender_pearl 0
execute if entity @e[type=armor_stand,tag=Selection,tag=canopyStack] if entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] run scoreboard players operation @p[predicate=custom:matches_uuid] HasPlat += @s CmdData

#Extra for Surprise Eggs since they can stack to 3
execute if entity @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}] as @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasSurprise run clear @s squid_spawn_egg 0
execute if entity @s[nbt={Item:{id:"minecraft:cod_spawn_egg"}}] as @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasSurprise run clear @s cod_spawn_egg 0
execute if entity @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}] run scoreboard players operation @p[team=Blue,predicate=custom:matches_uuid] HasSurprise += @s CmdData
execute if entity @s[nbt={Item:{id:"minecraft:cod_spawn_egg"}}] run scoreboard players operation @p[team=Yellow,predicate=custom:matches_uuid] HasSurprise += @s CmdData

#Actually reducing count
execute unless entity @s[nbt={Item:{id:"minecraft:arrow"}}] unless entity @s[nbt={Item:{id:"minecraft:ender_pearl"}}] unless entity @s[nbt={Item:{id:"minecraft:cod_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}] run scoreboard players remove @s CmdData 1
scoreboard players set @s[scores={CmdData=..-1}] CmdData 0
execute store result entity @s Item.Count byte 1 run scoreboard players get @s CmdData
tag @a[predicate=custom:indimension,predicate=custom:matches_uuid] add itemDeducted
tag @a[predicate=custom:indimension,predicate=custom:matches_uuid,tag=fullHotbar] add wasFullHotbar
scoreboard players reset $tempuuid playerUUID
kill @s[scores={CmdData=..0}]