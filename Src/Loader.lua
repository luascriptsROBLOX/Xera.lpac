local flu = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

flu:Notify({
    Title = "📢  Please Wait.",
    Content = "give us a second to authenticate you.",
    Duration = 5
})

local succ, err = xpcall(function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/luascriptsROBLOX/Xera.lpac/refs/heads/main/Src/Int.apo", true))()

    print("Loaded with 0 issues.")
end, function(err)
    if (string.find(err, "404")) or (string.find(err, "attempt to call a nil value")) then
        flu:Notify({
            Title = "xera TMP.",
            Content = "Your executor doesn't support Xera Api",
            Duration = 5
        })
    end
end)
