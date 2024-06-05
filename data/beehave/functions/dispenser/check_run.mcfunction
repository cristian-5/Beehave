execute as @e[tag=bone_meal_dispenser,tag=dispenser_powered] at @s if predicate beehave:is/block/dispenser_not_triggered run tag @s add dispenser_unpowered_soon
execute as @e[tag=bone_meal_dispenser,tag=!dispenser_powered] at @s if predicate beehave:is/block/dispenser_triggered_with_bone_meal run function beehave:dispenser/run
tag @e[tag=dispenser_unpowered_soon] remove dispenser_powered
tag @e[tag=dispenser_unpowered_soon] remove dispenser_unpowered_soon

execute if entity @e[tag=bone_meal_dispenser] run schedule function beehave:dispenser/check_run 2t
