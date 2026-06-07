## Lobby easter eggs
# Buttons
execute positioned -37 214 140 unless score $north_lobby_button_activated global matches 1 unless block ~ ~ ~ stone_button[powered=false] as @a[distance=..3] run function lobby:secrets/random_message
execute positioned -37 214 140 unless score $north_lobby_button_activated global matches 1 unless block ~ ~ ~ stone_button[powered=false] run scoreboard players set $north_lobby_button_activated global 1
execute positioned -37 214 140 if score $north_lobby_button_activated global matches 1 if block ~ ~ ~ stone_button[powered=false] run scoreboard players reset $north_lobby_button_activated global

execute positioned -36 214 16 unless score $south_lobby_button_activated global matches 1 unless block ~ ~ ~ stone_button[powered=false] as @a[distance=..3] run function lobby:secrets/random_message
execute positioned -36 214 16 unless score $south_lobby_button_activated global matches 1 unless block ~ ~ ~ stone_button[powered=false] run scoreboard players set $south_lobby_button_activated global 1
execute positioned -36 214 16 if score $south_lobby_button_activated global matches 1 if block ~ ~ ~ stone_button[powered=false] run scoreboard players reset $south_lobby_button_activated global

# Paintings
execute positioned -36 213 15 unless score $north_lobby_painting_activated global matches 1 unless block ~ ~ ~ warped_pressure_plate[powered=false] as @n[distance=..2,type=painting] run function lobby:secrets/random_painting
execute positioned -36 213 15 unless score $north_lobby_painting_activated global matches 1 unless block ~ ~ ~ warped_pressure_plate[powered=false] run scoreboard players set $north_lobby_painting_activated global 1
execute positioned -36 213 15 if score $north_lobby_painting_activated global matches 1 if block ~ ~ ~ warped_pressure_plate[powered=false] run scoreboard players reset $north_lobby_painting_activated global

execute positioned -37 213 141 unless score $south_lobby_painting_activated global matches 1 unless block ~ ~ ~ light_weighted_pressure_plate[power=0] as @n[distance=..2,type=painting] run function lobby:secrets/random_painting
execute positioned -37 213 141 unless score $south_lobby_painting_activated global matches 1 unless block ~ ~ ~ light_weighted_pressure_plate[power=0] run scoreboard players set $south_lobby_painting_activated global 1
execute positioned -37 213 141 if score $south_lobby_painting_activated global matches 1 if block ~ ~ ~ light_weighted_pressure_plate[power=0] run scoreboard players reset $south_lobby_painting_activated global

# Levers
execute unless score $players_in_lobby global matches 0 if block -36 214 15 lever[powered=false] run setblock -36 212 12 redstone_block
execute unless score $players_in_lobby global matches 0 if block -36 214 15 lever[powered=true] run setblock -36 212 12 white_concrete
execute if score $players_in_lobby global matches 0 run setblock -36 214 15 minecraft:lever[face=wall,facing=west,powered=false]
execute if score $players_in_lobby global matches 0 run setblock -36 212 12 redstone_block

execute unless score $players_in_lobby global matches 0 if block -37 214 141 lever[powered=false] run setblock -37 212 144 redstone_block
execute unless score $players_in_lobby global matches 0 if block -37 214 141 lever[powered=true] run setblock -37 212 144 white_concrete
execute if score $players_in_lobby global matches 0 run setblock -37 214 141 minecraft:lever[face=wall,facing=east,powered=false]
execute if score $players_in_lobby global matches 0 run setblock -37 212 144 redstone_block
