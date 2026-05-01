execute if predicate items:effects/elytra/on run title @s actionbar {color:"aqua",text:"Elytra repaired."}
execute if predicate items:effects/elytra/on run tag @s add DelayActionbar
execute if predicate items:effects/elytra/on run scoreboard players set @s actionbardelay 0
execute unless predicate items:effects/elytra/on run title @s title ""
execute unless predicate items:effects/elytra/on run title @s subtitle ["",{bold:true,color:"dark_purple",italic:true,text:"Elytra "},{color:"light_purple",text:"obtained. "},{color:"light_purple",italic:true,text:"Jump to activate!"}]

scoreboard players set @s effects.elytra.state 1
loot replace entity @s armor.chest loot items:item/elytra
function custom:player/update_armor

execute at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
