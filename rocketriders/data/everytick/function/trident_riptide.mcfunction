scoreboard players set $riptide var 0
execute positioned ~-0.3 ~ ~-0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute positioned ~-0.3 ~ ~0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute positioned ~0.3 ~ ~-0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute positioned ~0.3 ~ ~0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute positioned ~-0.3 ~1 ~-0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute positioned ~-0.3 ~1 ~0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute positioned ~0.3 ~1 ~-0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute positioned ~0.3 ~1 ~0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute rotated 0 0 anchored eyes positioned ^-0.3 ^ ^-0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute rotated 0 0 anchored eyes positioned ^-0.3 ^ ^0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute rotated 0 0 anchored eyes positioned ^0.3 ^ ^-0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1
execute rotated 0 0 anchored eyes positioned ^0.3 ^ ^0.3 if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run scoreboard players set $riptide var 1

execute if score $riptide var matches 1 if items entity @s weapon.mainhand trident[!minecraft:enchantments~[{enchantments:"minecraft:riptide"}]] run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:enchantments":{"minecraft:loyalty":10,"minecraft:riptide":1}}}
execute if score $riptide var matches 1 if items entity @s weapon.offhand trident[!minecraft:enchantments~[{enchantments:"minecraft:riptide"}]] run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:enchantments":{"minecraft:loyalty":10,"minecraft:riptide":1}}}
execute if score $riptide var matches 0 if items entity @s weapon.mainhand trident[minecraft:enchantments~[{enchantments:"minecraft:riptide"}]] run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:enchantments":{"minecraft:loyalty":10,"minecraft:impaling":2}}}
execute if score $riptide var matches 0 if items entity @s weapon.offhand trident[minecraft:enchantments~[{enchantments:"minecraft:riptide"}]] run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:enchantments":{"minecraft:loyalty":10,"minecraft:impaling":2}}}
