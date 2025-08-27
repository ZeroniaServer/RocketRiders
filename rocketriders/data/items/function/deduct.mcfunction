##Reduces this item's count by 1 (plus some extra checks for stackables)
execute store result score $itemcount CmdData run data get entity @s Item.count

#Extra for arrows since they replenish to 4
execute if items entity @s contents arrow on origin store result score @s[tag=!itemDeducted] HasArrows run clear @s arrow 0
execute if items entity @s contents arrow on origin run scoreboard players operation @s HasArrows += $itemcount CmdData

#Extra for Canopies since they can stack to 2 or 3 in CTF
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack] if items entity @s contents ender_pearl as @a[x=0,predicate=custom:matches_uuid,tag=!itemDeducted] store result score @s HasPlat run clear @s ender_pearl 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack] if items entity @s contents ender_pearl run scoreboard players operation @p[predicate=custom:matches_uuid] HasPlat += $itemcount CmdData

#Extra for Surprise Eggs since they can stack to 3
execute if items entity @s contents #custom:missile[custom_data~{spawn_egg:{type:"surprise_missile"}}] on origin store result score @s[tag=!itemDeducted] HasSurprise run clear @s #custom:missile[custom_data~{spawn_egg:{type:"surprise_missile"}}] 0
execute if items entity @s contents #custom:missile[custom_data~{spawn_egg:{type:"surprise_missile"}}] on origin run scoreboard players operation @s HasSurprise += $itemcount CmdData

#Actually reducing count
execute if score $itemcount CmdData matches 1.. unless items entity @s contents arrow unless items entity @s contents ender_pearl unless items entity @s contents #custom:missile[custom_data~{spawn_egg:{type:"surprise_missile"}}] run scoreboard players remove $itemcount CmdData 1
item modify entity @s contents {function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$itemcount"},score:"CmdData"},add:false}
execute on origin run tag @s add itemDeducted
execute on origin run tag @s[tag=fullHotbar] add wasFullHotbar
execute if score $itemcount CmdData matches ..0 run kill