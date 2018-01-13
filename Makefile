default:
	@echo "Drafts:"
	@ls drafts
	@echo ""
	@echo "=== Deployment Start"
	hugo
	@echo ""
	git add .
	git commit -m 'update'
	git push origin master
	@echo ""
	@echo "=== Deployment Finished"

new:
	hugo new post/$(F).md

draft:
	hugo new post/$(F).md
	mv content/post/$(F).md drafts/
