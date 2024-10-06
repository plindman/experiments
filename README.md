# Project Overview

This folder contains a collection of services and experiments organized to facilitate the development and testing of various applications. The structure allows for the reuse of services like databases and logging across different experiments while keeping each experiment isolated.

## Network structure

- Apache Superset: 8088
- Experiments Postgres: 5432

## Folder Structure

``` bash
root/ 
- init.sh # Create common things e.g. the experiments network - run once when you begin - remember to chmod +x it
├── services/ 
│   ├── database-postgresql/ # Database service (e.g., PostgreSQL)
│   ├── reporting-superset/ # Data and visualization (e.g., Apache Superset)
│   ├── [service_name]/ # 
│   │   ├── README.md # Documentation
│   │   ├── run.sh # Script to run the service
│   │   └── (other files related to the service) 
└── experiments/ 
│   ├── experiment_1/ # First experiment 
│   │   ├── README.md # Documentation for experiment 1 
│   │   ├── run.sh # Script to run the experiment - starts needed services
│   │   └── (other files related to experiment 1) 
│   ├── experiment_2/ # Second experiment 
│   └── (other experiments)

## Services Directory

- Common files:

  - README.md - documentation
  - run.sh - script to start the service

- services/database-postgresql. See https://github.com/plindman/experiments-database-postgresql
- services/reporting-superset. See see https://github.com/plindman/experiments-apache-superset

## Usage

1. **Clone the Repository**: Clone this repository to your local machine.
    ```bash
    git clone <repository-url>
    ```

2. **Navigate to the Service or Experiment Directory**: Change into the relevant directory where the service or experiment resides.
    ```bash
    cd services/database
    ```

3. **Start the Service**: Use Docker Compose to start the service. If you are starting the database, ensure it is not already running.
    ```bash
    docker-compose up -d
    ```

4. **Run Experiments**: Similarly, navigate to the experiment folder and run the Docker Compose file.
    ```bash
    cd ../experiments/experiment_1
    docker-compose up -d
    ```

5. **Check Running Containers**: You can check the status of your containers with:
    ```bash
    docker ps
    ```

## Contributing

Feel free to contribute to any of the services or experiments by following these steps:
1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Make your changes and commit them with clear messages.
4. Push your branch and create a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgements

- [Docker](https://www.docker.com/) - For containerization.
- [Docker Compose](https://docs.docker.com/compose/) - For managing multi-container Docker applications.


