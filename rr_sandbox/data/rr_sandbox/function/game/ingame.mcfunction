#leave midgame
scoreboard players enable @a[x=0] LeaveMidgame
tellraw @a[x=0,team=Blue,scores={dropBook=1..}] [{"text":"Are you sure you want to leave the match? ","color":"dark_aqua"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to leave the match"}}}]
tellraw @a[x=0,team=Yellow,scores={dropBook=1..}] [{"text":"Are you sure you want to leave the match? ","color":"yellow"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to leave the match"}}}]
scoreboard players set @a[x=0,scores={dropBook=1..}] dropBook 0
execute as @a[x=0,team=Blue,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"dark_aqua"}]
scoreboard players set @a[x=0,team=Blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[x=0,team=Yellow,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[x=0,team=Yellow,scores={LeaveMidgame=1}] LeaveGame 1
tellraw @s[team=!Blue,team=!Yellow,scores={LeaveMidgame=1}] [{"text":"You are not in a match anymore.","color":"green"}]

#destroy crafting slots
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] if items entity @s player.crafting.* * at @s run function rr_sandbox:game/destroycraftingslots

#spawnpoints
execute as @a[x=0,team=Blue,nbt=!{respawn:{pos:[I;12,64,-66]}}] run spawnpoint @s 12 64 -66 0
execute as @a[x=0,team=Yellow,nbt=!{respawn:{pos:[I;12,64,66]}}] run spawnpoint @s 12 64 66 -180

#spawnables
function rr_powerups:everytick/spawnables
function rr_powerups:everytick/powerups
function everytick:cluster
execute if entity @e[x=0,type=arrow] run function rr_powerups:everytick/tipped_arrow_pickup
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team,scores={useWand=1..}] run function rr_crusade:game/usewand

#nomicon
scoreboard players enable @a[x=0,team=!Lobby,team=!Spectator] nomicon
scoreboard players reset @a[predicate=!custom:indimension] nomicon
scoreboard players reset @a[x=0,team=!Blue,team=!Yellow,team=!Developer] nomicon
execute as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,scores={nomicon=1..}] run function rr_sandbox:game/nomicon

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 13 38 -74 nether_portal run function rr_sandbox:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 -74 nether_portal run function rr_sandbox:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 11 38 -74 nether_portal run function rr_sandbox:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal run function rr_sandbox:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function rr_sandbox:game/winbothcheck

execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 13 38 74 nether_portal run function rr_sandbox:game/winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 11 38 74 nether_portal run function rr_sandbox:game/winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run function rr_sandbox:game/winblue

execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 -74 nether_portal run function rr_sandbox:game/winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 -74 nether_portal run function rr_sandbox:game/winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function rr_sandbox:game/winyellow