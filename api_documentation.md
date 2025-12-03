# API Documentation

This document provides technical documentation for the API endpoints and processes within the finance integration services.

## Endpoints

### Aurion

*   **GET `/aurion/processEM`**
    *   **Flow**: `sendMileageMainFlow`
    *   **Description**: Processes and sends mileage data from Aurion.

*   **GET `/aurion/processED`**
    *   **Flow**: `financeEmployeeProfileFlow`
    *   **Description**: Processes employee profile data from Aurion.

### Call Interface

*   **POST `/callinterface`** (Content-Type: `application/json`)
    *   **Flow**: `submitInterfaceDetailsFlow`
    *   **Description**: Submits interface details for processing.

### Concur

*   **DELETE `/concur/projectTask`**
    *   **Flow**: `projectTaskMainFlow`
    *   **Description**: Deletes a project task in Concur.

*   **POST `/concur/projectTask`**
    *   **Flow**: `projectTaskMainFlow`
    *   **Description**: Creates a new project task in Concur.

*   **PUT `/concur/chartOfAccounts`**
    *   **Flow**: `chartOfAccountMainFlow`
    *   **Description**: Updates the Chart of Accounts in Concur.

*   **DELETE `/concur/chartOfAccounts`**
    *   **Flow**: `chartOfAccountMainFlow`
    *   **Description**: Deletes from the Chart of Accounts in Concur.

*   **GET `/concur/processAS`**
    *   **Flow**: `processAccountStringFlow`
    *   **Description**: Processes account strings from Concur.

*   **GET `/concur/processDOA`**
    *   **Flow**: `processDelegationOfAuthorityFlow`
    *   **Description**: Processes delegations of authority from Concur.

*   **GET `/concur/processSAE`**
    *   **Flow**: `standardAccountingExtractMainFlow`
    *   **Description**: Processes the standard accounting extract from Concur.

*   **POST `/concur/chartOfAccounts`**
    *   **Flow**: `chartOfAccountMainFlow`
    *   **Description**: Creates a new entry in the Chart of Accounts in Concur.

*   **DELETE `/concur/projects`**
    *   **Flow**: `projectMainFlow`
    *   **Description**: Deletes a project in Concur.

*   **POST `/concur/projects`**
    *   **Flow**: `projectMainFlow`
    *   **Description**: Creates a new project in Concur.

*   **GET `/concur/processEmp`**
    *   **Flow**: `processEmployeesProfileFlow`
    *   **Description**: Processes employee profiles from Concur.

*   **GET `/concur/processPrj`**
    *   **Flow**: `projectMainFlow`
    *   **Description**: Processes projects from Concur.

*   **GET `/concur/processPt`**
    *   **Flow**: `projectTaskMainFlow`
    *   **Description**: Processes project tasks from Concur.

*   **GET `/concur/processCA`**
    *   **Flow**: Triggers the `processCA` VM queue
    *   **Description**: Initiates the Chart of Accounts processing.

### Cost Center

*   **GET `/costCenter/processReportsUi`**
    *   **Flow**: `serveCostCenterReportDistributionDashbaordPageFlow`
    *   **Description**: Serves the Cost Center Report Distribution Dashboard page.

*   **GET `/costCenter/processAccountAnalysisReport`**
    *   **Flow**: `accountAnalysisReportDistributionMainFlow`
    *   **Description**: Processes and distributes the Account Analysis Report for cost centers.

*   **GET `/costCenter/processFsgReport`**
    *   **Flow**: `fsgReportDistributionMainFlow`
    *   **Description**: Processes and distributes the FSG Report for cost centers.

### HBT

*   **GET `/hbt`**
    *   **Description**: A heartbeat endpoint to check if the API is running. Returns a simple JSON response: `{ "message": "API is running" }`.

### IBMS

*   **GET `/ibms/processDeals`**
    *   **Flow**: `adhocContentCreationFlow`
    *   **Description**: Processes deals from IBMS for ad-hoc content creation.

*   **GET `/ibms/processDealsUi`**
    *   **Flow**: `serveDashbaordPageFlow`
    *   **Description**: Serves the dashboard page for processing deals from IBMS.
