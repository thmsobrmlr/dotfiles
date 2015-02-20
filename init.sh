ln -sfv $PWD/vim $HOME/.vim;

cd symlink
for f in *; do ln -sfv $PWD/$f $HOME/.$f; done
