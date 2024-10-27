util = require "data/tf_util/tf_util"
names = require("shared")
local collision_mask_util = require("collision-mask-util")

local drone_collision_mask = "is_object"

local name = names.units.construction_drone
data.raw.unit[name].collision_mask = { not_colliding_with_itself = true, consider_tile_transitions = true, layers = {trigger_target = true, object = true, water_tile = true} }