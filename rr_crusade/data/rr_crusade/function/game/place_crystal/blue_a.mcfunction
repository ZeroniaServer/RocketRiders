kill @e[x=0,type=item_display,tag=CrusadeBlueACrystalAnchor]
summon minecraft:item_display 38 49 -37 {Tags:["CrusadeEntity","CrusadeBlueACrystalAnchor"]}

execute unless entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeBlueA] run summon minecraft:end_crystal 38 49 -37 {Tags:["CrusadeEntity","CrusadeBlueA"],ShowBottom:false,beam_target:[12,50,-52]}
ride @e[limit=1,x=0,type=end_crystal,tag=CrusadeBlueA] mount @e[limit=1,x=0,type=item_display,tag=CrusadeBlueACrystalAnchor]
