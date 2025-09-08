advancement revoke @s only custom:event/player_non_fatally_hurt_by_nova_rocket

function custom:target_attackers {run:"tag @s[type=player] add nova_attach.origin"}

scoreboard players set $origin_team var -1
execute as @a[limit=1,tag=nova_attach.origin] if predicate custom:on_blue_or_yellow_team store success score $origin_team var if entity @s[team=!Blue]
execute if entity @a[limit=1,tag=nova_attach.origin,team=Blue] if entity @a[limit=1,tag=nova_attach.origin,team=Yellow] run scoreboard players set $origin_team var -1

execute if score $origin_team var matches -1 unless entity @s[tag=nova_attach.origin] run function entities:nova_attach/init
execute if score $origin_team var matches 0 unless entity @s[team=Blue] run function entities:nova_attach/init
execute if score $origin_team var matches 1 unless entity @s[team=Yellow] run function entities:nova_attach/init

tag @a[limit=2,tag=nova_attach.origin] remove nova_attach.origin
