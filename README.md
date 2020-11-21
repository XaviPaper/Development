# Development

La idea de crear este repositorio es estudiar y mostrar cómo desarrollar aplicaciones utilizando docker.

Vamos a definir los diferentes pasos a seguir:
1. Instalar Ubuntu en WSL WSL2
    1. Instalar Ubuntu 20 LTE
    2. Instalar Windows Terminal
4. Instalar zsh

# Ubuntu en WSL WSL2
https://medium.com/@maurogiusti/running-ubuntu-on-windows-10-with-wsl2-c4f06b3c353

## Activar WSL2
(Under construction)

## Instalar ubuntu-20.04 LTE
(Under construction)

# Windows Terminal
https://medium.com/@maurogiusti/running-ubuntu-on-windows-10-with-wsl2-part-2-windows-terminal-bdcad3328cfd

## Instalar Windows Terminal
Abrir el Microsoft Store, buscar Windows Terminal e instalar lo.

## Instalar zsh
Abrir en Windows Terminal el terminal para Ubuntu 20.04 e instalar:
sudo apt install zsh

## Asignar como terminal por defecto
sudo usermod -s /usr/bin/zsh $(whoami)
Reiniciar y al entrar configurar con la opción 2 que crea el ~/.zshrc con el contenido por defecto

## Configurar Oh-my-zsh ejecutando
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Editar ~/.zshrc y poner
ZSH_THEME="agnoster"

## Abrir la Configuración de Windows Terminal, buscar la sección de Ubuntu y añadir
{
  "guid": "{c6eaf9f4-32a7-5fdc-b5cf-066e8a4b1e40}",
  "hidden": false,
  * "colorScheme" : "Solarized Dark",
  "name": "Ubuntu-18.04",
  "source": "Windows.Terminal.Wsl"
},

## Instalar fuentes descargando o clonando el repositorio https://github.com/powerline/fonts y ejecutar install.ps1 con powershell

## Volver a abrir la Configuración de Windows Terminal, buscar de nuevo la sección de Ubuntu y añadir
{
  "guid": "{c6eaf9f4-32a7-5fdc-b5cf-066e8a4b1e40}",
  "hidden": false,
  "colorScheme" : "Solarized Dark",
  * "fontFace" : "Source Code Pro for Powerline",
  "fontSize" : 12,
  "name": "Ubuntu-18.04",
  "source": "Windows.Terminal.Wsl"
},

## Eliminar el usuario del prompt añadiendo en ~/.zshrc
export DEFAULT_USER="$(whoami)"

## Reiniciar la terminal

## Iniciar el terminal en ~ añadiendo en la configuración del Windows Terminal sección Ubuntu
{
  "guid": "{c6eaf9f4-32a7-5fdc-b5cf-066e8a4b1e40}",
  "hidden": false,
  "commandline" : "wsl.exe ~",
  "colorScheme" : "Solarized Dark",
  "fontFace" : "Source Code Pro for Powerline",
  "name": "Ubuntu-18.04",
  "source": "Windows.Terminal.Wsl"
},

## Instalar "fuzzy finder fzf" ejecutando
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

## Añadir plugin para docker editando ~/.zshrc
plugins=(git docker)

## Instalar las zsh-completions 
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-completions
$ZSH_CUSTOM=~/.oh-my-zsh/custom/plugins/zsh-completions

# VSCode
https://medium.com/@maurogiusti/running-ubuntu-on-windows-10-with-wsl2-part-3-visual-studio-code-and-go-e2c04ae1abd5

## Instalar VSCode
Instalar https://code.visualstudio.com/download
Al abrir VSCode instalar WSL extension
Pulsar en "><" y seleccionar Remote-WSL: New Window

## 
