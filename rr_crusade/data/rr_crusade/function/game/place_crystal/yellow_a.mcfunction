kill @e[x=0,type=item_display,tag=CrusadeYellowACrystalAnchor]
summon minecraft:item_display -14 49 37 {Tags:["CrusadeEntity","CrusadeYellowACrystalAnchor"]}

execute unless entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeYellowA] run summon minecraft:end_crystal -14 49 37 {Tags:["CrusadeEntity","CrusadeYellowA"],ShowBottom:false,beam_target:[12,50,52]}
ride @e[limit=1,x=0,type=end_crystal,tag=CrusadeYellowA] mount @e[limit=1,x=0,type=item_display,tag=CrusadeYellowACrystalAnchor]
