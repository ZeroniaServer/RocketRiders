bossbar set rr_crusade:blue name [{score:{name:"#blue",objective:"text.accent_color"}},"Total ",[{score:{name:"#blue",objective:"text.main_color"}},{bold:true,score:{name:"#blue",objective:"text.team_name"}}]," Crystal Health"]
bossbar set rr_crusade:yellow name [{score:{name:"#yellow",objective:"text.accent_color"}},"Total ",[{score:{name:"#yellow",objective:"text.main_color"}},{bold:true,score:{name:"#yellow",objective:"text.team_name"}}]," Crystal Health"]

execute if predicate game:blue_team_skin/blue run bossbar set rr_crusade:blue color blue
execute if predicate game:blue_team_skin/any_red_skin run bossbar set rr_crusade:blue color red
execute if predicate game:yellow_team_skin/yellow run bossbar set rr_crusade:yellow color yellow
execute if predicate game:yellow_team_skin/green run bossbar set rr_crusade:yellow color green

#Hotfix for being able to cast spells in queue
summon marker 33 63 -66 {Tags:["airDetectBlue"]}
summon marker 33 63 66 {Tags:["airDetectYellow"]}
#Hotfix for spell wands from the lobby not being usable
execute as @a[x=0,predicate=rr_crusade:kit/mage] run function custom:player/update_inventory/spell_wand
