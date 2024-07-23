##Reduces this item's count by 1 (plus some extra checks for stackables)
execute store result score $itemcount CmdData run data get entity @s Item.count

#Extra for arrows since they replenish to 4
execute if items entity @s contents arrow on origin store result score @s[tag=!itemDeducted] HasArrows run clear @s arrow 0
execute if items entity @s contents arrow on origin run scoreboard players operation @s HasArrows += $itemcount CmdData

#Extra for Canopies since they can stack to 2 or 3 in CTF
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack] if items entity @s contents ender_pearl as @a[x=0,predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasPlat run clear @s ender_pearl 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack] if items entity @s contents ender_pearl run scoreboard players operation @p[predicate=custom:matches_uuid] HasPlat += $itemcount CmdData

#Extra for Surprise Eggs since they can stack to 3
execute if items entity @s contents squid_spawn_egg on origin store result score @s[team=Blue,tag=!itemDeducted] HasSurprise run clear @s squid_spawn_egg 0
execute if items entity @s contents squid_spawn_egg on origin run scoreboard players operation @s[team=Blue] HasSurprise += $itemcount CmdData
execute if items entity @s contents cod_spawn_egg on origin store result score @s[team=Yellow,tag=!itemDeducted] HasSurprise run clear @s cod_spawn_egg 0
execute if items entity @s contents cod_spawn_egg on origin run scoreboard players operation @s[team=Yellow] HasSurprise += $itemcount CmdData

#Actually reducing count
execute if score $itemcount CmdData matches 1.. unless items entity @s contents arrow unless items entity @s contents ender_pearl unless items entity @s contents cod_spawn_egg unless items entity @s contents squid_spawn_egg run scoreboard players remove $itemcount CmdData 1
execute store result entity @s Item.count byte 1 run scoreboard players get $itemcount CmdData
execute on origin run tag @s add itemDeducted
execute on origin run tag @s[tag=fullHotbar] add wasFullHotbar
execute if score $itemcount CmdData matches ..0 run kill