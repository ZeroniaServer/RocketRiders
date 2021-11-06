##Actions to be performed upon world load
schedule function lobby:credits/restart 3t append
schedule function lobby:replacesigns 3t append
scoreboard players set $barriers CmdData 73

#Pre-1.0.4 compatibility
scoreboard objectives add moleratConfirm trigger
scoreboard objectives remove displayinfo
scoreboard objectives add displayinfo trigger

#Pre-1.1.0 compatibility
scoreboard objectives remove displayinfo
scoreboard objectives add displayinfo trigger

#Add teams for Paper compatibility
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
execute unless entity @e[type=armor_stand,tag=Selection,tag=chaseEnabled] run team modify Blue friendlyFire false
team modify Yellow friendlyFire false
team modify Spectator friendlyFire false
team modify Developer friendlyFire false

#Gamerules
gamerule logAdminCommands false