#moonwalker

##check displacement
execute as @a unless entity @s[team=!Blue,team=!Yellow] store result score @s dx run data get entity @s Pos[0] 400
execute as @a unless entity @s[team=!Blue,team=!Yellow] store result score @s dz run data get entity @s Pos[2] 400
execute as @a unless entity @s[team=!Blue,team=!Yellow] run scoreboard players operation @s dx -= @s x
execute as @a unless entity @s[team=!Blue,team=!Yellow] run scoreboard players operation @s dz -= @s z
execute as @a unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] run tag @s add firstMoved

##movement/rotation checks
#regular walking
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] run scoreboard players add @s notBackwards 1
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=!custom:is_sprinting,predicate=!custom:is_sneaking,scores={dx=-33..33,dz=..-34},y_rotation=-22.5..22.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=!custom:is_sprinting,predicate=!custom:is_sneaking,scores={dx=34..,dz=..-34},y_rotation=22.5..67.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=!custom:is_sprinting,predicate=!custom:is_sneaking,scores={dx=34..,dz=-33..33},y_rotation=67.5..112.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=!custom:is_sprinting,predicate=!custom:is_sneaking,scores={dx=34..,dz=34..},y_rotation=112.5..157.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=!custom:is_sprinting,predicate=!custom:is_sneaking,scores={dx=-33..33,dz=34..},y_rotation=157.5..202.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=!custom:is_sprinting,predicate=!custom:is_sneaking,scores={dx=..-34,dz=34..},y_rotation=202.5..247.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=!custom:is_sprinting,predicate=!custom:is_sneaking,scores={dx=..-34,dz=-33..33},y_rotation=247.5..292.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=!custom:is_sprinting,predicate=!custom:is_sneaking,scores={dx=..-34,dz=..-34},y_rotation=292.5..337.5] run scoreboard players set @s notBackwards 0

#sprinting
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=custom:is_sneaking,scores={dx=-10..10,dz=..-11},y_rotation=-22.5..22.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=custom:is_sneaking,scores={dx=11..,dz=..-11},y_rotation=22.5..67.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=custom:is_sneaking,scores={dx=11..,dz=-10..10},y_rotation=67.5..112.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=custom:is_sneaking,scores={dx=11..,dz=11..},y_rotation=112.5..157.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=custom:is_sneaking,scores={dx=-10..10,dz=11..},y_rotation=157.5..202.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=custom:is_sneaking,scores={dx=..-11,dz=11..},y_rotation=202.5..247.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=custom:is_sneaking,scores={dx=..-11,dz=-10..10},y_rotation=247.5..292.5] run scoreboard players set @s notBackwards 0
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if entity @s[predicate=custom:is_sneaking,scores={dx=..-11,dz=..-11},y_rotation=292.5..107.5] run scoreboard players set @s notBackwards 0

##fail condition
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] unless entity @s[scores={dx=0,dz=0}] if score @s notBackwards matches 10.. run tag @s add FailedMoon
#if player sprints, they're not walking backwards
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] if entity @s[predicate=custom:is_sprinting] run tag @s add FailedMoon
scoreboard players reset @a[tag=FailedMoon] notBackwards

##check original position
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] store result score @s x run data get entity @s Pos[0] 400
execute as @a[tag=!FailedMoon] unless entity @s[team=!Blue,team=!Yellow] store result score @s z run data get entity @s Pos[2] 400