all: install
	apt-get -y install vagrant ansible virtualbox
	cd host; ./bootstrap.sh

install:
	rm -rf /etc/ansible/roles/katcipis.*
	mkdir -p /etc/ansible/roles
	cp -pr ./roles/vim /etc/ansible/roles/katcipis.workbench.vim 
	cp -pr ./roles/zsh /etc/ansible/roles/katcipis.workbench.zsh 
	cp -pr ./roles/git /etc/ansible/roles/katcipis.workbench.git 
	cp -pr ./roles/ctools /etc/ansible/roles/katcipis.workbench.ctools 
	cp -pr ./roles/jstools /etc/ansible/roles/katcipis.workbench.jstools
	cp -pr ./roles/my-stuff /etc/ansible/roles/katcipis.workbench.my-stuff
