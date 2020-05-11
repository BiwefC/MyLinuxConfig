CUR_DIR=`pwd`

ln -s ${CUR_DIR}/zshrc ~/.zshrc_common
touch ~/.zshrc_user
echo "source ~/.zshrc_common" >> ~/.zshrc
echo "source ~/.zshrc_user" >> ~/.zshrc

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim
ln -s ${CUR_DIR}/vimrc ~/.vimrc
touch ~/.vimrc_user

