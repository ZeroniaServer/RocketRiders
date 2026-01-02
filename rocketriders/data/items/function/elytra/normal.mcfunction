execute if predicate items:elytra/elytra run title @s actionbar {color:"aqua",text:"Elytra repaired."}
execute if predicate items:elytra/elytra run tag @s add DelayActionbar
execute if predicate items:elytra/elytra run scoreboard players set @s actionbardelay 0
execute unless predicate items:elytra/elytra run title @s title ""
execute unless predicate items:elytra/elytra run title @s subtitle ["",{bold:true,color:"dark_purple",italic:true,text:"Elytra "},{color:"light_purple",text:"obtained. "},{color:"light_purple",italic:true,text:"Jump to activate!"}]

scoreboard players set @s elytra_time 2147483647
function custom:update_armor
item modify entity @s armor.chest {function:"minecraft:set_components",components:{"minecraft:damage":0,"!minecraft:unbreakable":{}}}

execute at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
