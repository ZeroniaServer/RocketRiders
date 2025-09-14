tag @s remove return
particle item{item:{id:"trident"}} ~ ~ ~ 0.01 0.01 0.01 0.3 10 normal @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
playsound entity.item.break player @a[x=0] ~ ~ ~ 1 1
kill @s
