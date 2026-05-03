kill @e[x=0,type=item_display,tag=nexus_anchor.blue_a]
summon minecraft:item_display 38 49 -37 {Tags:["nexus_anchor.blue_a"]}

execute unless entity @e[limit=1,x=0,type=end_crystal,tag=nexus.blue_a] run summon minecraft:end_crystal 38 49 -37 {Tags:["nexus","nexus.blue_a"],ShowBottom:false,beam_target:[12,50,-52]}
ride @e[limit=1,x=0,type=end_crystal,tag=nexus.blue_a] mount @e[limit=1,x=0,type=item_display,tag=nexus_anchor.blue_a]
