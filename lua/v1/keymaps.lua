-- keymappings [view all the defaults by pressing <leader>Lk]

-- When pressed, the WhichKey prompt comes up
lvim.leader = "space"

-- Add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")

-- Override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )
