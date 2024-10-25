-- Shared data interface between data and script, notably prototype names.
local data = {}

data.units = { construction_drone = "Construction_Drone" }

data.technologies = { construction_drone_system = "Construction Drone System" }

data.entities = {
    logistic_beacon = "Logistic_Beacon",
    simple_storage_chest = "Simple_Storage_Chest",
    simple_provider_chest = "Simple_Provider_Chest",
    construction_drone_proxy_chest = "Construction_Drone_Proxy_Chest",
}

data.equipment = { drone_port = "Personal Drone Port" }

data.beams = {
    build = "Build_beam",
    deconstruction = "Deconstruct_Beam",
    pickup = "Pickup_Beam",
    dropoff = "Dropoff_Beam",
    attack = "Attack_Beam",
}

return data
