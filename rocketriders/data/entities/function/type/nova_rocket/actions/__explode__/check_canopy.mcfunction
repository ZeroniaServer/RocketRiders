# If there are no passengers at all on this canopy, poof!
execute unless function entities:type/canopy/has_passengers run return run function entities:type/nova_rocket/actions/__explode__/canopy_poof

# If the nova rocket shooter is on the same team as this canopy
execute if score $nova_rocket_team var matches 0 if predicate entities:origin_team/blue run return fail
execute if score $nova_rocket_team var matches 1 if predicate entities:origin_team/yellow run return fail

# If the nova rocket shooter or one of their teammates is on the canopy, do not poof
tag @a[x=0,tag=nova_rocket.enemy_canopy_occupant] remove nova_rocket.enemy_canopy_occupant
execute if score $nova_rocket_team var matches 0 run function entities:type/canopy/execute_as_passengers {run:"tag @s[predicate=custom:team/yellow] add nova_rocket.enemy_canopy_occupant"}
execute if score $nova_rocket_team var matches 1 run function entities:type/canopy/execute_as_passengers {run:"tag @s[predicate=custom:team/blue] add nova_rocket.enemy_canopy_occupant"}
execute if score $nova_rocket_team var matches -1 run function entities:type/canopy/execute_as_passengers {run:"tag @s[tag=!nova_rocket.origin] add nova_rocket.enemy_canopy_occupant"}

execute unless entity @a[limit=1,tag=nova_rocket.enemy_canopy_occupant] run return fail

# If enemies are on the canopy, poof!
function entities:type/nova_rocket/actions/__explode__/canopy_poof

# Ensure enemy canopy occupants get nova attached
execute as @a[tag=nova_rocket.enemy_canopy_occupant] run function entities:type/nova_attach/init
tag @a[tag=nova_rocket.enemy_canopy_occupant] remove nova_rocket.enemy_canopy_occupant
