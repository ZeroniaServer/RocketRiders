# arguments: target

$particle minecraft:trail{duration:40,color:0x00FF00,target:$(target)} ~ ~ ~ 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena,predicate=custom:team/$(team),tag=!hideParticles]
$particle minecraft:trail{duration:40,color:0xAFAFAF,target:$(target)} ~ ~ ~ 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena,predicate=!custom:team/$(team),tag=!hideParticles]
