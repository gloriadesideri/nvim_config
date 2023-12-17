-- PDF Viewer:
-- http://manpages.ubuntu.com/manpages/trusty/man5/zathurarc.5.html
vim.g['vimtex_view_method'] = 'skim'
vim.g['vimtex_quickfix_mode'] =0
vim.g['tex_flavor']= 'latex'
vim.g['vimtex_view_skim_sync']=1
vim.g['vimtex_view_skim_activate']=1
--vim.g['vimtex_view_general_viewer']= '/Applications/Skim.app/Contents/SharedSupport/displayline'
vim.g['vimtex_view_general_options']= '-r @line @pdf @tex'
--vim.g['vimtex_compiler_callback_hooks']='UpdateSkim'

--[[function UpdateSkim(status)
    if not status then
        return
    end

    local out = vim.b.vimtex.out()
    local tex = vim.fn.expand('%:p')
    local cmd = { vim.g.vimtex_view_general_viewer, '-r' }

    if vim.fn.empty(vim.fn.system('pgrep Skim')) ~= 1 then
        table.insert(cmd, '-g')
    end

    if vim.fn.has('nvim') == 1 then
        local job_cmd = vim.list_extend(cmd, { tostring(vim.fn.line('.')), out, tex })
        vim.fn.jobstart(job_cmd)
    elseif vim.fn.has('job') == 1 then
        local job_cmd = vim.list_extend(cmd, { tostring(vim.fn.line('.')), out, tex })
        vim.fn.job_start(job_cmd)
    else
        local system_cmd = table.concat(vim.list_extend(cmd, { tostring(vim.fn.line('.')), vim.fn.shellescape(out), vim.fn.shellescape(tex) }), ' ')
        vim.fn.system(system_cmd)
    end
end]]--


vim.g['vimtex_compiler_progname']='nvr'




-- Ignore mappings
vim.g['vimtex_mappings_enabled'] = 0

-- Auto Indent
vim.g['vimtex_indent_enabled'] = 0
 

-- Syntax highlighting
vim.g['vimtex_syntax_enabled'] = 1



-- Error suppression:
-- https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt

vim.g['vimtex_log_ignore'] = ({
  'Underfull',
  'Overfull',
  'specifier changed to',
  'Token not allowed in a PDF string',
})
 
