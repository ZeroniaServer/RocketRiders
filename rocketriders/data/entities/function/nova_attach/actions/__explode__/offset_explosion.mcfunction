execute store success score $towards_yellow var if entity @a[limit=1,tag=nova_attach.target,predicate=custom:team/blue]
execute if entity @a[limit=1,tag=nova_attach.target,tag=CarryFlag] store success score $towards_yellow var if score $towards_yellow var matches 0

execute if score $towards_yellow var matches 1 positioned ~ ~0.5 ~-1 run function custom:explosion {power:1,modifiers:{copy_name:true}}
execute if score $towards_yellow var matches 0 positioned ~ ~0.5 ~1 run function custom:explosion {power:1,modifiers:{copy_name:true}}
