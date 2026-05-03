kill @e[x=0,type=item_display,tag=nexus_anchor.yellow_a]
summon minecraft:item_display -14 49 37 {Tags:["nexus_anchor.yellow_a"]}

execute unless entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeYnexus.yellow_aellowA] run summon minecraft:end_crystal -14 49 37 {Tags:["nexus","nexus.yellow_a"],ShowBottom:false,beam_target:[12,50,52]}
ride @e[limit=1,x=0,type=end_crystal,tag=nexus.yellow_a] mount @e[limit=1,x=0,type=item_display,tag=nexus_anchor.yellow_a]
