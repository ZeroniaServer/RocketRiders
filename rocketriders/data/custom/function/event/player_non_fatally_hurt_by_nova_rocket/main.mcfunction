advancement revoke @s only custom:event/player_non_fatally_hurt_by_nova_rocket

execute on attacker if entity @s[type=creeper] run function custom:target_uuid {read_from:"entity @s data.explosion.origin",run:"tag @s[type=player] add nova_attach.origin"}
execute on attacker run tag @s[type=player] add nova_attach.origin
execute unless entity @a[limit=1,tag=nova_attach.origin] run return run say F1

scoreboard players set $origin_team var -1
execute as @a[limit=1,tag=nova_attach.origin] if predicate custom:on_blue_or_yellow_team store success score $origin_team var if entity @s[team=!Blue]

execute if score $origin_team var matches 0 if entity @s[team=Blue] run return run say F2
execute if score $origin_team var matches 1 if entity @s[team=Yellow] run return run say F3

function entities:nova_attach/init
tag @a[limit=1,tag=nova_attach.origin] remove nova_attach.origin
