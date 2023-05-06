local M = {}

function M.Capture2Tex()
  -- Get the path of the directory
  local script_path = debug.getinfo(1, 'S').source:sub(2)
  local plugin_dir = vim.fn.fnamemodify(script_path, ':h') .. '/screenshot'

  -- Create the plugin-specific directory if it doesn't already exist
  if vim.fn.isdirectory(plugin_dir) == 0 then
    vim.fn.mkdir(plugin_dir, 'p')
  end

  -- Generate a unique filename for the screenshot
  local timestamp = os.time()
  local filename = 'screenshot_' .. timestamp .. '.png'
  local screenshot_path = plugin_dir .. '/' .. filename

  -- Take the screenshot using scrot
  local takeScreenShot = 'scrot -s ' .. screenshot_path
  vim.fn.system(takeScreenShot)

  -- Convert the screenshot to LaTeX using pix2tex
  local py_command = 'pix2tex ' .. screenshot_path
  local latex_code = vim.fn.trim(vim.fn.system(py_command))

  -- Insert the LaTeX code into the current buffer
  vim.api.nvim_put({latex_code}, 'c', true, true)
end

return M
