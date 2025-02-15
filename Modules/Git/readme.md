# Git Notes

Git is a distributed version control system (VCS) that enables multiple users to collaborate on projects, tracking changes in files and directories while providing a history of snapshots and the ability to manage different branches and merge code changes efficiently.

## Why Use Git?
### Version Control
- Tracks, manages, and changes the codebase while maintaining history.
- Crucial for collaboration and avoiding mistakes.

### Collaboration
- Git makes it simple for multiple developers to work on the same project without interfering with each other's work.

### Branching
- Helps you work on new features independently.
- Allows for experimentation and testing before merging changes into the main project.

---
## Installation and Setup
### Install Git
Download and install Git from the [official website](https://git-scm.com/downloads).

### Configure Git
Run the following commands to set up Git with your username and email:
```sh
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

---
## Basic Git Commands
### Initialize a New Git Repository
```sh
git init
```

### Clone a Git Repository
```sh
git clone https://github.com/user/repository.git
```

### Check Repository Status
```sh
git status
```

### Staging and Committing Changes
```sh
git add .        # Stage all changes
```
```sh
git commit -m "Commit message here"
```

### Pushing Changes to Remote Repository
```sh
git push origin branch_name
```

### Pulling Changes from Remote Repository
```sh
git pull origin branch_name
```

---
## README.md
- An essential component of any Git repository.
- Provides vital information about your project.
- Helps new contributors get started and serves as the first point of reference for users.

---
## Commits
- Provide code quality feedback in a merge request.
- Create snapshots of your project at specific points in time.
- Help maintain a detailed project history.
- Allow detailed tracking and an audit trail for reviewing changes.

### Good Commit Practices
- Make regular commits.
- Track and identify issues/problems.
- Use clear commit messages.
- Follow a consistent message style.
- Commit related changes together.
- Test before committing.
- Avoid committing generated files.
- Break down large changes into smaller commits.

---
## Branching
- Allows developers to work on different features at the same time without affecting the main production environment.
- Useful for **bug fixes, new features, experimentation, and focused troubleshooting**.
- Changes are merged into the main branch after testing and review.

### Creating and Switching Branches
```sh
git branch feature-branch   # Create a new branch
git checkout feature-branch  # Switch to the branch
```

### Merging Branches
```sh
git checkout main  # Switch to the main branch
git merge feature-branch  # Merge the changes
```

---
## Pull Requests (PRs)
- Allow team members to **review code changes** before merging.
- Ensure best industry practices and prevent introducing issues.
- Maintain a detailed record of changes and discussions.
- Help understand the history and context of modifications.

---
## Merge Conflicts
- Occur when two branches modify the same part of a file.
- Git requires manual resolution before merging.
- Can be avoided by pulling the latest changes before pushing.

### Resolving Merge Conflicts
1. Identify conflicts using `git status`.
2. Open the conflicting file and manually resolve differences.
3. Add the resolved file and commit changes:
   ```sh
   git add resolved_file.txt
   git commit -m "Resolved merge conflict"
   ```

---
## Rebasing and Force Pushing
### Rebasing
- Moves or rewrites commits from one branch onto another.
- Keeps a linear commit history without unnecessary merge commits.
- Example:
  ```sh
  git checkout feature-branch
  git rebase main
  ```

### Force Pushing
- Overwrites the remote branch with your local branch.
- Required after rebasing since history has changed.
- **Use with caution** to avoid overwriting changes made by others.
- **Safer alternative:**
  ```sh
  git push --force-with-lease
  ```
  This ensures you don’t accidentally delete someone else’s commits.

---
## Conclusion
Git is an essential tool for software development, enabling efficient collaboration, version control, and code management. Following best practices ensures a clean project history, smooth teamwork, and fewer issues when integrating changes.


