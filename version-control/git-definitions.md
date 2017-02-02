# Git Definitions

**Instructions:** Define each of the following Git concepts!!

&nbsp;

**What is version control?  Why is it useful?**

Version control is the idea that developers should make "quicksaves" and "copies" of projects during production. It's useful as codebases get more complex, and especially when other developers get involved with a project.

Version control allows various people to work on a project without unintentionally overwriting others' work.

&nbsp;

**What is a branch and why would you use one?**

A branch is like a copy of the master branch. You have access to all the same files as the master, but changes made ONLY affect the branch you're currently working in.

Branches should be used anytime you're adding features or making any substantial changes that should require review before being merged with the master branch.

&nbsp;

**What is a commit? What makes a good commit message?**

After making some changes to files, and staging those files, you would use the "commit" command to finalize the changes to the branch. A good commit message provides an overview of what you are changing or adding. It should provide enough info so that other developers can get a quick idea before diving into your code.

&nbsp;

**What is a merge conflict?**

A merge conflict happens when different branches have changes on the same line of code. This could be because of different code OR if another developer deleted a whole file.