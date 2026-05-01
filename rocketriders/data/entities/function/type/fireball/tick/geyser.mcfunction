function entities:type/fireball/actions/break

particle minecraft:geyser_poof{water_blocks: 10, burst_impulse_base:0} ~ ~-0.5 ~ 0.1 0.2 0.1 0.5 20
particle minecraft:geyser{water_blocks:2}

playsound minecraft:block.potent_sulfur.geyser_eruption master @a[x=0] ~ ~ ~ 1 2

function everytick:geyser_evaporate
summon minecraft:marker ~ ~ ~ {Tags:["geyser"]}
