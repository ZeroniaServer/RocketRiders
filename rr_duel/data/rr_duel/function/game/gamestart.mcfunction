#Items
execute as @a[x=0,tag=JoinBlue] run function custom:player/update_armor
execute as @a[x=0,tag=JoinYellow] run function custom:player/update_armor

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow
