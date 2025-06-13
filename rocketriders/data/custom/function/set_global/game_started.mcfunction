# arguments: bool

$scoreboard players set $game_started global $(bool)
execute unless score $game_started global matches 0..1 run scoreboard players set $game_started global 0
