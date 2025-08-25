# If the nova rocket shooter is on the same team as this canopy
execute if score $nova_rocket_team var matches 0 if predicate entities:origin_team/blue run return fail
execute if score $nova_rocket_team var matches 1 if predicate entities:origin_team/yellow run return fail

# If the nova rocket shooter or one of their teammates is on the canopy, do not go boom
tag @a[tag=nova_rocket.canopy_passengers] remove nova_rocket.canopy_passengers
function entities:canopy/execute_as_passengers {run:"tag @s add nova_rocket.canopy_passengers"}
execute if score $nova_rocket_team var matches 0 if entity @a[limit=1,tag=nova_rocket.canopy_passengers,team=Blue] run return run tag @a[tag=nova_rocket.canopy_passengers] remove nova_rocket.canopy_passengers
execute if score $nova_rocket_team var matches 1 if entity @a[limit=1,tag=nova_rocket.canopy_passengers,team=Yellow] run return run tag @a[tag=nova_rocket.canopy_passengers] remove nova_rocket.canopy_passengers
execute if score $nova_rocket_team var matches -1 if entity @a[limit=1,tag=nova_rocket.canopy_passengers,tag=nova_rocket.origin] run return run tag @a[tag=nova_rocket.canopy_passengers] remove nova_rocket.canopy_passengers

# Nova attach targets
execute as @a[tag=nova_rocket.canopy_passengers] run function entities:nova_attach/init
tag @a[tag=nova_rocket.canopy_passengers] remove nova_rocket.canopy_passengers

function entities:canopy/actions/boom
