#Items
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow] run function custom:update_armor

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow
