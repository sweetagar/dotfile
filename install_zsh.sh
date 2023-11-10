sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f && \
echo 'eval "$(starship init zsh)"' >> ~/.zshrc && \
mkdir -p ~/Library/Fonts && \
cp -f fonts/* ~/Library/Fonts && \
cp -f starship.toml ~/.config/
