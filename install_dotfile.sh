read -p "install starship? (y/n):" ss_inst
case $ss_inst in 
  [Yy]* ) sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f && echo "[ Done ] starship installation completed!" ;;
  [Nn]* ) echo "[ Skip ] starship installation...";;
esac

read -p "add starship config? zsh(macos) and bash only!!! (y/n):" ss_conf
case $ss_conf in
  [Yy]* ) ln -s $(pwd)/starship.toml ~/.config/starship.toml
    case $SHELL in
    *zsh )
      echo 'eval "$(starship init zsh)"' >> ~/.zshrc
      echo "[ Done ] config for zsh completed!";;
    *bash )
      echo 'eval "$(starship init bash)"' >> ~/.bashrc
      echo "[ Done ] config for bash completed!";;
    * )
      echo "[ Oops ] ] we do not support $SHELL shell";;
    esac;;
  [Nn]* ) echo "[ Skip ] install starship config...";;
esac


read -p "install nerd fonts? (y/n):" cpfont
case $cpfont in
  [Yy]* )
    case $SHELL in
    *zsh )
      mkdir -p ~/Library/Fonts && cp -f fonts/* ~/Library/Fonts && echo "[ Done ] nerd fonts installed!";;
    *bash )
      mkdir -p ~/.local/share/fonts && cp -f fonts/* ~/.local/share/fonts && echo "[ Done ] nerd fonts installed!";;
    esac;;
  [Nn]* ) echo "[skip] nerd font installation...";;
esac




echo "Your dotfile installation is completed!!!!"
