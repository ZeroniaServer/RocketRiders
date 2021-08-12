schedule function lobby:credits/restart 3t append
scoreboard objectives add moleratConfirm trigger

tp @e[type=armor_stand,tag=Selection] 25 184 -6
tp @e[type=armor_stand,tag=rr_normal] 25 184 -6
tp @e[type=armor_stand,tag=rr_powerups] 25 184 -6
tp @e[type=armor_stand,tag=rr_swap] 25 184 -6
tp @e[type=armor_stand,tag=rr_ctf] 25 184 -6
tp @e[type=armor_stand,tag=rr_chase] 25 184 -6
tp @e[type=armor_stand,tag=rr_duel] 25 184 -6

team add Lobby
team add Blue
team add Yellow
team add Spectator
team add Developer

team modify Lobby color green
team modify Blue color blue
team modify Yellow color gold
team modify Spectator color dark_gray
team modify Developer color dark_green

team modify Lobby collisionRule never
team modify Blue collisionRule never
team modify Yellow collisionRule never
team modify Spectator collisionRule never
team modify Developer collisionRule never

team modify Lobby friendlyFire false
execute unless entity @e[type=armor_stand,tag=Selection,tag=onlyBlue] run team modify Blue friendlyFire false
team modify Yellow friendlyFire false
team modify Spectator friendlyFire false
team modify Developer friendlyFire false

gamerule logAdminCommands false