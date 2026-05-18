# Hotfix for sandbox entity existing before it should have in 1.2.x versions

# Additional safeguard for running in a 1.3.x version that forgot its version
execute if function rr_sandbox:exists run return fail

kill @e[x=0,type=armor_stand,tag=rr_sandbox]