# Shell Script

**steps:**
* Create repo in git-hub
* Clone to local system using git clone command
* Start Developing using VS-Code
* Add the files to temp area
```
git add <file-name>
```
* Commit the changes to local repo
```
git commit -m "why you are commiting"
```
* Push the changes to central repo
```
git push -u origin main
```
* Note For the 1st time it asks who you are , hence provide your git user.mail & user.name
```
git config --global user.email "omprakashdevops253@gmail.com"
git config --global user.name "omprakash-253"
```
* Now run the git push command again, this it push changes from local to central repo.
* it will ask for Login to git, use token insted of git_user ID (once token is registered, it won't ask for the 2nd time) below are the steps to generate token
```
your git profile -> settings -> Devoloper Settings -> Personal access tokens -> Tokens (classic) -> Generate new token -> Generate new token (classic) -> provide Note, select Duration of the Token and select all the scops -> Generate Token.

Once token Generated, use that token to login during push the changes to central repo
```

**Naming Convention: use small case letter with hyphons (-), No spaces**

* To commit all the changes and push to Central repo use below command
```
git add .; git commit -m "your commit summary"; git push -u origin master
```


