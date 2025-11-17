execute if entity @s[tag=JoinBlue,predicate=rr_crusade:kit/mage] run scoreboard players reset @s crusadekit
execute if entity @s[tag=JoinYellow,predicate=rr_crusade:kit/mage] run scoreboard players reset @s crusadekit

execute unless entity @s[predicate=rr_crusade:kit/mage] run clear @s
execute unless entity @s[predicate=rr_crusade:kit/mage] run loot replace entity @s hotbar.0 loot items:misc/spell_wand
execute unless entity @s[predicate=rr_crusade:kit/mage] run function custom:update_armor

execute unless entity @s[predicate=rr_crusade:kit/mage] run tellraw @s[predicate=custom:team/blue,tag=!kitmage] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Mage","bold":true,"color":"#ca00ca"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"#ca00ca"},{"text":"You can obtain: ","color":"gray"},{"text":"A.N.T","color":"green"},{"text":", ","color":"gray"},{"text":"TomaTwo","color":"green"},{"text":", ","color":"gray"},{"text":"Catapult","color":"green"},{"text":", ","color":"gray"},{"text":"Lifter","color":"green"},{"text":", ","color":"gray"},{"text":"Chronullifier","color":"green"},{"text":", ","color":"gray"},{"text":"Spell Book","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Nova Rocket","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"},"\n",{"text":"‣ ","color":"#ca00ca"},{"text":"Your equipment: ","color":"gray"},{"text":"Spell Wand","color":"blue"},{"text":", ","color":"gray"},{"text":"Mage Mask","color":"blue"},{"text":", ","color":"gray"},{"text":"Mage Chestplate","color":"blue"},{"text":", ","color":"gray"},{"text":"Mage Leggings","color":"blue"}]
execute unless entity @s[predicate=rr_crusade:kit/mage] run tellraw @s[predicate=custom:team/yellow,tag=!kitmage] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Mage","bold":true,"color":"#ca00ca"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"#ca00ca"},{"text":"You can obtain: ","color":"gray"},{"text":"A.N.T","color":"green"},{"text":", ","color":"gray"},{"text":"TomaTwo","color":"green"},{"text":", ","color":"gray"},{"text":"Catapult","color":"green"},{"text":", ","color":"gray"},{"text":"Lifter","color":"green"},{"text":", ","color":"gray"},{"text":"Chronullifier","color":"green"},{"text":", ","color":"gray"},{"text":"Spell Book","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Nova Rocket","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"},"\n",{"text":"‣ ","color":"#ca00ca"},{"text":"Your equipment: ","color":"gray"},{"text":"Spell Wand","color":"gold"},{"text":", ","color":"gray"},{"text":"Mage Mask","color":"gold"},{"text":", ","color":"gray"},{"text":"Mage Chestplate","color":"gold"},{"text":", ","color":"gray"},{"text":"Mage Leggings","color":"gold"}]

execute unless entity @s[predicate=rr_crusade:kit/mage] run title @s[tag=!kitmage] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[predicate=rr_crusade:kit/mage] run title @s[tag=!kitmage] subtitle {"text":"Mage","color":"#ca00ca","bold":true}
execute unless entity @s[predicate=rr_crusade:kit/mage] at @s[tag=!kitmage] run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 2

execute unless entity @s[predicate=rr_crusade:kit/mage] run scoreboard players add $mage CmdData 1

execute unless entity @s[predicate=rr_crusade:kit/mage] run scoreboard players set @s crusadekit 3

function custom:player_action/playerdata/save
