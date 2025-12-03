# Connector-Focused Integration Test Plan (Post Java 17 Upgrade)

This document outlines the integration test plan to validate that all external connectors and integrations in the `sbs-finance-integrationservices` Mule 4 application are functioning correctly after the upgrade from Java 8 to Java 17.

## Section 1: Test Plan Table

| # | HTTP Method | API Endpoint | Description | Test Component | Test Scenario | Setup | Input Payload | Query Params | Headers | Response Payload | File Movement | Email Notification | Log Verification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | `POST` | `/concur/projects` | Creates a new project in Concur by first inserting a record into a staging database table. | **HTTP Listener -> Database** | **Success:** Verify that the project creation request is accepted and a corresponding record is created in the database. | Ensure the test database is accessible and the target table is clean. | `{ "projectName": "Project Java17", "projectCode": "J17" }` | `N/A` | `Content-Type: application/json` | `{ "message": "Successfully processed..." }` | `N/A` | `N/A` | `Log - process start`, `Log - process completed` |
| 2 | `GET` | `/concur/processPrj` | Fetches project records from the database and processes them. | **HTTP Listener -> Database** | **Success:** Verify that project records can be successfully retrieved from the database. | Insert a mock project record into the database with `RECORD_STATUS = 'N'`. | `N/A` | `N/A` | `N/A` | `{ "message": "Successfully processed..." }` | `N/A` | `N/A` | `Log - process start`, `Log - no records to process` or `Successfully processed records` |
| 3 | `GET` | `/concur/processCA` | Triggers a VM queue to start the Chart of Accounts (COA) processing from the Oracle database to Concur. | **Database -> HTTP Requestor** | **Success:** Verify that COA records are fetched from Oracle and sent to the Concur API successfully. | Place mock COA records in the Oracle DB table `XXFA_CONCUR_COA_V` with `RECORD_STATUS = 'N'`. | `N/A` | `N/A` | `N/A` | `{ "message": "Chart of Account processing has been successfully triggered." }` | `N/A` | One summary email should be sent with the status of the records. | `Processing segment ::`, `Log processed and failed Records` |
| 4 | `N/A` | `N/A` | A subflow that sends an email notification. | **SMTP** | **Success:** Verify that an email can be successfully sent. | `N/A` | `N/A` | `N/A` | `N/A` | `N/A` | `N/A` | Email should be received at the configured `toAddress`. | `Email sent successfully` |
| 5 | `N/A` | `N/A` | A flow that sends an encrypted file to Concur via SFTP. (Assuming this from `sftpServices.xml`) | **SFTP** | **Success:** Verify connectivity and successful file write to the SFTP server. | A test file `<sampleFile.txt>` should be available in the local Mule runtime directory. | `N/A` | `N/A` | `N/A` | `N/A` | The file `<sampleFile.txt>` should be present in the target directory on the SFTP server. | `N/A` | `File transferred successfully` |
| 6 | `GET` | `/hbt` | A simple heartbeat endpoint. | **HTTP Listener** | **Success:** Verify that the API is running and responding. | `N/A` | `N/A` | `N/A` | `N/A` | `{ "message": " API is running" }` | `N/A` | `N/A` | `N/A` |

## Section 2: Environment Preparation Checklist

- [ ] **Properties Verified:** All connection properties (`host`, `port`, `username`, etc.) for all external systems (Database, SFTP, Concur API, SMTP) have been verified for the target test environment.
- [ ] **Credentials Updated:** All secure properties (passwords, tokens) have been updated in the properties files or CI/CD environment variables, especially if connector upgrades require new authentication schemes.
- [ ] **Logging Level:** The application's logging level is set to `DEBUG` to ensure detailed logs are available for validation.
- [ ] **Sample Payloads:** All sample input payloads have been validated against any updated DataWeave transformations to ensure compatibility.
- [ ] **Test Data:** Test data (e.g., mock records in database tables, test files for SFTP) has been pre-loaded as per the "Setup" column in the test plan.

## Section 3: Post-Execution Validation Steps

1.  **Review Application Logs:** After executing the test cases, thoroughly review the application logs for any `ERROR` or `WARN` level messages that were not expected.
2.  **Verify Database State:** Connect to the test database and verify that the data has been created, updated, or deleted as expected by the test cases.
3.  **Check SFTP/File Directories:** Manually check the target SFTP or file directories to confirm that files have been written, moved, or deleted as expected.
4.  **Confirm Email Notifications:** Check the recipient's inbox to confirm that email notifications were received and that the content is correct.
5.  **Monitor System Performance:** During the test execution, monitor the application's CPU and memory usage to ensure there are no performance regressions after the Java 17 upgrade.
