data modify entity @s Owner set from entity @a[limit=1,tag=spell_emitter.origin] UUID
rotate @s ~ ~
execute rotated as @s run function entities:spell_emitter/init
