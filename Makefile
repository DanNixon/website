.ONESHELL:
.SHELLFLAGS += -e

.PHONY: all
all:
	hugo

.PHONY: clean
clean:
	rm -rf resources public

.PHONY: publish
publish: publish_commit
	cd public
	git push --force gh main

.PHONY: publish_commit
publish_commit: clean all
	cd public
	git init
	git remote add gh git@github.com:DanNixon/dannixon.github.io.git
	git add .
	git commit -m 'Build'
