deploy:
	echo "===================="
	echo "=== Deployment Start"
	echo ""
	
	echo ""
	echo "=== generating site..."
	echo ""
	hugo
	echo ""
	echo "=== generating site finished"
	echo ""
	
	echo ""
	echo "=== pushing to remote repository"
	echo ""
	git add .
	git commit -m 'update'
	git push origin master
	
	echo ""
	echo "=== Deployment Finished"
	echo "===================="
