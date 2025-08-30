advancement revoke @s only custom:event/player_uses_nova_rocket

clear @s *[custom_data~{id:"nova_rocket"},charged_projectiles=[]|!charged_projectiles]
