ln zshrc ~/.zshrc_common
touch ~/.zshrc_user
echo "source ~/.zshrc_common" >> ~/.zshrc
echo "source ~/.zshrc_user" >> ~/.zshrc

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim
ln vimrc ~/.vimrc
touch ~/.vimrc_user

