util = require "data/tf_util/tf_util"
names = require("shared")
local collision_mask_util = require("collision-mask-util")

local drone_collision_mask = "is_object"

local name = names.units.construction_drone
data.raw.unit[name].collision_mask = { "not-colliding-with-itself", "consider-tile-transitions", layers = {trigger_target=true} }

for _, prototype in pairs(collision_mask_util.collect_prototypes_with_layer("player-layer")) do
    local mask = collision_mask_util.get_mask(prototype)
    if mask.layers ~= nil and mask.layers["item-layer"] == true then
        mask.layers[drone_collision_mask] = true
    end
    prototype.collision_mask = mask
end

-- Add collision to all water tiles
local tiles = { "deepwater", "deepwater-green", "water", "water-green", "water-mud", "water-shallow", "water-wube" }
for _, tile in pairs(tiles) do
    if data.raw["tile"][tile] then
        data.raw["tile"][tile].collision_mask[drone_collision_mask] = true
        -- print("proto " .. data.raw["tile"][tile].name)
        -- print("proto " .. serpent.block(data.raw["tile"][tile].collision_mask))
    end
end
