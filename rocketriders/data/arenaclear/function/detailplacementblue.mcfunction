##Detail placement for Blue specifically

#New Dawn - Blue
execute if predicate game:arena_details/middle/slime_pads run place template game:blue_cornerhole 24 49 -55 none none 1 0 strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:gamemode_components/red_for_blue positioned 24 49 -55 run fill ~ ~ ~ ~8 ~8 ~3 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:gamemode_components/red_for_blue positioned 24 49 -55 run fill ~1 ~ ~2 ~7 ~4 ~7 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:gamemode_components/red_for_blue positioned 24 49 -55 run fill ~3 ~5 ~1 ~5 ~7 ~1 minecraft:magenta_stained_glass_pane[east=true,north=true,south=false,waterlogged=false,west=true] replace minecraft:purple_stained_glass_pane strict

execute if predicate game:arena_details/middle/slime_pads run place template game:blue_cornerhole -8 49 -55 none none 1 0 strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:gamemode_components/red_for_blue positioned -8 49 -55 run fill ~ ~ ~ ~8 ~8 ~3 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:gamemode_components/red_for_blue positioned -8 49 -55 run fill ~1 ~ ~2 ~7 ~4 ~7 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:gamemode_components/red_for_blue positioned -8 49 -55 run fill ~3 ~5 ~1 ~5 ~7 ~1 minecraft:magenta_stained_glass_pane[east=true,north=true,south=false,waterlogged=false,west=true] replace minecraft:purple_stained_glass_pane strict

execute if predicate game:arena_details/bottom/slime_pad run place template game:blue_cornerhole 8 39 -55 none none 1 0 strict
execute if predicate game:arena_details/bottom/slime_pad if predicate game:gamemode_components/red_for_blue positioned 8 39 -55 run fill ~ ~ ~ ~8 ~8 ~3 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/bottom/slime_pad if predicate game:gamemode_components/red_for_blue positioned 8 39 -55 run fill ~1 ~ ~2 ~7 ~4 ~7 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict
execute if predicate game:arena_details/bottom/slime_pad if predicate game:gamemode_components/red_for_blue positioned 8 39 -55 run fill ~3 ~5 ~1 ~5 ~7 ~1 minecraft:magenta_stained_glass_pane[east=true,north=true,south=false,waterlogged=false,west=true] replace minecraft:purple_stained_glass_pane strict

execute if predicate game:arena_details/top_sides/platform run place template game:blue_topplatform 17 59 -54 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform if predicate game:gamemode_components/red_for_blue run fill 17 59 -54 23 63 -51 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/top_sides/platform if predicate game:gamemode_components/red_for_blue run fill 17 59 -53 23 63 -47 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict
execute if predicate game:arena_details/top_sides/platform run place template game:blue_topplatform 1 59 -54 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform if predicate game:gamemode_components/red_for_blue run fill 1 59 -54 7 63 -51 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/top_sides/platform if predicate game:gamemode_components/red_for_blue run fill 1 59 -53 7 63 -47 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

execute if predicate game:arena_details/top/arch run place template game:blue_arch 2 64 -58 none none 1 0 strict
execute if predicate game:arena_details/top/arch if predicate game:gamemode_components/red_for_blue run setblock 12 70 -56 minecraft:red_stained_glass strict
execute if predicate game:arena_details/top/arch if predicate game:gamemode_components/red_for_blue run fill 3 64 -57 21 70 -55 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

#Towers - Blue
execute if predicate game:arena_details/top/towers run place template game:blue_archertower -7 64 -62 none none 1 0 strict
execute if predicate game:arena_details/top/towers if predicate game:gamemode_components/red_for_blue positioned -7 64 -62 run fill ~1 ~ ~1 ~7 ~8 ~7 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/top/towers if predicate game:gamemode_components/red_for_blue positioned -7 64 -62 run fill ~2 ~ ~2 ~6 ~8 ~6 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

execute if predicate game:arena_details/top/towers run place template game:blue_archertower 23 64 -62 none none 1 0 strict
execute if predicate game:arena_details/top/towers if predicate game:gamemode_components/red_for_blue positioned 23 64 -62 run fill ~1 ~ ~1 ~7 ~8 ~7 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/top/towers if predicate game:gamemode_components/red_for_blue positioned 23 64 -62 run fill ~2 ~ ~2 ~6 ~8 ~6 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

#Spikes - Blue
execute if predicate game:arena_details/top/spikes run place template game:blue_spiketop -2 64 -66 none none 1 0 strict
execute if predicate game:arena_details/top/spikes if predicate game:gamemode_components/red_for_blue positioned -2 64 -66 run fill ~5 ~ ~ ~23 ~10 ~18 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/top/spikes if predicate game:gamemode_components/red_for_blue positioned -2 64 -66 run fill ~4 ~ ~5 ~24 ~10 ~13 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

execute if predicate game:arena_details/top_sides/spikes run place template game:blue_spikeside -7 56 -53 none none 1 0 strict
execute if predicate game:arena_details/top_sides/spikes if predicate game:gamemode_components/red_for_blue run fill 0 60 -51 4 63 -47 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/top_sides/spikes if predicate game:gamemode_components/red_for_blue run fill -4 59 -52 5 63 -43 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

