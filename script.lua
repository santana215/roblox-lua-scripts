local function LoadRemoteScript(url)
    local success, scriptData = pcall(function()
        return game:HttpGet(url, true)
    end)

    if success and scriptData then
        local func, err = loadstring(scriptData)
        if func then
            return func()
        else
            warn("Loadstring Error: " .. err)
        end
    else
        warn("HTTP Get Failed: " .. tostring(scriptData))
    end
end

-- GitHub'dan Lua betiği URL'si (buraya kendi URL'nizi yapıştırın)
local rawPasteUrl = "https://raw.githubusercontent.com/kullaniciAdi/roblox-lua-scripts/main/script.lua"

-- Scripti çalıştır
LoadRemoteScript(rawPasteUrl)
