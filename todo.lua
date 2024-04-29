local todos = {}

local todo = function(a)
    table.insert(todos, a)
end

local display = function(t)
    for i, v in ipairs(t or todos) do
        print(i, v)
    end
end

return setmetatable({
    todo = todo,
    display = display
}, {
    __call = function(self, a)
        return todo(a)
    end
})
