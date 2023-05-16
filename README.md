# Clean REST API

This is a Clean Architecture-based REST API project built with Node.js, TypeScript, Express, and Sequelize.

## Table of Contents
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Testing](#testing)
- [API Documentation](#api-documentation)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

## Project Structure

The project follows the Clean Architecture principles by Uncle Bob, providing separation of concerns and a highly testable and scalable codebase. The directory structure is organized as follows:

├── src
│ ├── controllers
│ ├── interactors
│ ├── interfaces
│ ├── models
│ ├── repositories
│ ├── routes
│ └── services
├── config
├── database
├── tests
└── scripts


- `src`: Contains the source code of the application.
  - `controllers`: Handles incoming HTTP requests and communicates with the interactors.
  - `interactors`: Implements the business logic of the application.
  - `interfaces`: Defines the input and output ports/interfaces for communication between layers.
  - `models`: Contains the Sequelize models for interacting with the database.
  - `repositories`: Implements the repository interfaces for data access.
  - `routes`: Defines the API routes and connects them to the controllers.
  - `services`: Contains any additional services required by the application.
- `config`: Contains the configuration files, such as database and environment configurations.
- `database`: Contains the database migrations and seeders.
- `tests`: Contains the unit and integration tests for the application.
- `scripts`: Includes useful scripts for development, testing, and deployment.

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd clean-rest-api
   ```

2. Install the dependencies:

    ```bash
    npm install
    ```
3. Create a `.env` file in the root directory and configure the necessary environment variables (e.g., database credentials).

4. Run the database migrations to create the required tables:

    ```bash
    npm run sequelize:migrate
    ```

## Usage
1. Start the development server:    

    ```bash
    npm run dev
    ```
    The API will be available at `http://localhost:3000.`
2. Make requests to the API endpoints using tools like cURL, Postman, or your preferred HTTP client.

## Testing
The project includes unit and integration tests using Jest and Supertest. To run the tests, use the following command:
    ```bash
    npm test
    ```

## API Documentation
The API documentation can be found in the OpenAPI (Swagger) format. Start the server and access the documentation at `http://localhost:3000/api-docs.`

## Deployment
To deploy the application to a production environment, follow these steps:

1. Build the application:
    ```bash
    npm run build
    ```
2. Set the necessary environment variables for the production environment.

3. Start the server:
    ```bash
    npm start
    ``` 