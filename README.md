# Project Overview

This folder contains a collection of services and experiments organized to facilitate the development and testing of various applications. The structure allows for the reuse of services like databases and logging across different experiments while keeping each experiment isolated.

## Folder Structure

``` bash
root/ 
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
│
│ # Create common things e.g. the experiments network
│ # Run once when you begin - remember to chmod +x it
- init.sh 
```

## Services Directory

- services/database-postgresql. See https://github.com/plindman/experiments-database-postgresql
- services/reporting-superset. See see https://github.com/plindman/experiments-apache-superset

## Usage

```bash
# Clone this repository to your local machine.
git clone https://github.com/plindman/experiments

# Run init.sh to prepare common things
chmod +x init.sh
./init.sh

# Change into services folder and clone the services you want to use
cd ./services
git clone https://github.com/plindman/experiments-database-postgresql
git clone https://github.com/plindman/experiments-apache-superset

# Check the README.md for details on how to use the service
# Run the service using the run.sh script
cd <service folder>
chmod +x run.sh
./run.sh

# Clone/create your experiments in the experiments part

```
## `experiments` Network

- Apache Superset: 8088
- Experiments Postgres: 5432

### Accessing a Service

You can connect to services using different connection strings depending on your environment.

Container in the Same Docker Network: use the **service's container name** and network alias in the connection string. E.g. `experiments-postgres`

```bash
postgresql://username:password@experiments-postgres:5432/dbname
```

On Mac/Windows: Use the **host.docker.internal** hostname, which allows Docker containers to communicate with services on the host machine.

On Linux: You will need to use the **host's IP address**. Typically, this is 172.17.0.1, but it may vary depending on your Docker setup. You can verify this by running `ip addr` on your host machine.


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
- [PostgreSQL](https://www.postgresql.org/) - a powerful, open source object-relational database system.
- [Apache Superset](https://superset.apache.org/) - For data exploration and visualization.
