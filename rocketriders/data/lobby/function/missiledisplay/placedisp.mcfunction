#############################################
## PLACEDISP: How the Missile Display Area ##
## operates based on the page of a lectern ##
#############################################

#Cooldown
execute if score $display_cooldown var matches 1..29 run scoreboard players add $display_cooldown var 1
execute if score $display_cooldown var matches 30 if score $previous_page var matches 0 run data modify block 12 203 78 Page set value 0
execute if score $display_cooldown var matches 30 if score $previous_page var matches 1 run data modify block 12 203 78 Page set value 1
execute if score $display_cooldown var matches 30 run scoreboard players reset $display_cooldown var
execute unless score $display_cooldown var matches 1.. run scoreboard players reset $previous_page var

#Set page back to 1 if someone tries to use the arrow to cycle through pages
execute if score $display_cooldown var matches 1.. run data modify block 12 203 78 Page set value 26
execute store result score $page var run data get block 12 203 78 Page
execute unless score $display_cooldown var matches 1.. unless score $page var matches 0..4 unless score $page var matches 25..26 run scoreboard players set $display_cooldown var 1
execute unless score $display_cooldown var matches 1.. unless score $page var matches 0..1 run data modify block 12 203 78 Page set value 0

#Display missiles
execute if score $page var matches 5 run return run function lobby:missiledisplay/missile/tomatwo
execute if score $page var matches 6 run return run function lobby:missiledisplay/missile/ant
execute if score $page var matches 7 run return run function lobby:missiledisplay/missile/blade
execute if score $page var matches 8 run return run function lobby:missiledisplay/missile/catapult
execute if score $page var matches 9 run return run function lobby:missiledisplay/missile/slasher
execute if score $page var matches 10 run return run function lobby:missiledisplay/missile/lifter
execute if score $page var matches 11 run return run function lobby:missiledisplay/missile/chronull
execute if score $page var matches 12 run return run function lobby:missiledisplay/missile/eguard
execute if score $page var matches 13 run return run function lobby:missiledisplay/missile/citadel
execute if score $page var matches 14 run return run function lobby:missiledisplay/missile/gemini
execute if score $page var matches 15 run return run function lobby:missiledisplay/missile/thunderbolt
execute if score $page var matches 16 run return run function lobby:missiledisplay/missile/hurricane
execute if score $page var matches 17 run return run function lobby:missiledisplay/missile/auxiliary
execute if score $page var matches 18 run return run function lobby:missiledisplay/missile/warhead
execute if score $page var matches 19 run return run function lobby:missiledisplay/missile/rifter
execute if score $page var matches 20 run return run function lobby:missiledisplay/missile/jbuster
execute if score $page var matches 21 run return run function lobby:missiledisplay/missile/hypersonic
execute if score $page var matches 22 run return run function lobby:missiledisplay/missile/bullet
execute if score $page var matches 23 run return run function lobby:missiledisplay/missile/duplex
execute if score $page var matches 24 run return run function lobby:missiledisplay/missile/broadsword