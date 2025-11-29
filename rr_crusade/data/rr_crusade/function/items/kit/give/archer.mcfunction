execute if entity @s[tag=JoinBlue,predicate=rr_crusade:kit/archer] run scoreboard players reset @s crusadekit
execute if entity @s[tag=JoinYellow,predicate=rr_crusade:kit/archer] run scoreboard players reset @s crusadekit

execute unless entity @s[predicate=rr_crusade:kit/archer] run tag @s remove fullOffhand

execute unless entity @s[predicate=rr_crusade:kit/archer] run tellraw @s[predicate=custom:team/blue,tag=!kitarcher] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Archer","bold":true,"color":"red"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"red"},{"text":"You can obtain: ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Slasher","color":"green"},{"text":", ","color":"gray"},{"text":"Thunderbolt","color":"yellow"},{"text":", ","color":"gray"},{"text":"Hurricane","color":"yellow"},{"text":", ","color":"gray"},{"text":"Broadsword","color":"#ca00ca"},{"text":", ","color":"gray"},{"text":"Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},"\n",{"text":"‣ ","color":"red"},{"text":"Your equipment: ","color":"gray"},{"text":"Shooting Saber","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Helmet","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Chestplate","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Leggings","color":"blue"}]
execute unless entity @s[predicate=rr_crusade:kit/archer] run tellraw @s[predicate=custom:team/yellow,tag=!kitarcher] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Archer","bold":true,"color":"red"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"red"},{"text":"You can obtain: ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Slasher","color":"green"},{"text":", ","color":"gray"},{"text":"Thunderbolt","color":"yellow"},{"text":", ","color":"gray"},{"text":"Hurricane","color":"yellow"},{"text":", ","color":"gray"},{"text":"Broadsword","color":"#ca00ca"},{"text":", ","color":"gray"},{"text":"Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},"\n",{"text":"‣ ","color":"red"},{"text":"Your equipment: ","color":"gray"},{"text":"Shooting Saber","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Helmet","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Chestplate","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Leggings","color":"gold"}]

execute unless entity @s[predicate=rr_crusade:kit/archer] run title @s[tag=!kitarcher] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[predicate=rr_crusade:kit/archer] run title @s[tag=!kitarcher] subtitle {"text":"Archer","color":"red","bold":true}
execute unless entity @s[predicate=rr_crusade:kit/archer] at @s[tag=!kitarcher] run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 1

execute unless entity @s[predicate=rr_crusade:kit/archer] run scoreboard players add $archer CmdData 1

execute unless entity @s[predicate=rr_crusade:kit/archer] run scoreboard players set @s crusadekit 2

function custom:reset_inventory
function custom:update_armor

function custom:player_action/playerdata/save
