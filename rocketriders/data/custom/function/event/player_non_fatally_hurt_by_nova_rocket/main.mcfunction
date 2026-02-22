advancement revoke @s only custom:event/player_non_fatally_hurt_by_nova_rocket

# Do nothing if in my own spawn zone
execute if predicate custom:near_own_spawn_zone run return 0

# Otherwise, nova attach if hit by an enemy
function custom:target_attackers {run:"tag @s[type=player] add nova_attach.origin"}

scoreboard players set $origin_team var -1
execute as @a[limit=1,x=0,tag=nova_attach.origin] if predicate custom:team/any_playing_team store success score $origin_team var unless predicate custom:team/blue
execute if entity @a[limit=1,x=0,tag=nova_attach.origin,predicate=custom:team/blue] if entity @a[limit=1,x=0,tag=nova_attach.origin,predicate=custom:team/yellow] run scoreboard players set $origin_team var -1

execute if score $origin_team var matches -1 unless entity @s[tag=nova_attach.origin] run function entities:type/nova_attach/init
execute if score $origin_team var matches 0 unless entity @s[predicate=custom:team/blue] run function entities:type/nova_attach/init
execute if score $origin_team var matches 1 unless entity @s[predicate=custom:team/yellow] run function entities:type/nova_attach/init

tag @a[x=0,tag=nova_attach.origin] remove nova_attach.origin
