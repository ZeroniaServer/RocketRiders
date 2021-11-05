tag @s remove pveEnabled
tag @s remove HardcoreOff
tag @s[tag=HardcoreWasOn] add Hardcore
execute as @s[tag=HardcoreWasOn] run function arenaclear:lockdecos
tag @s remove HardcoreWasOn
tag @s remove tyingOff
tag @s remove customBossbar
tag @s remove noTeamBalance
tag @s remove onlyBlue
tag @s add switchGamemodes