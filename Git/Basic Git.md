---
title: "Notes on Using Git"
author: "Ben Duffey"
date: "March 11, 2019"
output: pdf_document
---

# Ben's Personal Git Notes
<p> *The GitHub repo that contains the code that generated these notes is located at <https://github.com/biduffey/Git-Notes>.This was written in Atom markdown*</p>

## Installing Git on Windows
  <p> For windows, install git software locally from the website. Make sure to choose the option where it is added to PATH. Make sure git bash is added to PATH by going to command prompt & typing "git bash." If Git the git bash shell doesn't open then go to environmental variables and change path variable to include the git executable file </p>

## Git on Mac
  <p> Is it already installed on the native terminal. Does it just work with the native terminal? </p>


## Git Init
  * Is it possible to run git init in the local repo and then push it to the remote repo?
  * shouldn't really be usingthis too often. Just clone the repo and you can skip the init

## Adding/Removing tracked files
  * *Git add ./<document>*  will tell git to track the files
  * To view a list of tracked files: *git ls-files* whill show the tracked files
  * Save a program to the local repo. Run     
  * To untrack a file, type *git rm -r --cached <document>*
  * To untrack everything, type *git rm -r --cached ./*

## Committing
    * *Git commit* a checkpoint to which you can revert and compare future changes.
    * Save changes in your documents. Run *git commit*.
    * Message screen will come up … add something (should be in yellow font)
      * Press esc, type “:wq”, press enter


Git HUB integration!
=============================

## Integrating with a Git hub repo
  * My github account: https://github.com/biduffey
  * Create a new repo for the project.
  * go back to git bash. git set remote orgin - this tells it which remote (git hub) repo to use.
  * Clone the repo (run "git clone <.../repo_name.git> using git bash). A new local repository that is a clone will appear in the directory.
  * git set remote orgin - this tells it which remote (git hub) repo to use.

## Adding an SSH Key with GitHub
  * Create an account on Github.com
  * Create a repo that will use to share your work
  * Later on, you will sync your local work to this account.
  * creating a ssh key: (https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
  * ssh-keygen -t rsa -b 4096 -C "biduffey@gmail.com"
  * eval $(ssh-agent -s)
  * add key: ssh-add ~/.ssh/id_rsa
  * test: ssh -T git@github.com
  * reconfig repo to use ssh:
  * remember that the ssh needs a special url!!! in the form <<git remote set-url origin git@github.com:biduffey/Git-Notes.git>>
      * git remote set-url origin git@github.com:biduffey/PostgreSQL-Practice.git


## Pushing to Git hub
    * *Git Push https://github.com/biduffey/nameofrep.git**
    * ->username/password
    * Note: If I set remote origin then I don't need the url. If I use an ssh key then I don't need to do my password.
    * Note 2: You can' push anything into the github repo that isn't already there. Pull first and then try to push.

## Pulling
  * *Git pull https://github.com/biduffey/nameofrep.git**
    * If there are any duplicate files, I think you must move, rename, or delete the one in the local repository.

## Forking
  * A fork is just a copy
  * The is really just used to experiment, or make a non-commital change, by making the change to a copy - instead of the real deal.
  * To fork a repo, type *git clone https://github.com/biduffey/<<nameofrepyouwanttoclone.git>> nameofnewfolder*


## Resources
  * Super helpful website: http://readwrite.com/2013/10/02/github-for-beginners-part-2
  * https://help.github.com/articles/fork-a-repo/
