tag @s add particle_beam.this

execute at @s as @a[x=0,tag=!particle_beam.this,tag=!hideParticles,predicate=custom:in_arena] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{min:0,max:20}}}} run tag @s add particle_beam.very_close
execute at @s as @a[x=0,tag=!particle_beam.this,tag=!hideParticles,predicate=custom:in_arena] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{min:20,max:35}}}} run tag @s[tag=!particle_beam.very_close] add particle_beam.close
execute at @s as @a[x=0,tag=!particle_beam.this,tag=!hideParticles,predicate=custom:in_arena] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{min:35,max:60}}}} run tag @s[tag=!particle_beam.close] add particle_beam.medium
execute at @s as @a[x=0,tag=!particle_beam.this,tag=!hideParticles,predicate=custom:in_arena] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{min:60,max:90}}}} run tag @s[tag=!particle_beam.medium] add particle_beam.far
execute at @s as @a[x=0,tag=!particle_beam.this,tag=!hideParticles,predicate=custom:in_arena] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{min:90,max:1000}}}} run tag @s[tag=!particle_beam.far] add particle_beam.very_far

execute unless predicate game:gamemode_components/red_for_blue at @s[predicate=custom:team/blue] anchored eyes positioned ^ ^ ^ positioned ~ ~2 ~ run function rr_ctf:everytick/particle_beam/loop {color:0x0000FF}
execute if predicate game:gamemode_components/red_for_blue at @s[predicate=custom:team/blue] anchored eyes positioned ^ ^ ^ positioned ~ ~2 ~ run function rr_ctf:everytick/particle_beam/loop {color:0xFF0000}
execute at @s[predicate=custom:team/yellow] anchored eyes positioned ^ ^ ^ positioned ~ ~2 ~ run function rr_ctf:everytick/particle_beam/loop {color:0xFFFF00}

tag @s remove particle_beam.this

tag @a remove particle_beam.very_close
tag @a remove particle_beam.close
tag @a remove particle_beam.medium
tag @a remove particle_beam.far
tag @a remove particle_beam.very_far
