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
        <img src="https://avatars3.githubusercontent.com/u/31936044" width="100px;" alt="Foto do Iuri Silva no GitHub"/><br>
        <sub>
          <b>Iuri Silva</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="#" title="defina o título do link">
        <img src="https://s2.glbimg.com/FUcw2usZfSTL6yCCGj3L3v3SpJ8=/smart/e.glbimg.com/og/ed/f/original/2019/04/25/zuckerberg_podcast.jpg" width="100px;" alt="Foto do Mark Zuckerberg"/><br>
        <sub>
          <b>Mark Zuckerberg</b>
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

## 😄 Seja um dos contribuidores

Quer fazer parte desse projeto? Clique [AQUI](CONTRIBUTING.md) e leia como contribuir.

## 📝 Licença

Esse projeto está sob licença. Veja o arquivo [LICENÇA](LICENSE.md) para mais detalhes.
