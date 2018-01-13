default:
	@echo "=== Deployment Start"
	hugo
	git add .
	git commit -m 'update'
	git push origin master
	
	@echo "=== Deployment Finished"
