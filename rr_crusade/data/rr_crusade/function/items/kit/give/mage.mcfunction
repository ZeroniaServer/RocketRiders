execute unless entity @s[predicate=rr_crusade:kit/mage] run tellraw @s[tag=!kitmage] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Mage","bold":true,"color":"#ca00ca"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"#ca00ca"},{"text":"You can obtain: ","color":"gray"},{"text":"A.N.T","color":"green"},{"text":", ","color":"gray"},{"text":"TomaTwo","color":"green"},{"text":", ","color":"gray"},{"text":"Catapult","color":"green"},{"text":", ","color":"gray"},{"text":"Lifter","color":"green"},{"text":", ","color":"gray"},{"text":"Chronullifier","color":"green"},{"text":", ","color":"gray"},{"text":"Spell Book","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Nova Rocket","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"},"\n",{"text":"‣ ","color":"#ca00ca"},{"text":"Your equipment: ","color":"gray"},[{score:{name:"@s",objective:"text.main_color"}},{"text":"Spell Wand"},{"text":", ","color":"gray"},{"text":"Mage Mask"},{"text":", ","color":"gray"},{"text":"Mage Chestplate"},{"text":", ","color":"gray"},{"text":"Mage Leggings"}]]

execute unless entity @s[predicate=rr_crusade:kit/mage] run title @s[tag=!kitmage] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[predicate=rr_crusade:kit/mage] run title @s[tag=!kitmage] subtitle {"text":"Mage","color":"#ca00ca","bold":true}
execute unless entity @s[predicate=rr_crusade:kit/mage] at @s[tag=!kitmage] run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 2

scoreboard players set @s crusadekit 3
scoreboard players set @s[tag=!JoinBlue,tag=!JoinYellow] start_as_crusade_kit 3
function custom:player_action/playerdata/save

function custom:player/update_armor
function custom:player/reset_inventory
