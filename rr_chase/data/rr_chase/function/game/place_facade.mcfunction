execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run return fail

#Chaseblock heads (parkour)
execute unless predicate game:modifiers/molerat/on unless predicate game:modifiers/hardcore/on run setblock -92 201 68 minecraft:player_head[rotation=0]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2YzOGEyMzNlNzllNTE2OGYyODNkYjFhMmNiODQxZTg4YTc5NTYzMGFkOGFkOWU3ZDE3NzU4M2MxODQ4OTAwNiJ9fX0="}]}} strict
execute if predicate game:modifiers/molerat/on run setblock -92 200 70 minecraft:player_wall_head[facing=south]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}} strict
execute if predicate game:modifiers/hardcore/on run setblock -92 200 70 minecraft:player_wall_head[facing=south]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}} strict

setblock -96 201 70 minecraft:player_wall_head[facing=west]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
execute unless predicate game:modifiers/molerat/on run setblock -89 203 71 minecraft:player_head[rotation=0]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
execute if predicate game:modifiers/molerat/on run setblock -90 203 71 minecraft:player_head[rotation=0]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
setblock -99 200 71 minecraft:player_wall_head[facing=east]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
setblock -94 204 74 minecraft:player_head[rotation=12]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
setblock -97 203 74 minecraft:player_head[rotation=12]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
setblock -98 199 74 minecraft:player_head[rotation=0]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
setblock -95 200 75 minecraft:player_head[rotation=12]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}} strict
setblock -100 202 75 minecraft:player_head[rotation=0]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
setblock -91 204 76 minecraft:player_wall_head[facing=east]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
setblock -90 199 77 minecraft:player_wall_head[facing=north]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
setblock -96 200 78 minecraft:player_wall_head[facing=west]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
setblock -99 201 78 minecraft:player_head[rotation=4]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}} strict
setblock -93 205 79 minecraft:player_head[rotation=12]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}} strict
setblock -96 202 81 minecraft:player_wall_head[facing=south]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
setblock -92 197 82 minecraft:player_wall_head[facing=south]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
setblock -99 203 82 minecraft:player_head[rotation=0]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
setblock -93 201 83 minecraft:player_wall_head[facing=east]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}} strict
setblock -100 198 83 minecraft:player_head[rotation=8]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
setblock -90 201 85 minecraft:player_wall_head[facing=west]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
setblock -100 203 85 minecraft:player_wall_head[facing=north]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}} strict
setblock -96 197 86 minecraft:player_wall_head[facing=east]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}} strict
execute unless predicate game:modifiers/molerat/on run setblock -92 202 87 minecraft:player_wall_head[facing=east]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict
execute if predicate game:modifiers/molerat/on run setblock -92 202 86 minecraft:player_wall_head[facing=east]{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}} strict

#Banner in pregame queue
function rr_chase:game/place_facade/place_banner with storage rocketriders:teams yellow.team_banner

#Stairs in pregame queue
fill -94 201 95 -96 201 96 obsidian strict
fill -93 201 95 -93 201 96 air strict
fill -93 200 96 -93 200 95 obsidian strict
fill -92 201 95 -92 200 96 air strict
fill -92 199 96 -92 199 95 obsidian strict
fill -91 201 95 -91 199 96 air strict
fill -91 198 96 -91 198 95 obsidian strict
fill -90 201 95 -90 198 96 air strict
fill -90 197 96 -90 197 95 obsidian strict
fill -89 200 95 -89 197 96 air strict
fill -89 196 96 -89 196 95 obsidian strict
fill -97 201 95 -97 201 96 air strict
fill -97 200 96 -97 200 95 obsidian strict
fill -98 201 95 -98 200 96 air strict
fill -98 199 96 -98 199 95 obsidian strict
fill -99 201 95 -99 199 96 air strict
fill -99 198 96 -99 198 95 obsidian strict
fill -100 201 95 -100 198 96 air strict
fill -100 197 96 -100 197 95 obsidian strict
fill -101 200 95 -101 197 96 air strict
fill -101 196 96 -101 196 95 obsidian strict
fill -100 201 95 -90 201 96 barrier replace #custom:lobby_air strict
