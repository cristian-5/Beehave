tag @s add dispenser_powered

scoreboard players reset @s sugarcaneheight

execute if entity @s[tag=face_north] positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:sugar_cane run function beehave:sugar_cane/count_column
execute if entity @s[tag=face_south] positioned ~ ~ ~1 if block ~ ~ ~ minecraft:sugar_cane run function beehave:sugar_cane/count_column
execute if entity @s[tag=face_east] positioned ~1 ~ ~ if block ~ ~ ~ minecraft:sugar_cane run function beehave:sugar_cane/count_column
execute if entity @s[tag=face_west] positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:sugar_cane run function beehave:sugar_cane/count_column

tellraw @a[tag=debug_logging] [{"text": "[Debug - beehave:dispenser/run] Sugar Cane height: "},{"score":{"name": "@s","objective": "sugarcaneheight"}}]

execute if score @s sugarcaneheight matches 1..2 run function beehave:dispenser/use_bone_meal
