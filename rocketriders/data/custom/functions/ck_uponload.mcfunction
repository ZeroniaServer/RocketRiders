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
team modify Blue friendlyFire false
team modify Yellow friendlyFire false
team modify Spectator friendlyFire false
team modify Developer friendlyFire false

scoreboard players reset * GamesPlayed

function servermode:enabled

setblock -31 190 17 air
setblock -32 190 17 air
setblock -31 190 16 air
setblock -31 191 17 air
setblock -31 190 18 air
setblock -30 190 17 air
setblock -31 189 17 air