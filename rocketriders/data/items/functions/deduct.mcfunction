##Reduces this item's Count by 1
execute store result score @s CmdData run data get entity @s Item.Count
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]
tag @a[predicate=custom:matches_uuid] add itemDeducted
tag @a[predicate=custom:matches_uuid,tag=fullHotbar] add wasFullHotbar
execute unless entity @s[nbt={Item:{id:"minecraft:arrow"}}] unless entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] run scoreboard players remove @s CmdData 1
#extra for arrows since they replenish to 4
execute as @a[predicate=custom:matches_uuid] store result score @s HasArrows run clear @s arrow 0
execute as @a[predicate=custom:matches_uuid] store result score @s HasTippedArrows run clear @s tipped_arrow 0
execute if entity @s[nbt={Item:{id:"minecraft:arrow"}}] run tag @a[predicate=custom:matches_uuid,tag=fullHotbar] add hadArrows
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] run tag @a[predicate=custom:matches_uuid,tag=fullHotbar] add hadTippedArrows
execute if entity @a[predicate=custom:matches_uuid,scores={HasArrows=0}] run scoreboard players remove @s[nbt={Item:{id:"minecraft:arrow"}}] CmdData 4
execute if entity @a[predicate=custom:matches_uuid,scores={HasTippedArrows=0}] run scoreboard players remove @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] CmdData 4
execute if entity @a[predicate=custom:matches_uuid,scores={HasArrows=1..3}] run scoreboard players remove @s[nbt={Item:{id:"minecraft:arrow"}}] CmdData 3
execute if entity @a[predicate=custom:matches_uuid,scores={HasTippedArrows=1..3}] run scoreboard players remove @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] CmdData 3
scoreboard players set @s[scores={CmdData=..-1}] CmdData 0
execute store result entity @s Item.Count byte 1 run scoreboard players get @s CmdData
scoreboard players reset $tempuuid playerUUID
kill @s[scores={CmdData=..0}]