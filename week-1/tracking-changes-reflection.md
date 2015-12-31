## 1.5 Tracking Changes

### How does tracking and adding changes make developers' lives easier?

Changes in code can mean the difference between "working" and "non-functioning". It's important to be able to retrace changes and their explanations in case anything goes wrong. Also, the ability to track changes allows teams of developers to work together on a single project without getting lost in separate versions of the project; the person in charge of the repository may review changes and merge them in an organized, traceable way. 

### What is a commit?

A commit is an official snapshot of a certain "moment in time" for the repository. It includes all of the file changes that the developer is willing to save. 

### What are the best practices for commit messages?

Commit messages should be short and specific, indicating in the imperative voice what change, fix, or feature was just added between the last commit and this one. They should provide a justification for the changes, so that the team may look back at the log and understand the purpose for the commit. 

### What does the HEAD^ argument mean?

The HEAD^ argument reverts a file back to its state at the last commit. It's a way to undo changes that have been committed. HEAD is the current commit, but HEAD^ is the previous commit. So, if I commit files and decide that they should be changed, I can use "git reset --soft HEAD^" to un-commit the files and revert to the "snapshot" of the commit before the problematic one. 

### What are the 3 stages of a git change and how do you move a file from one stage to the other?

First the file is changed, which is simply an alteration of the file's contents or state. Second, the change must be staged for a commit. To stage the change, use "git add". Third, the staged change must be committed. To commit the staged change, use "git commit -m 'message goes here'".

### Write a handy cheatsheet of the commands you need to commit your changes?

- git pull origin master
- git checkout -b branch_name
- (do your work)
- git add .
- git commit -m "commit message"
- git pull origin master
- git push origin branch_name
- (GitHub) pull request for branch_name
- (GitHub) merge pull request
- (GitHub) delete branch_name
- git pull origin master
- git checkout master
- git branch -d branch_name

### What is a pull request and how do you create and merge one?

A pull request is a message sent to the person in charge of the repo saying, "I created a feature branch off of your master branch, and I'd like you to review it and perhaps merge it into your master branch." You create one by going to the repo's page on GitHub, clicking "Create Pull Request", entering a message to explain your work and request, and then the repo owner (in this case, myself) will review the request and its proposed changes, click "Merge this pull request", and then delete the feature branch, which is no longer needed as it is now incorporated into the master branch. 

### Why are pull requests preferred when working with teams?

This allows for a hierachy of project leaders where those who are authorized may review the code and decide whether it should be incorporated into the main project. It provides a supervised gate between the contributors and the official code base, preventing the chaos of many, perhaps conflicting or damaging, code changes entering the master branch. 