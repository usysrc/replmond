local start = function(environment)
    while true do
        io.write("> ")
        -- read a line
        local line = io.read("*line")

        -- add parens if needed
        local lineIsOnlyOneWord = string.find(line, " ") == nil
        local lastCharInLine = string.sub(line, -1)
        if lineIsOnlyOneWord and lastCharInLine ~= ")" and lastCharInLine ~= "\"" then
            line = line .. "()"
        end

        -- load the line and run it
        local f, err = loadstring(line)
        if err then
            print(err)
            goto continue
        end
        setfenv(f, environment)
        if f then
            local status, err = pcall(f)
            if err then
                print(err)
            end
        end

        ::continue::
    end
end

return {
    start = start
}
