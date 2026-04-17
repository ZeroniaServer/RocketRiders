execute unless entity @s[predicate=rr_crusade:kit/archer] run tag @s remove fullOffhand

execute unless entity @s[predicate=rr_crusade:kit/archer] run tellraw @s[tag=!kitarcher] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Archer","bold":true,"color":"red"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"red"},{"text":"You can obtain: ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Slasher","color":"green"},{"text":", ","color":"gray"},{"text":"Thunderbolt","color":"yellow"},{"text":", ","color":"gray"},{"text":"Hurricane","color":"yellow"},{"text":", ","color":"gray"},{"text":"Broadsword","color":"#ca00ca"},{"text":", ","color":"gray"},{"text":"Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},"\n",{"text":"‣ ","color":"red"},{"text":"Your equipment: ","color":"gray"},[{score:{name:"@s",objective:"text.main_color"}},{"text":"Shooting Saber"},{"text":", ","color":"gray"},{"text":"Archer Helmet"},{"text":", ","color":"gray"},{"text":"Archer Chestplate"},{"text":", ","color":"gray"},{"text":"Archer Leggings"}]]

execute unless entity @s[predicate=rr_crusade:kit/archer] run title @s[tag=!kitarcher] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[predicate=rr_crusade:kit/archer] run title @s[tag=!kitarcher] subtitle {"text":"Archer","color":"red","bold":true}
execute unless entity @s[predicate=rr_crusade:kit/archer] at @s[tag=!kitarcher] run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 1

scoreboard players set @s crusadekit 2
scoreboard players set @s[tag=!JoinBlue,tag=!JoinYellow] start_as_crusade_kit 2
function custom:player/playerdata/save

function custom:player/update_armor
function custom:player/reset_inventory
