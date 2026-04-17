##Traveler achievement

#Detecting players traveling to/from enemy base
execute if predicate custom:player/is_alive if entity @s[gamemode=survival] if predicate custom:team/yellow at @s if entity @s[x=-15,y=33,z=-74,dx=54,dy=37,dz=28] run tag @s add beenOnBlue
execute if predicate custom:player/is_alive if entity @s[gamemode=survival,tag=beenOnYellow] if predicate custom:team/blue at @s if entity @s[x=-15,y=33,z=-74,dx=54,dy=37,dz=28] run tag @s add beenOnBlue
execute if predicate custom:player/is_alive if entity @s[gamemode=survival] if predicate custom:team/blue at @s if entity @s[x=-15,y=33,z=46,dx=54,dy=37,dz=28] run tag @s add beenOnYellow
execute if predicate custom:player/is_alive if entity @s[gamemode=survival,tag=beenOnBlue] if predicate custom:team/yellow at @s if entity @s[x=-15,y=33,z=46,dx=54,dy=37,dz=28] run tag @s add beenOnYellow
execute if predicate custom:player/is_alive if entity @s[gamemode=survival,tag=beenOnBlue,tag=beenOnYellow] run advancement grant @s only achievements:rr_challenges/traveler

#Tag resetting
tag @s[tag=beenOnBlue,tag=beenOnYellow] add beenOnBoth
tag @s[tag=beenOnBoth] remove beenOnBlue
tag @s[tag=beenOnBoth] remove beenOnYellow
tag @s[predicate=!custom:team/any_playing_team] remove beenOnBlue
tag @s[predicate=!custom:team/any_playing_team] remove beenOnYellow
tag @s[gamemode=!survival] remove beenOnBlue
tag @s[gamemode=!survival] remove beenOnYellow
tag @s[tag=beenOnBoth] remove beenOnBoth
