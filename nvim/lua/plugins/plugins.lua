vim.cmd [[packadd packer.nvim]]
--[[
:PackerCompile - Gera o arquivo compilado em: ~/.config/nvim/plugins/packer_compiled.lua(Note que é um diretório plugins na raíz do nvim e não é o dentro do diretório lua/)
:PackerClean - Remove todos os plugins desativados ou não usados
:PackerInstall - Instala ou Limpa os plugins ausentes
:PackerUpdate - Limpa, atualiza e instala os plugins
:PackerSync - Mesmo que rodar PackerUpdate e, em seguida PackerCompile
:PackerLoad - Carrega o plugin opt imediatamente
    Alguns plugins podem ser instalados na pasta opt em ~/.local/share/nvim/site/pack/packer/opt em vez de start no mesmo caminho. Para isso precisa informar a tabela { source = opt } para a função use.

--]]--

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'Mofiqul/dracula.nvim' -- tema
    use 'feline-nvim/feline.nvim' -- barra de status
    use 'kyazdani42/nvim-web-devicons' -- icones da barra
    use 'lukas-reineke/indent-blankline.nvim' -- linhas de identação
    use 'norcalli/nvim-colorizer.lua' -- mostrar cores dos relativos códigos hexadecimais
    use 'tpope/vim-surround' -- para alterar caracteres em torno de um termo
    use 'windwp/nvim-autopairs' -- para autocompletar pares
    
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} } --para localizar, filtrar, visualizar, selecionar e abrir arquivos
    }

    use {
     "nvim-neo-tree/neo-tree.nvim",
         branch = "v3.x",
         requires = { 
             "nvim-lua/plenary.nvim",
             "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
             "MunifTanjim/nui.nvim",
         }
     }
end)

