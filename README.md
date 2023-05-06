## Disclaimer
This is very much a personal project and not a plugin that is not supported in any real way 
(although I plan on using it personally and to keep it atleast operational).

It has been designed with Linux and I currently have no idea how it works with other operating systems.

There are also currently no options for customisation at all past actually rewriting the code yourself, but this is something I am looking
to add in the near future.

# Dependencies
#### LaTex-ORC
To use this plugin, you need to install the LaTex-ORC, 
the GitHub of which can be found [here](https://github.com/lukas-blecher/LaTeX-OCR)

If you have [PyTorch](https://pytorch.org/) already installed, 
LaTex-ORC can also be done by running the following command:
```
pip install pix2tex
```
#### Scrot (SCReenshOT)
The GitHub of Scrot can be found [here](https://github.com/resurrecting-open-source-projects/scrot)

If you're willing to mess around with the plugin (it shouldn't be too challenging) you could use another screen capture software if that's your preference.
The file you'd be looking to change is `lua/LaTexCap/image2Tex.lua`.


# Installation 

### packer.nvim
The plugin has been designed to work with [packer.nvim](https://github.com/wbthomason/packer.nvim) you should be able to load it by adding the following:
```
 use 'Nymeria44/LaTexCap.nvim'
```
