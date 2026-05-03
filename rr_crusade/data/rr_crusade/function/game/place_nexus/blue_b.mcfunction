kill @e[x=0,type=item_display,tag=nexus_anchor.blue_b]
summon minecraft:item_display -14 49 -37 {Tags:["nexus_anchor.blue_b"]}

execute unless entity @e[limit=1,x=0,type=end_crystal,tag=nexus.blue_b] run summon minecraft:end_crystal -14 49 -37 {Tags:["nexus","nexus.blue_b"],ShowBottom:false,beam_target:[12,50,-52]}
ride @e[limit=1,x=0,type=end_crystal,tag=nexus.blue_b] mount @e[limit=1,x=0,type=item_display,tag=nexus_anchor.blue_b]
