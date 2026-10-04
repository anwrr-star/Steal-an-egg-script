local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "FireServer" or getnamecallmethod() == "InvokeServer" then
        print("[REMOTE]", self:GetFullName())
    end
    return oldNamecall(self, ...)
end)
