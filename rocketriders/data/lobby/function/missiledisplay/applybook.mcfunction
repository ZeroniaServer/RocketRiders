##Operator command used when the Missile Display book is lost or changed
setblock 12 203 78 barrel
loot replace block 12 203 78 container.0 loot items:missile_display_book
data modify storage rocketriders:book book set from block 12 203 78 Items[0]
setblock 12 203 78 minecraft:lectern[facing=west,has_book=true,powered=false]{Book:{id:"minecraft:written_book"},Page:1}
data modify block 12 203 78 Book set from storage rocketriders:book book
data remove storage rocketriders:book book
