# Development Setup Instructions

This document provides instructions on setting up the root Git repository and individual Git repositories for services and experiments, along with how to create and link them to GitHub.

## Prerequisites

- Ensure that you have [Git](https://git-scm.com/) installed on your machine.
- Have a basic understanding of how to use Git commands.
- Have a GitHub account. If you don’t have one, sign up at [GitHub](https://github.com/).

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

7. **Create a Remote Repository on GitHub**:
   - Go to [GitHub](https://github.com/) and log in to your account.
   - Click the **"+"** icon in the top right corner and select **"New repository"**.
   - Fill in the repository name (e.g., `project-root`), description, and choose visibility (public or private).
   - Click **"Create repository"**.

8. **Link the Local Repository to GitHub**: Copy the repository URL provided by GitHub (e.g., `https://github.com/yourusername/project-root.git`) and run the following command:

    ```bash
    git remote add origin <repository-url>
    ```

9. **Push Your Changes to GitHub**: Push your local commits to the remote repository:

    ```bash
    git push -u origin master
    ```

## Setting Up Child Git Repositories

### For Services

1. **Navigate to Each Service Directory**: Go to the directory of the service you want to create a Git repository for. For example, for the database service:

    ```bash
    cd services/database
    ```

2. **Initialize the Git Repository**: Run the following command to initialize a Git repository in the service directory.

    ```bash
    git init
    ```

3. **Add Service Files to the Repository**: Add all relevant service files (e.g., `docker-compose.yml`, `.env`, etc.) to the Git repository.

    ```bash
    git add .
    ```

4. **Commit Your Changes**: Commit the changes with a descriptive message.

    ```bash
    git commit -m "Initial commit for database service"
    ```

5. **Create a Remote Repository on GitHub for the Service**:
   - Follow steps 7 and 8 above to create a remote repository for the service (e.g., `project-database`) and link it to the local repository.

6. **Push Changes to GitHub**: Push your changes to the GitHub repository:

    ```bash
    git push -u origin master
    ```

7. **Repeat for Other Services**: Repeat steps 1-6 for each additional service (e.g., `logging`, `shared`).

### For Experiments

1. **Navigate to Each Experiment Directory**: Go to the directory of the experiment you want to create a Git repository for. For example, for the first experiment:

    ```bash
    cd experiments/experiment_1
    ```

2. **Initialize the Git Repository**: Run the following command to initialize a Git repository in the experiment directory.

    ```bash
    git init
    ```

3. **Add Experiment Files to the Repository**: Add all relevant experiment files (e.g., `docker-compose.yml`, `.env`, etc.) to the Git repository.

    ```bash
    git add .
    ```

4. **Commit Your Changes**: Commit the changes with a descriptive message.

    ```bash
    git commit -m "Initial commit for experiment 1"
    ```

5. **Create a Remote Repository on GitHub for the Experiment**:
   - Follow steps 7 and 8 above to create a remote repository for the experiment (e.g., `project-experiment-1`) and link it to the local repository.

6. **Push Changes to GitHub**: Push your changes to the GitHub repository:

    ```bash
    git push -u origin master
    ```

7. **Repeat for Other Experiments**: Repeat steps 1-6 for each additional experiment (e.g., `experiment_2`, etc.).

## Summary

You now have a root Git repository that tracks files in the root directory while ignoring the `services` and `experiments` subdirectories. Each service and experiment is also set up as an independent Git repository, allowing for modular development and version control.

Feel free to reach out if you have any questions or need further assistance!
