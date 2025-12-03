# Concur Module API Documentation

This document provides technical documentation for the API endpoints and processes within the `concur` module.

## Chart of Accounts

### Flow: `processCOARecordsFlow`

*   **Trigger**: VM listener on the `processCA` queue.
*   **Description**: This flow processes Chart of Accounts (COA) records from an Oracle database. It fetches the records, groups them by segment, and then iterates through each segment to perform create, update, and delete operations in Concur. The flow is designed to handle records in batches and includes robust error handling and email notifications to report the status of the process.

## Projects

### Endpoint: `/projects`

*   **GET**
    *   **Flow**: `processProjectsFlow`
    *   **Description**: Retrieves and processes a list of all project records.
*   **POST**
    *   **Flow**: `performOperationOnProjectFlow` (with `operationName` = `CREATE`)
    *   **Description**: Creates a new project record.
*   **DELETE**
    *   **Flow**: `performOperationOnProjectFlow` (with `operationName` = `DELETE`)
    *   **Description**: Deletes an existing project record.

## Project Tasks

### Endpoint: `/projectTask`

*   **GET**
    *   **Flow**: `processProjectTasksFlow`
    *   **Description**: Retrieves and processes a list of all project task records.
*   **POST**
    *   **Flow**: `performOperationOnProjectTaskFlow` (with `operationName` = `CREATE`)
    *   **Description**: Creates a new project task record.
*   **DELETE**
    *   **Flow**: `performOperationOnProjectTaskFlow` (with `operationName` = `DELETE`)
    *   **Description**: Deletes an existing project task record.
