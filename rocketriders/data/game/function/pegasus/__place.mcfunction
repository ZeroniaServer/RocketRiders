execute positioned ^ ^1 ^25 run fill ^-3 ^ ^-31 ^-1 ^5 ^ air
execute positioned ^ ^1 ^25 run fill ^1 ^ ^-31 ^3 ^5 ^ air
execute positioned ^ ^1 ^25 run fill ^-3 ^6 ^-31 ^3 ^17 ^ air

execute positioned ^ ^1 ^25 run fill ^-8 ^14 ^-31 ^-2 ^18 ^ air
execute positioned ^ ^1 ^25 run fill ^-10 ^14 ^-31 ^-9 ^17 ^ air
execute positioned ^ ^1 ^25 run fill ^-13 ^13 ^-31 ^-11 ^16 ^ air
execute positioned ^ ^1 ^25 run fill ^-15 ^12 ^-31 ^-13 ^15 ^ air
execute positioned ^ ^1 ^25 run fill ^-16 ^12 ^-31 ^-16 ^14 ^ air

execute positioned ^ ^1 ^25 run fill ^2 ^14 ^-31 ^8 ^18 ^ air
execute positioned ^ ^1 ^25 run fill ^9 ^14 ^-31 ^10 ^17 ^ air
execute positioned ^ ^1 ^25 run fill ^11 ^13 ^-31 ^13 ^16 ^ air
execute positioned ^ ^1 ^25 run fill ^13 ^12 ^-31 ^15 ^15 ^ air
execute positioned ^ ^1 ^25 run fill ^16 ^12 ^-31 ^16 ^14 ^ air

kill @e[x=0,type=marker,tag=pegasus]
summon marker ^ ^1 ^25 {Tags:["pegasus"]}
rotate @e[limit=1,type=marker,tag=pegasus] ~ ~
