cd symlink
for f in *; do ln -sfv $PWD/$f $HOME/.$f; done
