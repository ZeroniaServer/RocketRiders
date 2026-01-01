kill @e[x=0,type=item_display,tag=CrusadeYellowBCrystalAnchor]
summon minecraft:item_display 38 49 37 {Tags:["CrusadeEntity","CrusadeYellowBCrystalAnchor"]}

execute unless entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeYellowB] run summon minecraft:end_crystal 38 49 37 {Tags:["CrusadeEntity","CrusadeYellowB"],ShowBottom:false,beam_target:[12,50,52]}
ride @e[limit=1,x=0,type=end_crystal,tag=CrusadeYellowB] mount @e[limit=1,x=0,type=item_display,tag=CrusadeYellowBCrystalAnchor]
