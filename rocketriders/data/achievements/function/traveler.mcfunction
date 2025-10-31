##Traveler achievement

#Detecting players traveling to/from enemy base
execute if entity @s[predicate=custom:team/yellow,gamemode=survival,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute if entity @s[predicate=custom:team/blue,tag=beenOnYellow,gamemode=survival,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute if entity @s[predicate=custom:team/blue,gamemode=survival,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute if entity @s[predicate=custom:team/yellow,tag=beenOnBlue,gamemode=survival,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute if entity @s[tag=beenOnBlue,tag=beenOnYellow,gamemode=survival,predicate=custom:alive] run advancement grant @s only achievements:rr_challenges/traveler

#Tag resetting
tag @s[tag=beenOnBlue,tag=beenOnYellow] add beenOnBoth
tag @s[tag=beenOnBoth] remove beenOnBlue
tag @s[tag=beenOnBoth] remove beenOnYellow
tag @s[predicate=!custom:team/any_playing_team] remove beenOnBlue
tag @s[predicate=!custom:team/any_playing_team] remove beenOnYellow
tag @s[gamemode=!survival] remove beenOnBlue
tag @s[gamemode=!survival] remove beenOnYellow
tag @s[tag=beenOnBoth] remove beenOnBoth