### It's how my Vim looks now:

![image](https://github.com/ButBueatiful/dotvim/raw/master/screenshots/vim-screenshot.png)

### Usage:

	cd ~
	git clone https://github.com/ButBueatiful/dotvim.git .vim
	cd ~/.vim/
    ./config.sh

###

	./update.sh
	
### If you want to install a new plug-in, as follows:

	cd ~/.vim/
	git submodule add git://github.com/mileszs/ack.vim.git bundle/ack
	git add .
	git commit -m "Install ack.vim bundle as a submodule."
	git push
	
### If you want remove a plug-in, as follows:	

	cd ~/.vim/
	rm -rf [Remove related directory](git rm --cached [Remove related directory)
	modify .gitmodules delete related content
	modify .git/.config delete related content
	git add .gitmodules
	git commit -m "Remove a submodule ..."

### Shortcuts map

	,g: ctags -R
	,t: tagbar
	,n: nerdtree
	\rr: rum programing
	F5: authorinfo

Other shortcuts see vimrc
