execute if predicate game:blue_team_skin/blue run bossbar set rr_crusade:blue color blue
execute if predicate game:blue_team_skin/any_red_skin run bossbar set rr_crusade:blue color red
execute if predicate game:yellow_team_skin/yellow run bossbar set rr_crusade:yellow color yellow
execute if predicate game:yellow_team_skin/green run bossbar set rr_crusade:yellow color green

#Hotfix for being able to cast spells in queue
summon marker 33 63 -66 {Tags:["airDetectBlue"]}
summon marker 33 63 66 {Tags:["airDetectYellow"]}
#Hotfix for spell wands from the lobby not being usable
execute as @a[x=0,predicate=rr_crusade:kit/mage] run function custom:update_inventory/spell_wand
