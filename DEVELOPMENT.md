# Development Setup Instructions

This document provides instructions on setting up the root Git repository and individual Git repositories for services and experiments.

## Prerequisites

- Ensure that you have [Git](https://git-scm.com/) installed on your machine.
- Have a basic understanding of how to use Git commands.

## Setting Up the Root Git Repository

1. **Navigate to the Root Directory**: Open a terminal and navigate to the root folder of your project.

    ```bash
    cd path/to/your/root
    ```

2. **Initialize the Git Repository**: Run the following command to initialize a Git repository in the root directory.

    ```bash
    git init
    ```

3. **Create a `.gitignore` File**: To exclude the `services` and `experiments` folders from the root Git repository, create a `.gitignore` file.

    ```bash
    touch .gitignore
    ```

4. **Edit the `.gitignore` File**: Open the `.gitignore` file in a text editor and add the following lines to ignore the `services` and `experiments` directories.

    ```plaintext
    services/
    experiments/
    ```

5. **Add Root-Level Files to the Repository**: Add your `README.md` and any other files in the root directory to the Git repository.

    ```bash
    git add .
    ```

6. **Commit Your Changes**: Commit the changes to the repository with a descriptive message.

    ```bash
    git commit -m "Initial commit with root README and .gitignore"
    ```

## Setting Up Child Git Repositories

### For Services

1. **Navigate to Each Service Directory**: Go to the directory of the serv
