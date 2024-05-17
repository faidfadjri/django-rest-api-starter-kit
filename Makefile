# Github shortcut
git-add:
	git add .

git-commit:
	@read -p "Commit message: " commit;\
	git commit -m $$commit;\

git-push:
	@read -p "Branch name: " branch;\
	git push -u origin $$branch;\

# Django Command Line shortcut

runserver:
	cd restapi && python3 manage.py runserver

startapp:  
	@read -p "Enter App Name: " app;\
	cd restapi && python3 manage.py startapp $$app;\