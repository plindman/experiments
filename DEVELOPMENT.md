# Development Setup Instructions

This document provides instructions on setting up the root Git repository and individual Git repositories for services and experiments, along with how to create and link them to GitHub.

## Prerequisites

- Ensure that you have [Git](https://git-scm.com/) installed on your machine.
- Have a basic understanding of how to use Git commands.
- Have a GitHub account. If you don’t have one, sign up at [GitHub](https://github.com/).

## Setting Up the Git Repository

- **Create a Remote Repository on GitHub**:
   - Go to [GitHub](https://github.com/) and log in to your account.
   - Click the **"+"** icon in the top right corner and select **"New repository"**.
   - Fill in the repository name (e.g., `experiments-abc-def`), description, and choose visibility (public or private).
   - Click **"Create repository"**.


- **Navigate to the local root Directory**: Open a terminal and navigate to the root folder of your project.

    ```bash
    cd ./your-experiments-root/experiments/experiments-abc-def
    ```

- Run the following commands

    ```bash
    # Initialize the repository
    git init -b main

    # Create a `.gitignore` file 
    touch .gitignore

    # Edit the `.gitignore` file in a text editor and add the files and folders you want to exclude.

    # Add your `README.md` and any other files to the Git repository
    git add .

    # Commit the changes to the repository with a descriptive message.
    git commit -m "Initial commit with root README and .gitignore"

    # Link the Local Repository to GitHub. Copy the repository URL provided by GitHub (e.g., `https://github.com/yourusername/experiments-abc-def.git`) and run the following command:   
    git remote add origin <repository-url>

    # Push your local commits to the remote repository
    git push -u origin main
    ```
