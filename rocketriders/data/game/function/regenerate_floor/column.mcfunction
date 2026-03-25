$execute if score $z_offset var >= $front_depth var if block ~ ~ ~ #custom:air unless entity @e[limit=1,distance=..5,type=player,gamemode=!spectator] run setblock ~ ~ ~ $(front)
$execute if score $z_offset var >= $middle_depth var if block ~ ~ ~ #custom:air unless entity @e[limit=1,distance=..5,type=player,gamemode=!spectator] run setblock ~ ~ ~ $(middle)
$execute if block ~ ~ ~ #custom:air unless entity @e[limit=1,distance=..5,type=player,gamemode=!spectator] run setblock ~ ~ ~ $(back)
