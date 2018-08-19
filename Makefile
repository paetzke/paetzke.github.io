deploy:
	git add .
	git commit -m wip
	git push origin master

squash:
	git rebase c9ea1ad --interactive
	git push origin +master

.PHONY: icons
icons:
	-rm icons/*x*.png
	convert -resize 16x16 icons/icon.png icons/16x16.png
	convert -resize 32x32 icons/icon.png icons/32x32.png
	convert -resize 96x96 icons/icon.png icons/96x96.png

	convert -resize 120x120 icons/icon.png icons/120x120.png
	convert -resize 152x152 icons/icon.png icons/152x152.png
	convert -resize 167x167 icons/icon.png icons/167x167.png
	convert -resize 180x180 icons/icon.png icons/180x180.png
