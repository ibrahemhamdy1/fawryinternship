# Git interview questions

## What is Git?
    Git is a Distributed Version Control system (DVCS). It can track changes to a file and allows you to revert back to any particular change.
    Its distributed architecture provides many advantages over other Version Control Systems (VCS) like SVN one major advantage is that it does not rely on a central server to store all the versions of a project’s files.

## What is difference between git stash pop and git stash apply?

    git stash pop throws away the (topmost, by default) stash after applying it, whereas git stash apply leaves it in the stash list for possible later reuse (or you can then git stash drop it).

## What is the HEAD in Git?
    HEAD is a ref (reference) to the currently checked out commit.

## How do you make an existing repository bare?

    Run the command below:
    git clone --mirror <repo_source_path>
    The --mirror flag maps all refs (including remote-tracking branches, notes etc.) and sets up a refspec configuration such that all these refs are overwritten by a git remote update in the target repository.

## When would you use git clone over git clone --mirror?
    git clone is used when we need to point to an existing repo and make a clone or copy of that repo at in a new directory.
    git clone --mirror is used to clone all the extended refs of the remote repository, and maintain remote branch tracking configuration.


## What is the difference between git clone, git clone --bare and git clone --mirror?

    git clone origin-url is primarily used to point to an existing repo and make a clone or copy of that repo at in a new directory. It has its own history, manages its own files, and is a completely isolated environment from the original repository.

    git clone --base origin-url makes a copy of the remote repository with an omitted working directory. Also the branch heads at the remote are copied directly to corresponding local branch heads, without mapping. Neither remote-tracking branches nor the related configuration variables are created.

    git clone --mirror origin-url will clone all the extended refs of the remote repository, and maintain remote branch tracking configuration. All local references (including remote-tracking branches, notes etc.) will be overwritten each time you fetch, so it will always be the same as the original repository.

## How to remove a file from git without removing it from your file system?

    If you are not careful during a git add, you may end up adding files that you didn’t want to commit. However, git rm will remove it from both your staging area (index), as well as your file system (working tree), which may not be what you want.

    Instead use git reset:
    git reset filename          # or

    echo filename >> .gitingore # add it to .gitignore to avoid re-adding it
    This means that git reset <paths> is the opposite of git add <paths>.
## When do you use git rebase instead of git merge?


    Git rebase and git merge are both used for integrating changes from one branch into another, but they have different use cases:

    You would typically use `git merge` in the following scenarios:

        1. When you want to combine changes from one branch into another while preserving the individual branch history.
        2. When you want to create a merge commit that reflects the combination of changes from both branches.

    On the other hand, you would use `git rebase` in the following scenarios:
        1. When you want to incorporate the changes from one branch onto another branch while maintaining a linear commit history.
        2. When you want to keep your branch up-to-date with the latest changes from the base branch.

    In summary, use `git merge` when you want to preserve branch history and create a merge commit, and use `git rebase` when you want to maintain a linear commit history and incorporate changes from one branch onto another.


## Could you explain the Gitflow workflow?
    Gitflow workflow employs two parallel long-running branches to record the history of the project, master and develop:

    Master - is always ready to be released on LIVE, with everything fully tested and approved (production-ready).

    Hotfix - Maintenance or “hotfix” branches are used to quickly patch production releases. Hotfix branches are a lot like release branches and feature branches except they're based on master instead of develop.

    Develop - is the branch to which all feature branches are merged and where all tests are performed. Only when everything’s been thoroughly checked and fixed it can be merged to the master.

    Feature - Each new feature should reside in its own branch, which can be pushed to the develop branch as their parent one.

## How to revert previous commit in git?

    Say you have this, where C is your HEAD and (F) is the state of your files.
    (F)
    A-B-C
        ↑
    master
    1. To nuke changes in the commit:
    git reset --hard HEAD~1
    Now B is the HEAD. Because you used --hard, your files are reset to their state at commit B.
    2. To undo the commit but keep your changes:
    git reset HEAD~1
    Now we tell Git to move the HEAD pointer back one commit (B) and leave the files as they are and git status shows the changes you had checked into C.
    3. To undo your commit but leave your files and your index
    git reset --soft HEAD~1
    When you do git status, you'll see that the same files are in the index as before.

## Explain the advantages of Forking Workflow

    The Forking Workflow is fundamentally different than other popular Git workflows.

    Instead of using a single server-side repository to act as the “central” codebase, it gives every developer their own server-side repository.

    The Forking Workflow is most often seen in public open source projects.

    The main advantage of the Forking Workflow is that contributions can be integrated without the need for everybody to push to a single central repository that leads to a clean project history.

    Developers push to their own server-side repositories, and only the project maintainer can push to the official repository.

    When developers are ready to publish a local commit, they push the commit to their own public repository—not the official one.

    Then, they file a pull request with the main repository, which lets the project maintainer know that an update is ready to be integrated.

## what is git submdules and where to use it ?

    Git submodules are a feature of Git that allow you to include another Git repository as a subdirectory within your own repository. In other words, a Git submodule allows you to include and track an external repository's content as a part of your own repository.

    When you add a submodule to your repository, you are essentially linking to a specific commit of another repository. This means that the submodule in your repository will always point to a fixed commit, ensuring that you can easily reproduce a specific state of the external repository.

    Submodules are useful in scenarios where you want to incorporate an external project or library into your own project while maintaining a clear separation between the two. Some common use cases for submodules include:

    Including dependencies: If your project depends on another project or library, you can add it as a submodule. This allows you to reference and use the external code while keeping it separate from your own codebase.

    Sharing code: Submodules can be used to share common code across multiple repositories. Instead of duplicating the code in each project, you can create a separate repository for the shared code and include it as a submodule in the projects that require it.

    Version control: Submodules enable you to track specific versions of external dependencies. This ensures that when you clone or update your repository, the correct version of the submodule is retrieved, providing a consistent and reproducible development environment.

    However, it's important to note that working with Git submodules can introduce additional complexity to your workflow. Submodules require extra steps for cloning, updating, and managing changes within the submodule itself. It's crucial to understand how submodules work and their implications before using them.

    If you decide to use Git submodules, the git submodule command is used to manage them. You can add, update, clone, and remove submodules using this command, along with other Git commands for working with submodules.

    Overall, Git submodules offer a way to incorporate external repositories into your project, maintaining version control and clear separation. They can be beneficial in certain scenarios, particularly when dealing with dependencies or shared code. However, their usage requires careful consideration and understanding to avoid potential complexities.