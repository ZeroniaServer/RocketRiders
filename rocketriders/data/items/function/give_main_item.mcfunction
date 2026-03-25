clear @s *[custom_data~{id:"shooting_saber"}|custom_data~{id:"piercing_pickaxe"}|custom_data~{id:"rocket_nomicon"}|custom_data~{id:"knight_sword"}|custom_data~{id:"mage_wand"}]

loot replace block 0 184 -16 container.0 27 loot custom:empty
execute if items entity @s hotbar.0 * run item replace block 0 184 -16 container.0 from entity @s hotbar.0
item replace entity @s hotbar.0 with air

execute if predicate game:main_item/shooting_saber run loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute if predicate game:main_item/shooting_saber if predicate game:phase/staging run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:20}]}]}
execute if predicate game:main_item/piercing_pickaxe run loot replace entity @s hotbar.0 loot items:misc/piercing_pickaxe
execute if predicate game:main_item/rocket_nomicon run loot replace entity @s hotbar.0 loot items:misc/rocket_nomicon
execute if predicate game:main_item/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace entity @s hotbar.0 loot items:misc/knight_sword
execute if predicate game:main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer run loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute if predicate game:main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer if predicate game:phase/staging run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:20}]}]}
execute if predicate game:main_item/crusade_kit_dependent if predicate rr_crusade:kit/mage run loot replace entity @s hotbar.0 loot items:misc/spell_wand

loot give @s mine 0 184 -16 stick[custom_data={drop_contents:true}]
