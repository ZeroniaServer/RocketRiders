##Actions to be performed upon world load
schedule function lobby:credits/restart_indimension 3t append
scoreboard players set $barriers CmdData 73
scoreboard players add $reloaded CmdData 1

#Add teams for Paper compatibility
team add Lobby
team add Blue
team add Yellow
team add Spectator
team add Developer

team modify Lobby color green
execute unless entity @e[type=armor_stand,tag=Selection,tag=chaseEnabled] run team modify Blue color blue
execute if entity @e[type=armor_stand,tag=Selection,tag=chaseEnabled] run team modify Blue color dark_red
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
execute if entity @e[type=armor_stand,tag=Selection,tag=chaseEnabled] run team modify Blue friendlyFire true
team modify Yellow friendlyFire false
team modify Spectator friendlyFire false
team modify Developer friendlyFire false

#Gamerules
gamerule logAdminCommands false

#Check updates
schedule function world_updates:check_updates_indimension 2s replace