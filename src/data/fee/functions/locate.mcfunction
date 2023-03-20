# Set position values
scoreboard players set #point_1_x fee 0
scoreboard players set #point_1_z fee 0
scoreboard players set #point_2_x fee 100
scoreboard players set #point_2_z fee 0
scoreboard players set #point_3_x fee 0
scoreboard players set #point_3_z fee 100
# Get structure distances
execute store result score #point_1_distance fee positioned ~000 ~ ~000 run locate structure stronghold
execute store result score #point_2_distance fee positioned ~100 ~ ~000 run locate structure stronghold
execute store result score #point_3_distance fee positioned ~000 ~ ~100 run locate structure stronghold
# Compute cramer terms
scoreboard players operation #cramer_1 fee = #point_1_x fee
scoreboard players operation #cramer_1 fee -= #point_2_x fee
scoreboard players operation #cramer_2 fee = #point_1_z fee
scoreboard players operation #cramer_2 fee -= #point_2_z fee
scoreboard players operation #cramer_3 fee = #point_1_x fee
scoreboard players operation #cramer_3 fee -= #point_3_x fee
scoreboard players operation #cramer_4 fee = #point_1_z fee
scoreboard players operation #cramer_4 fee -= #point_3_z fee
scoreboard players operation #math_00 fee = #point_1_x fee
scoreboard players operation #math_00 fee *= #point_1_x fee
scoreboard players operation #cramer_5 fee = #math_00 fee
scoreboard players operation #math_00 fee = #point_2_x fee
scoreboard players operation #math_00 fee *= #point_2_x fee
scoreboard players operation #cramer_5 fee -= #math_00 fee
scoreboard players operation #math_00 fee = #point_1_z fee
scoreboard players operation #math_00 fee *= #point_1_z fee
scoreboard players operation #cramer_5 fee += #math_00 fee
scoreboard players operation #math_00 fee = #point_2_z fee
scoreboard players operation #math_00 fee *= #point_2_z fee
scoreboard players operation #cramer_5 fee -= #math_00 fee
scoreboard players operation #math_00 fee = #point_1_distance fee
scoreboard players operation #math_00 fee *= #point_1_distance fee
scoreboard players operation #cramer_5 fee -= #math_00 fee
scoreboard players operation #math_00 fee = #point_2_distance fee
scoreboard players operation #math_00 fee *= #point_2_distance fee
scoreboard players operation #cramer_5 fee += #math_00 fee
scoreboard players operation #math_00 fee = #point_1_x fee
scoreboard players operation #math_00 fee *= #point_1_x fee
scoreboard players operation #cramer_6 fee = #math_00 fee
scoreboard players operation #math_00 fee = #point_3_x fee
scoreboard players operation #math_00 fee *= #point_3_x fee
scoreboard players operation #cramer_6 fee -= #math_00 fee
scoreboard players operation #math_00 fee = #point_1_z fee
scoreboard players operation #math_00 fee *= #point_1_z fee
scoreboard players operation #cramer_6 fee += #math_00 fee
scoreboard players operation #math_00 fee = #point_3_z fee
scoreboard players operation #math_00 fee *= #point_3_z fee
scoreboard players operation #cramer_6 fee -= #math_00 fee
scoreboard players operation #math_00 fee = #point_1_distance fee
scoreboard players operation #math_00 fee *= #point_1_distance fee
scoreboard players operation #cramer_6 fee -= #math_00 fee
scoreboard players operation #math_00 fee = #point_3_distance fee
scoreboard players operation #math_00 fee *= #point_3_distance fee
scoreboard players operation #cramer_6 fee += #math_00 fee
# Compute denominator
scoreboard players operation #math_00 fee = #cramer_1 fee
scoreboard players operation #math_00 fee *= #cramer_4 fee
scoreboard players operation #math_01 fee = #cramer_2 fee
scoreboard players operation #math_01 fee *= #cramer_3 fee
scoreboard players operation #math_00 fee -= #math_01 fee
scoreboard players operation #math_00 fee *= #2 fee
scoreboard players operation #denominator fee = #math_00 fee
# Compute X numerator
scoreboard players operation #math_00 fee = #cramer_5 fee
scoreboard players operation #math_00 fee *= #cramer_4 fee
scoreboard players operation #math_01 fee = #cramer_2 fee
scoreboard players operation #math_01 fee *= #cramer_6 fee
scoreboard players operation #math_00 fee -= #math_01 fee
scoreboard players operation #numerator_x fee = #math_00 fee
# Compute Z numerator
scoreboard players operation #math_00 fee = #cramer_1 fee
scoreboard players operation #math_00 fee *= #cramer_6 fee
scoreboard players operation #math_01 fee = #cramer_5 fee
scoreboard players operation #math_01 fee *= #cramer_3 fee
scoreboard players operation #math_00 fee -= #math_01 fee
scoreboard players operation #numerator_z fee = #math_00 fee
# Compute final position
scoreboard players operation #location_x fee = #numerator_x fee
scoreboard players operation #location_z fee = #numerator_z fee
