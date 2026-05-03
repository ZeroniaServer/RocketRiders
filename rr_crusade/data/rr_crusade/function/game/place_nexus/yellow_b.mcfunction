kill @e[x=0,type=item_display,tag=nexus_anchor.yellow_b]
summon minecraft:item_display 38 49 37 {Tags:["nexus_anchor.yellow_b"]}

execute unless entity @e[limit=1,x=0,type=end_crystal,tag=nexus.yellow_b] run summon minecraft:end_crystal 38 49 37 {Tags:["nexus","nexus.yellow_b"],ShowBottom:false,beam_target:[12,50,52]}
ride @e[limit=1,x=0,type=end_crystal,tag=nexus.yellow_b] mount @e[limit=1,x=0,type=item_display,tag=nexus_anchor.yellow_b]
