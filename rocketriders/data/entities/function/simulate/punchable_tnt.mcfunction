execute unless predicate game:phase/match run return 0

execute if predicate game:modifiers/punchable_tnt/on as @e[x=0,type=interaction,predicate=entities:type/punchable_tnt/brain,scores={entity.age=0..}] run function entities:type/punchable_tnt/actions/kill
