sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f && \
echo 'eval "$(starship init bash)"' >> ~/.bashrc && \
mkdir -p ~/.local/share/fonts && \
cp -f fonts/* ~/.local/share/fonts && \
cp -f starship.toml ~/.config/
