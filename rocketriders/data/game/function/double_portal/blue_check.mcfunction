execute in minecraft:overworld unless block -9 38 -74 minecraft:nether_portal unless score $blue_single_portal match matches 1 store result score $blue_single_portal match run function game:double_portal/blue_announce
execute in minecraft:overworld unless block 13 38 -74 minecraft:nether_portal unless score $blue_single_portal match matches 1 store result score $blue_single_portal match run function game:double_portal/blue_announce
return fail
