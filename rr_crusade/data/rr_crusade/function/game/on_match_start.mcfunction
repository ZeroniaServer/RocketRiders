
#Hotfix for being able to cast spells in queue
summon marker 33 63 -66 {Tags:["airDetectBlue"]}
summon marker 33 63 66 {Tags:["airDetectYellow"]}
#Hotfix for spell wands from the lobby not being usable
execute as @a[x=0,predicate=rr_crusade:kit/mage] run function custom:update_inventory/spell_wand
