# myenv





# load
## para o bash
echo -e "\n# Include personal load\nif [ -f ~/.config/myenv/load ]; then\n    . ~/.config/myenv/load\nfi" >> ~/.bashrc


# BANNER.SH
 Para todos os usuários (global) Crie um link em:
sudo ln /home/emerson/.config/myenv/banner.sh /etc/profile.d/banner.sh
