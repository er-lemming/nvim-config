local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

local index = 1

function cycleThroughFiles(currentIndex) 
    currentIndex = currentIndex + 1
    print(currentIndex)
    if currentIndex > 3 then
        ui.nav_file(1);
        return
    end
    ui.nav_file(currentIndex)
end

vim.keymap.set("n", "<C-C>", function() ui.nav_next()  end)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

