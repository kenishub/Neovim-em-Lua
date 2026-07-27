# Meus dotfiles NVIM


> Este é um guia de como instalar o neovim e meus dotfiles no windows e principais distribuições linux.


## 💻 Pré-requisitos

###Verifique se seu dispositivo possui as seguintes dependências:

- **Git**
-***Ubuntu e derivados***
```sudo apt install git```
-***fedora e derivados***
```sudo dnf install git```
-***Arch e derivados***
```sudo pacman -S git```
-***Windows***
```winget install -e --id Git.Git```
- **Opcionais**
> No guia de instalação a seguir, você encontrará dependências que não são
> exigidas pelo neovim, mas são necessárias para as minhas configurações, caso
> queira, apenas copie os códigos a baixo, caso não, adapte ao seu modo.
- **Compilador C/C++** (`gcc`, `clang` ou `make` para o Treesitter) [opcional]
- **Utilitários de Extração**: `unzip`, `tar`, `curl` [opcional]
- **Ferramentas de Busca**: `ripgrep` e `fd` (essenciais para o
  Telescope)[opcional]
- **Runtimes**: `Node.js` + `npm` e `Python3` (para LSPs e
  autocompletar)[opcional]
---


## 🚀 Instalação>

Para instalar o neovim e meus dotfiles, siga estas etapas:

Ubuntu e derivados

```
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt update
sudo apt install -y neovim git build-essential unzip curl ripgrep fd-find nodejs npm python3-neovim
```
Fedora e derivados

```
sudo dnf install -y neovim git gcc make unzip curl ripgrep fd-find nodejs npm python3-neovim
```
Arch e derivados
```
sudo pacman -Syu
sudo pacman -S neovim git base-devel unzip curl ripgrep fd nodejs npm python-pynvim
```

Windows:

```
winget install Neovim.Neovim Git.Git BurntSushi.ripgrep.MSVC sharkdp.fd OpenJS.NodeJS
```
***Observação***
> No windows o diretório de configurações do neovim é diferente, enquanto no
> linux o diretório é ~/.config/nvim/, no windows o diretório é:
```
C:/Users/NomeDoUsuario/AppData/Local/nvim/
```

## Clonando o repositório
- Dê git clone no terminal de seu computador ou CMD no caso do windows, em seguida mova a os arquivos para a pasta correspondente ao seu computador, linux: ```~/.config/nvim/```
- Windows ```C:/Users/NomeDoUsuario/AppData/Local/nvim/```

```
git clone https://github.com/kenishub/Neovim-em-Lua.git
```

## 🤝 Colaboradores

Agradecemos às seguintes pessoas que contribuíram para este projeto:

<table>
  <tr>
    <td align="center">
      <a href="#" title="defina o título do link">
        <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F2.bp.blogspot.com%2F-CdR2_SyQJ9k%2FVN1wKdPh7fI%2FAAAAAAAAHsI%2F0drxUXsQHe8%2Fs1600%2Fzicacamaleoes300.jpg&f=1&nofb=1&ipt=6fa109bf0c5d8d5b7780a068cc6555991d94f690f50592970764a9e61d9c9829" width="100px;" alt="Foto do Kenishub no GitHub"/><br>
        <sub>
          <b>Keniel Silva</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="#" title="defina o título do link">
        <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimg.freepik.com%2Fvetores-gratis%2Festrela-de-metal-3d-isolada_1308-115283.jpg%3Fsemt%3Dais_hybrid&f=1&nofb=1&ipt=956c627e3722599b37bb248b4ea924c786fe60a732135c8f821cfcb3063b0d09" width="100px;" alt="Foto de uma linda mulher"/><br>
        <sub>
          <b>Êmilly Fernandes</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="#" title="defina o título do link">
        <img src="https://miro.medium.com/max/360/0*1SkS3mSorArvY9kS.jpg" width="100px;" alt="Foto do Steve Jobs"/><br>
        <sub>
          <b>Steve Jobs</b>
        </sub>
      </a>
    </td>
  </tr>
</table>

## Dedicatória

<h2>Se estiver lendo isso, te amo Êmilly, ...minha grande amiga...❤️</h2>
  <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.KniOrksXAp-BtSq77AtoYwHaD4%3Fr%3D0%26pid%3DApi&f=1&ipt=a4563227898d9180f0fa02ad5867203e681f5743589220c5e40ee7040c14c1c1&ipo=images" style="width: 100%; height: auto; object-fit: contain; alt="eu tadinho">