execute if predicate game:arena_details/top_sides/spikes run place template game:blue_spikeside 31 56 -53 none front_back 1 0 strict
execute if predicate game:arena_details/top_sides/spikes if predicate game:gamemode_components/red_for_blue run fill 20 63 -51 24 60 -47 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/top_sides/spikes if predicate game:gamemode_components/red_for_blue run fill 19 59 -52 28 63 -43 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

execute if predicate game:arena_details/bottom/spikes run place template game:blue_spikebottom 8 34 -51 none none 1 0 strict
execute if predicate game:arena_details/bottom/spikes if predicate game:gamemode_components/red_for_blue run fill -14 34 -51 38 49 -29 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/bottom/spikes if predicate game:gamemode_components/red_for_blue run fill -14 34 -51 38 49 -37 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

execute if predicate game:arena_details/middle/spikes run place template game:blue_spikemid_right 7 50 -51 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes run place template game:blue_spikemid_left -14 50 -51 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes if predicate game:gamemode_components/red_for_blue run fill -14 50 -51 38 56 -29 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/middle/spikes if predicate game:gamemode_components/red_for_blue run fill -14 50 -51 38 61 -37 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict

#Layered - Blue
execute if predicate game:arena_details/middle/layered unless predicate game:gamemode_components/red_for_blue run fill 38 34 -49 -14 40 -51 minecraft:blue_stained_glass replace air strict
execute if predicate game:arena_details/middle/layered unless predicate game:gamemode_components/red_for_blue run fill -14 41 -50 38 48 -51 minecraft:blue_stained_glass replace air strict
execute if predicate game:arena_details/middle/layered unless predicate game:gamemode_components/red_for_blue run fill 38 49 -51 -14 56 -51 minecraft:blue_stained_glass replace air strict
execute if predicate game:arena_details/middle/layered unless predicate game:gamemode_components/red_for_blue run fill -14 63 -55 38 63 -52 minecraft:black_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/middle/layered if predicate game:gamemode_components/red_for_blue run fill 38 34 -49 -14 40 -51 minecraft:red_stained_glass replace air strict
execute if predicate game:arena_details/middle/layered if predicate game:gamemode_components/red_for_blue run fill -14 41 -50 38 48 -51 minecraft:red_stained_glass replace air strict
execute if predicate game:arena_details/middle/layered if predicate game:gamemode_components/red_for_blue run fill 38 49 -51 -14 56 -51 minecraft:red_stained_glass replace air strict
execute if predicate game:arena_details/middle/layered if predicate game:gamemode_components/red_for_blue run fill -14 63 -55 38 63 -52 minecraft:black_stained_glass replace minecraft:red_stained_glass strict
execute if predicate game:arena_details/middle/layered run fill 38 41 -49 -14 41 -49 minecraft:black_stained_glass replace air strict
execute if predicate game:arena_details/middle/layered run fill 38 57 -51 -14 57 -51 minecraft:black_stained_glass replace air strict
execute if predicate game:arena_details/middle/layered run fill -14 49 -50 38 49 -50 minecraft:black_stained_glass replace air strict

#Cannons - Blue
execute if predicate game:arena_details/top_sides/cannons run place template game:blue_cannon 18 60 -55 none none 1 0 strict
execute if predicate game:arena_details/top_sides/cannons if predicate game:gamemode_components/red_for_blue run setblock 20 63 -53 minecraft:red_stained_glass strict
execute if predicate game:arena_details/top_sides/cannons if predicate game:gamemode_components/red_for_blue run fill 18 60 -54 22 64 -51 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict
execute if predicate game:arena_details/top_sides/cannons if predicate game:gamemode_components/red_for_blue run fill 20 64 -53 20 65 -52 minecraft:red_glazed_terracotta[facing=west] replace minecraft:blue_glazed_terracotta strict

execute if predicate game:arena_details/top_sides/cannons run place template game:blue_cannon 2 60 -55 none none 1 0 strict
execute if predicate game:arena_details/top_sides/cannons if predicate game:gamemode_components/red_for_blue run setblock 4 63 -53 minecraft:red_stained_glass strict
execute if predicate game:arena_details/top_sides/cannons if predicate game:gamemode_components/red_for_blue run fill 2 60 -54 6 64 -52 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict
execute if predicate game:arena_details/top_sides/cannons if predicate game:gamemode_components/red_for_blue run fill 4 64 -53 4 65 -52 minecraft:red_glazed_terracotta[facing=west] replace minecraft:blue_glazed_terracotta strict

execute if predicate game:arena_details/bottom/cannon run place template game:blue_cannon_bottom 8 39 -55 none none 1 0 strict
execute if predicate game:arena_details/bottom/cannon if predicate game:gamemode_components/red_for_blue run fill 8 39 -55 16 47 -49 minecraft:red_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/bottom/cannon if predicate game:gamemode_components/red_for_blue run fill 8 39 -52 16 44 -48 minecraft:pink_stained_glass replace minecraft:cyan_stained_glass strict
execute if predicate game:arena_details/bottom/cannon if predicate game:gamemode_components/red_for_blue run fill 12 44 -49 12 45 -48 minecraft:red_glazed_terracotta[facing=west] replace minecraft:blue_glazed_terracotta strict
execute if predicate game:arena_details/bottom/cannon if predicate game:gamemode_components/red_for_blue run fill 11 44 -54 13 46 -54 minecraft:magenta_stained_glass_pane[east=true,north=true,south=false,waterlogged=false,west=true] replace minecraft:purple_stained_glass_pane strict
