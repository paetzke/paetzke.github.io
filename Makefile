deploy:
	git add .
	git commit -m wip
	git push origin master

squash:
	git rebase c9ea1ad --interactive
	git push origin +master
