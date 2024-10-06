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
│   ├── database/ # Database service (e.g., PostgreSQL) 
│   │   ├── docker-compose.yml │ │ ├── .env # Environment variables for the database 
│   │   ├── README.md # Documentation for the database service 
│   │   └── (other files related to the database service) 
│   ├── logging/ # Logging service (e.g., ELK stack) 
│   │   ├── docker-compose.yml 
│   │   ├── .env # Environment variables for the logging service 
│   │   ├── README.md # Documentation for the logging service 
│   │   └── (other files related to the logging service) 
│   ├── shared/ # Shared services used across experiments 
│   │   ├── docker-compose.yml 
│   │   ├── .env # Environment variables for shared services 
│   │   ├── README.md # Documentation for shared services 
│   │   └── (other files related to shared services) 
│   └── (other services)
└── experiments/ 
│   ├── experiment_1/ # First experiment 
│   │   ├── docker-compose.yml 
│   │   ├── .env # Environment variables for this experiment 
│   │   ├── README.md # Documentation for experiment 1 
│   │   └── (other files related to experiment 1) 
│   ├── experiment_2/ # Second experiment 
│   │   ├── docker-compose.yml 
│   │   ├── .env # Environment variables for this experiment 
│   │   ├── README.md # Documentation for experiment 2 
│   │   └── (other files related to experiment 2) 
│   └── (other experiments)

## Services Directory

- **`services/database/`**: Contains the Docker configuration and documentation for the database service.
  - **`docker-compose.yml`**: The Docker Compose file to run the database service.
  - **`.env`**: Environment variables required for the database.
  - **`README.md`**: Documentation on how to use and configure the database service.

- **`services/logging/`**: Contains the Docker configuration and documentation for the logging service.
  - **`docker-compose.yml`**: The Docker Compose file to run the logging service.
  - **`.env`**: Environment variables required for the logging service.
  - **`README.md`**: Documentation on how to use and configure the logging service.

- **`services/shared/`**: Contains shared services used across experiments (e.g., message brokers).
  - **`docker-compose.yml`**: The Docker Compose file for shared services.
  - **`.env`**: Environment variables for shared services.
  - **`README.md`**: Documentation for shared services.

## Experiments Directory

- **`experiments/experiment_1/`**: Contains files for the first experiment.
  - **`docker-compose.yml`**: The Docker Compose file to run this experiment.
  - **`.env`**: Environment variables specific to this experiment.
  - **`README.md`**: Documentation on how to run and configure the first experiment.

- **`experiments/experiment_2/`**: Contains files for the second experiment.
  - **`docker-compose.yml`**: The Docker Compose file to run this experiment.
  - **`.env`**: Environment variables specific to this experiment.
  - **`README.md`**: Documentation on how to run and configure the second experiment.

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


