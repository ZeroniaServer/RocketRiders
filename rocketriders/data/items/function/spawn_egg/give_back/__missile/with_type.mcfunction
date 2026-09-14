$execute if score $mainhand_free var matches 1 run loot replace entity @s weapon.mainhand loot items:item/missile/$(missile)
$execute if score $mainhand_free var matches 0 if score $offhand_free var matches 1 run loot replace entity @s weapon.offhand loot items:item/missile/$(missile)
$execute if score $mainhand_free var matches 0 if score $offhand_free var matches 0 run loot give @s loot items:item/missile/$(missile)
