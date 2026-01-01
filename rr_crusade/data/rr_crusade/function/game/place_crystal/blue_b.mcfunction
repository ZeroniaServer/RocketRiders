kill @e[x=0,type=item_display,tag=CrusadeBlueBCrystalAnchor]
summon minecraft:item_display -14 49 -37 {Tags:["CrusadeEntity","CrusadeBlueBCrystalAnchor"]}

execute unless entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeBlueB] run summon minecraft:end_crystal -14 49 -37 {Tags:["CrusadeEntity","CrusadeBlueB"],ShowBottom:false,beam_target:[12,50,-52]}
ride @e[limit=1,x=0,type=end_crystal,tag=CrusadeBlueB] mount @e[limit=1,x=0,type=item_display,tag=CrusadeBlueBCrystalAnchor]
