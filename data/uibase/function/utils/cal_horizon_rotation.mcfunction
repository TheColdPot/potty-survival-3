# @brief 计算 g_baseRotation 角度增加 incre 角度后的旋转角
# @param g_baseRotation 初始角度
# @param incre 角度增量，incre ∈ [-360, 360]
# @return 结果旋转角

# @other 调用方不使用 base uibase_common

# 算法：
# 旋转角范围 [-180, 179]
# 计算 result = g_baseRotation + incre
    # 如果 result ∈ [-180, 179]，直接返回
    # 如果位于 (-∞, -181]，返回 result + 360，因为往正向绕一周不影响旋转角的视觉效果，并使结果位于正确的范围
    # 如果位于 [180, +∞)，返回 result - 360

scoreboard players operation base uibase_common = g_baseRotation uibase_common
scoreboard players operation base uibase_common += incre uibase_common
execute if score base uibase_common matches -180..179 run return run scoreboard players get base uibase_common
execute if score base uibase_common matches ..-181 run return run scoreboard players add base uibase_common 360
return run scoreboard players remove base uibase_common 360 