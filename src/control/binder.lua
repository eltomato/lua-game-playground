local _M = {
    create = function(game)
        local objectBind = {}
        local binder = {}
        function binder.bind(bindings)
            for i, v in pairs(bindings) do
                objectBind[i] = v
            end
        end
        function binder.dispatch(key)
            local action = objectBind[key]
            if action ~= nil then
                game:move(action[1], action[2])
            end
        end
        return binder
    end
}

return _M