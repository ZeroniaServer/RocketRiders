#leave midgame
function game:leavemidgame

#general
function rr_pve:items/antidupe
function rr_pve:items/spawnitems

#spread missiles to random locations
function rr_pve:game/spreadmissiles

#wavecounter
scoreboard players add @e[tag=Selection] waveTimer 1

#waves
function rr_pve:game/wave1
function rr_pve:game/wave2
function rr_pve:game/wave3

#win
execute if block 13 38 74 air run function game:winblue
execute if block 11 38 74 air run function game:winblue

execute if block 11 38 -74 air run function game:winyellow
execute if block 13 38 -74 air run function game:winyellow