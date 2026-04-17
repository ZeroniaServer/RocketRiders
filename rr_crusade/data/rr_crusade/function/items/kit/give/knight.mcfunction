execute unless entity @s[predicate=rr_crusade:kit/knight] run tellraw @s[tag=!kitknight] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Knight","bold":true,"color":"dark_green"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"dark_green"},{"text":"You can obtain: ","color":"gray"},{"text":"Blade","color":"green"},{"text":", ","color":"gray"},{"text":"Gemini","color":"green"},{"text":", ","color":"gray"},{"text":"Auxiliary","color":"red"},{"text":", ","color":"gray"},{"text":"Warhead","color":"red"},{"text":", ","color":"gray"},{"text":"Juggerbuster","color":"red"},{"text":", ","color":"gray"},{"text":"Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Obsidian Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"ICBM","color":"light_purple"},"\n",{"text":"‣ ","color":"dark_green"},{"text":"Your equipment: ","color":"gray"},[{score:{name:"@s",objective:"text.main_color"}},{"text":"Knight Sword"},{"text":", ","color":"gray"},{"text":"Knight Shield"},{"text":", ","color":"gray"},{"text":"Knight Helmet"},{"text":", ","color":"gray"},{"text":"Knight Chestplate","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Leggings"}]]

execute unless entity @s[predicate=rr_crusade:kit/knight] run title @s[tag=!kitknight] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[predicate=rr_crusade:kit/knight] run title @s[tag=!kitknight] subtitle {"text":"Knight","color":"dark_green","bold":true}
execute unless entity @s[predicate=rr_crusade:kit/knight] at @s[tag=!kitknight] run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 1.3

scoreboard players set @s crusadekit 1
scoreboard players set @s[tag=!JoinBlue,tag=!JoinYellow] start_as_crusade_kit 1
function custom:player/playerdata/save

function custom:player/update_armor
function custom:player/reset_inventory
