##########################################
## BOOKWARP: Allows players to navigate ##
## the lobby with their Navigation Book ##
##########################################

#Enable trigger
scoreboard players enable @a[x=0,team=Lobby] LobbyWarp
execute as @a[x=0,team=!Lobby] run trigger LobbyWarp set -1
scoreboard players reset @a[team=!Lobby] LobbyWarp

#Cancel parkour
execute as @e[x=0,type=armor_stand,tag=Selection,tag=!SMActive] as @a[x=0,scores={LobbyWarp=1..},tag=inParkour] run tellraw @s [{"text":"You used a Lobby Warp, so your Parkour run was canceled.","color":"red"}]
execute as @a[x=0,scores={LobbyWarp=1..},tag=inParkour] run clear @s
execute as @a[x=0,scores={LobbyWarp=1..},tag=inParkour] run tag @s remove inParkour

#Teleports
tp @a[x=0,team=Lobby,scores={LobbyWarp=1}] -43 211 78 90 0
execute as @e[x=0,team=Lobby,type=armor_stand,tag=Selection,scores={servermode=0}] as @a[x=0,team=Lobby,scores={LobbyWarp=2}] run tp @s -64 202 78 90 0
tp @a[x=0,team=Lobby,scores={LobbyWarp=3}] -78 204 64 135 0
tp @a[x=0,team=Lobby,scores={LobbyWarp=4}] -78 204 92 45 0
tp @a[x=0,team=Lobby,scores={LobbyWarp=5}] -80 201 78 90 0
tp @a[x=0,team=Lobby,scores={LobbyWarp=6}] 11 204 78 -90 60
tp @a[x=0,team=Lobby,scores={LobbyWarp=7}] -31 193 16 0 0

#Sound and effects
execute as @a[x=0,team=Lobby,scores={LobbyWarp=1..}] at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute as @a[x=0,team=Lobby,tag=!hideParticles,scores={LobbyWarp=1..}] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[x=0,team=Lobby,tag=!hideParticles,scores={LobbyWarp=1..}] at @s run particle flash ~ ~1 ~ 0 0 0 0 5 force @s

#Message about mod room (server mode)
execute as @e[x=0,type=armor_stand,tag=Selection,scores={servermode=1..}] as @a[x=0,team=Lobby,scores={LobbyWarp=2}] run tellraw @s [{"text":"You cannot access this area.","color":"red"}]

#Reset score
scoreboard players reset @a[x=0,scores={LobbyWarp=1..}] LobbyWarp