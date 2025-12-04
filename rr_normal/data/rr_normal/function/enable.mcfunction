scoreboard players reset * gamemode_components
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1

tag @s remove switchGamemodes
tag @s add normalEnabled

# items
scoreboard players set $item_pool.cluster_fireball gamemode_components -1
scoreboard players set $item_pool.icbm gamemode_components -1
