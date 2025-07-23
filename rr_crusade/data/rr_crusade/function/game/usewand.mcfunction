scoreboard players reset @s useWand

execute unless items entity @s container.* enchanted_book unless items entity @s weapon.offhand enchanted_book run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute unless items entity @s container.* enchanted_book unless items entity @s weapon.offhand enchanted_book run title @s actionbar [{"text":"No spells to cast!","color":"red"}]
execute unless items entity @s container.* enchanted_book unless items entity @s weapon.offhand enchanted_book run return run scoreboard players set @s impulse_cooldown 2

execute if items entity @s weapon.offhand enchanted_book run return run function rr_crusade:spell/cast {slot:"weapon.offhand"}

execute if items entity @s hotbar.0 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.0"}
execute if items entity @s hotbar.1 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.1"}
execute if items entity @s hotbar.2 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.2"}
execute if items entity @s hotbar.3 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.3"}
execute if items entity @s hotbar.4 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.4"}
execute if items entity @s hotbar.5 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.5"}
execute if items entity @s hotbar.6 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.6"}
execute if items entity @s hotbar.7 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.7"}
execute if items entity @s hotbar.8 enchanted_book run return run function rr_crusade:spell/cast {slot:"hotbar.8"}

execute if items entity @s inventory.0 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.0"}
execute if items entity @s inventory.1 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.1"}
execute if items entity @s inventory.2 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.2"}
execute if items entity @s inventory.3 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.3"}
execute if items entity @s inventory.4 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.4"}
execute if items entity @s inventory.5 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.5"}
execute if items entity @s inventory.6 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.6"}
execute if items entity @s inventory.7 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.7"}
execute if items entity @s inventory.8 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.8"}
execute if items entity @s inventory.9 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.9"}
execute if items entity @s inventory.10 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.10"}
execute if items entity @s inventory.11 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.11"}
execute if items entity @s inventory.12 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.12"}
execute if items entity @s inventory.13 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.13"}
execute if items entity @s inventory.14 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.14"}
execute if items entity @s inventory.15 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.15"}
execute if items entity @s inventory.16 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.16"}
execute if items entity @s inventory.17 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.17"}
execute if items entity @s inventory.18 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.18"}
execute if items entity @s inventory.19 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.19"}
execute if items entity @s inventory.20 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.20"}
execute if items entity @s inventory.21 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.21"}
execute if items entity @s inventory.22 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.22"}
execute if items entity @s inventory.23 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.23"}
execute if items entity @s inventory.24 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.24"}
execute if items entity @s inventory.25 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.25"}
execute if items entity @s inventory.26 enchanted_book run return run function rr_crusade:spell/cast {slot:"inventory.26"}