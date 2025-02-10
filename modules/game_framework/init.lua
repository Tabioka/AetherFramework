-- Game Framework Initialization
local GameFramework = {}
GameFramework.config = require(game.ReplicatedStorage.Config)

-- Initializing core systems
function GameFramework:Init()
    print("Initializing Game Framework...")
    self:InitSystems()
end

-- System Initialization Logic
function GameFramework:InitSystems()
    require(game.ReplicatedStorage.GameLoop):Start()
    require(game.ReplicatedStorage.DataPersistence):LoadData()
    require(game.ReplicatedStorage.EventHandling):InitializeEvents()
end

return GameFramework

