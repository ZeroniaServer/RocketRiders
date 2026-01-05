#> Kill items to prevent duplication glitches
execute if predicate game:item_pool/missile/bullet as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/bullet"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/missile/duplex as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/duplex"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/missile/auxiliary as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/auxiliary"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/missile/warhead as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/warhead"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/icbm as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"icbm"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/shield as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"shield"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/missile/hypersonic as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/hypersonic"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/missile/broadsword as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/broadsword"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/missile/hurricane as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/hurricane"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/missile/thunderbolt as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/thunderbolt"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/fireball as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"cluster_fireball"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/obsidian_shield as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"obsidian_shield"}] run function rr_swap:items/darkbluededuct
execute if predicate game:item_pool/arrow as @e[x=0,type=item] if items entity @s contents arrow run function items:deduct
function items:full_hotbar
