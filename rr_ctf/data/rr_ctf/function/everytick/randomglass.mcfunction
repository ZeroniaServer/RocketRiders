execute store result score $randomglass CmdData run random value 0..15
execute if score $randomglass CmdData matches 0 run setblock ~ ~ ~ red_stained_glass
execute if score $randomglass CmdData matches 1 run setblock ~ ~ ~ orange_stained_glass
execute if score $randomglass CmdData matches 2 run setblock ~ ~ ~ yellow_stained_glass
execute if score $randomglass CmdData matches 3 run setblock ~ ~ ~ lime_stained_glass
execute if score $randomglass CmdData matches 4 run setblock ~ ~ ~ green_stained_glass
execute if score $randomglass CmdData matches 5 run setblock ~ ~ ~ cyan_stained_glass
execute if score $randomglass CmdData matches 6 run setblock ~ ~ ~ light_blue_stained_glass
execute if score $randomglass CmdData matches 7 run setblock ~ ~ ~ blue_stained_glass
execute if score $randomglass CmdData matches 8 run setblock ~ ~ ~ magenta_stained_glass
execute if score $randomglass CmdData matches 9 run setblock ~ ~ ~ purple_stained_glass
execute if score $randomglass CmdData matches 10 run setblock ~ ~ ~ pink_stained_glass
execute if score $randomglass CmdData matches 11 run setblock ~ ~ ~ white_stained_glass
execute if score $randomglass CmdData matches 12 run setblock ~ ~ ~ light_gray_stained_glass
execute if score $randomglass CmdData matches 13 run setblock ~ ~ ~ gray_stained_glass
execute if score $randomglass CmdData matches 14 run setblock ~ ~ ~ black_stained_glass
execute if score $randomglass CmdData matches 15 run setblock ~ ~ ~ brown_stained_glass